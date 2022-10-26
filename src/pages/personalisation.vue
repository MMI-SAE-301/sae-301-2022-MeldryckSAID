<template>
  <main class="m-0 min-h-screen bg-mclair">
    <section>
      <h1 class="font-montagu-slab">ici on personalise</h1>
      <div class="flex justify-around">
        <svgface v-bind:="montre" />

        <div>
          <FormKit type="form" v-model="montre" @submit="upsertMontre">
            <div class="flex space-x-8">
              <div class="flex flex-col">
                <FormKitListColors name="ecran" label="ecran" />
                <FormKit name="ecran" label="ecran" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="bracelet_t" label="bracelet_t" />
              <FormKit name="bracelet_t" label="bracelet_t" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="bracelet_b" label="bracelet_b" />
                 <FormKit name="bracelet_b" label="bracelet_b" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="cercle_in" label="cercle_in" />
                 <FormKit name="cercle_in" label="cercle_in" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="cercle_ex" label="cercle_ex" />
                <FormKit name="cercle_ex" label="cercle_ex" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="pointe" label="Pointe" />
                 <FormKit name="pointe" label="pointe" type="color" />
              </div>
            </div>
          </FormKit>
        </div>
      </div>
    </section>
  </main>
</template>

<script setup lang="ts">
import svgface from "@/components/Svgface.vue";
import { ref } from "vue";

import FormKitListColors from "../components/FormkitColors.vue";
import FormkitTableColors from "../components/FormkitTableColors.vue";

import type { montrex } from "@/type";

import { supabase } from "@/supabase";
import { useRouter } from "vue-router";

const router = useRouter();

const montre = ref<montrex>({});
const props = defineProps<{
  data?: montrex;
  id?: string;
}>();

async function upsertMontre(dataForm, node) {
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push({ name: "edit-id", params: { id: data[0].id } });
  }
}
</script>
