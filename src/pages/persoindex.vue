<script setup lang="ts">
import Foter from "@/components/foter.vue";
import Bouton from "@/components/bouton.vue";
import Montrec from "@/components/Montrec.vue";
import Montrer from "@/components/Montrer.vue";
import Montrex from "@/components/Montrex.vue";
</script>

<template>
  <main class="m-0 min-h-screen bg-mclair">
    <h1 class="py-4 text-center font-montagu-slab font-bold text-2xl">
      Choisissez la montre que vous souhaitez personnaliser
    </h1>
    <div class="flex justify-evenly ">
      <div class="flex flex-col items-center">
        <Montrex />
        <RouterLink to="/personalisation">
          <Bouton>Acheter</Bouton>
        </RouterLink>
      </div>
      <div class="flex flex-col items-center">
        <Montrer />
        <RouterLink to="/personalisationr">
          <Bouton>Acheter</Bouton>
        </RouterLink>
      </div>
      <div class="flex flex-col items-center">
        <Montrec />
        <RouterLink to="/personalisationc">
          <Bouton>Acheter</Bouton>
        </RouterLink>
      </div>
    </div>
  </main>
  <footer>
    <Foter></Foter>
  </footer>
</template>
