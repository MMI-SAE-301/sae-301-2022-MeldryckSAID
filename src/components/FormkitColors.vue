<script setup lang="ts">
import { colors } from "@/type";
defineProps<{
  name?: string;
  label?: string;
}>();
</script>

<template>
  <FormKit
    :name="name"
    :label="label"
    value="#FFFFFF"
    type="radio"
    :options="colors"
    :sections-schema="{
      inner: { $el: null },
      decorator: { $el: null },
    }"
    input-class="peer sr-only"
    option-class="flex gap-1"
    label-class="text-red-900 text-center "
  >
    <template #label="context">
      <div
        class="h-6 w-6 rounded-full border-2 peer-checked:border-red-500 text-center font-modern"
        :style="{ backgroundColor: context.option.value }"
      ></div>
      <span class="sr-only">{{ context.option.value }}</span>
    </template>
  </FormKit>
</template>
