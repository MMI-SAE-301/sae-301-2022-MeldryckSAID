<template>
  <main class="m-0 min-h-screen bg-mclair">
    <section>
      <h1 class="font-montagu-slab">ici on personalise</h1>
      <div class="flex justify-around">
        <Montrex v-bind:="montre" />

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
                <FormKitListColors name="ecran" label="Écran" />
                <FormKit name="ecran" label="Écran" type="color" />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="bracelet_t" label="Lanniere haute" />
                <FormKit
                  name="bracelet_t"
                  label="Lanniere haute"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="bracelet_b" label="Lanniere basse" />
                <FormKit
                  name="bracelet_b"
                  label="Lanniere basse"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="cercle_in" label="cercle intérieur" />
                <FormKit
                  name="cercle_in"
                  label="cercle intérieur"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="cercle_ex" label="cercle extérieur" />
                <FormKit
                  name="cercle_ex"
                  label="cercle extérieur"
                  type="color"
                />
              </div>
              <div class="flex flex-col">
                <FormKitListColors name="pointe" label="Pointe" />
                <FormKit name="pointe" label="Pointe" type="color" />
              </div>
            </div>
            <FormkitMateriaux name="id_materiaux" label="Materiaux" />
          </FormKit>
        </div>
      </div>
    </section>
  </main>
  <footer>
    <Foter></Foter>
  </footer>
</template>

<script setup lang="ts">
import Montrex from "@/components/Montrex.vue";
import { ref } from "vue";

import FormKitListColors from "../components/FormkitColors.vue";
import FormkitMateriaux from "@/components/FormkitMateriaux.vue";

import Foter from "@/components/foter.vue";

import type { montrex } from "@/type";

import { supabase } from "@/supabase";
import { useRouter } from "vue-router";

const router = useRouter();

const montre = ref<montrex>({});

const props = defineProps(["id"]);
if (props.id) {
  let { data, error } = await supabase
    .from("montre")
    .select("*")
    .eq("id_montre", props.id);
  if (error) console.log("n'a pas pu charger le table montre :", error);
  else montre.value = (data as any[])[0];
}

// @ts-ignore
async function upsertMontre(dataForm, node) {
  // dataForm.id_user = supabase.auth.user().id;
  const { data, error } = await supabase.from("montre").upsert(dataForm);
  if (error) node.setErrors([error.message]);
  else {
    node.setErrors([]);
    router.push("/liste");
  }
}
</script>
