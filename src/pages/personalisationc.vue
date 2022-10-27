<template>
  <main class="m-0 min-h-screen bg-mclair">
    <section>
      <h1 class="font-montagu-slab">ici on personalise la montre en rond</h1>
      <div class="flex justify-around">
        <Montrec v-bind="montre"></Montrec>

        <div>
          <FormKit
            type="form"
            submit-label="Acheter"
            v-model="montre"
            @submit="upsertMontre"
            :submit-attrs="{
              classes: {
                input:
                  ' bg-Marron text-white p-1 rounded-xl hover:bg-white hover:text-black',
              },
            }"
          >
            <div class="flex space-x-8">
              <div class="flex flex-col">
                <FormKitListColors name="ecranc" label="Écran" />
                <FormKit name="ecranc" label="Écran" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="braceletc_t" label="Lanniere haute" />
                <FormKit
                  name="braceletc_t"
                  label="Lanniere haute"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="braceletc_b" label="Lanniere basse" />
                <FormKit
                  name="braceletc_b"
                  label="Lanniere basse"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="carrer_in" label="Carrer intérieur" />
                <FormKit
                  name="carrer_in"
                  label="Carrer intérieur"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="carrer_ex" label="cercle extérieur" />
                <FormKit
                  name="carrer_ex"
                  label="Carrer extérieur"
                  type="color"
                />
              </div>
            </div>
            <FormkitMateriaux name="id_materiaux" label="Materiaux" />
          </FormKit>
        </div>
      </div>
    </section>
  </main>
</template>

<script setup lang="ts">
import Montrec from "@/components/Montrec.vue";
import { ref } from "vue";

import FormKitListColors from "../components/FormkitColors.vue";

import type { montrec } from "@/type";

import { supabase } from "@/supabase";
import { useRouter } from "vue-router";

const router = useRouter();

const montre = ref<montrec>({});
const props = defineProps<{
  data?: montrec;
  id?: string;
}>();

async function upsertMontre(dataForm, node) {
  const { data, error } = await supabase.from("montrec").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "edit-id", params: { id: data[0].id } });
  }
}
</script>
