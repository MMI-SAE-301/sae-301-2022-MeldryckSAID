<script setup lang="ts">
import { materiaux } from "@/type";



defineProps<{
  name?: string;
  label?: string;
}>();


</script>

<template>
  <FormKit
    name="id_materiaux"
    label="materiau du boitier"
    value="ece9b013-f979-49a9-ae29-9a16491a9891"
    type="radio"
    :options="materiaux"
    :sections-schema="{
      inner: { $el: null },
      decorator: { $el: null },
    }"
    legend-class="sr-only"
    input-class="peer sr-only"
    options-class="flex w-full justify-between gap-5"
    wrapper-class="flex flex-col items-center"
  >
    <template #label="context">
      <img
        class="h-10 w-10 rounded-full border-2 peer-checked:border-red-600"
        :src="context.option.img"
        :alt="context.option.label"
      />

      <span>{{ context.option.label }}</span>
    </template>
  </FormKit>
  
</template>
