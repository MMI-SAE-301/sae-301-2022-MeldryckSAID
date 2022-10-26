<template>
  <main class="min-h-screen bg-mclair m-0">
    <section>
      <h1 class="font-montagu-slab">ici on personalise</h1>
      <div class="flex justify-around">
        <svgface v-bind:="montre" />

        <div>
          <FormKit type="form"  v-model="montre" @submit="upsertMontre">
            <div class="flex  space-x-8">
              
              <FormKitListColors name="ecran" label="ecran" />
              <FormKitListColors name="bracelet_t" label="bracelet_t" />
              <FormKitListColors name="bracelet_b" label="bracelet_b" />
              <FormKitListColors name="cercle_in" label="cercle_in" />
              <FormKitListColors name="cercle_ex" label="cercle_ex" />
              <FormKitListColors name="pointe" label="Pointe" />
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
