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
    :submit-attrs="{
      classes: {
        input: 'bg-green-600',
      },
    }"
    :sections-schema="{
      inner: { $el: null },
      decorator: { $el: null },
    }"
    input-class="peer sr-only "
    option-class="flex gap-1 "
  >
    <template #label="context">
      <div
        class="font-modern h-6 w-6 rounded-full border-2 text-center peer-checked:border-red-500"
        :style="{ backgroundColor: context.option.value }"
      ></div>
      <span class="sr-only">{{ context.option.value }}</span>
    </template>
  </FormKit>
</template>
