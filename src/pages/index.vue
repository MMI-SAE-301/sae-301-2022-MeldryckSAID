<template>
  <main class="m-0 min-h-screen bg-mclair">
    <figure class="flex flex-col items-center justify-center text-center">
      <img
        class="flex max-w-xl"
        src="public/exemple.png"
        alt="exemple de montre"
      />

      <figcaption class="text-center">
        Exemple de montre que vous pourriez posséder
      </figcaption>
      <div class="h-9 w-1/3 rounded-t-lg border-2 border-black bg-Marron" />
    </figure>
    <h2 class="py-4 text-center font-arial">
      Personaliser vos montre et devenez une réference des montres personaliser
      votre monde votre une montre qui vous resssemble grâce a notre service de
      personnalisation. Et ce en quelques click.
    </h2>
    <div>
      <div><h1 class="ml-4 font-montagu-slab font-extrabold text-2xl">Editions Standar</h1></div>
    </div>
    <div class="flex justify-evenly">
      <div class="flex flex-col items-center">
        <Montrex />
      </div>
      <div class="flex flex-col items-center">
        <Montrer />
      </div>
      <div class="flex flex-col items-center">
        <Montrec />
      </div>
    </div>
  </main>
</template>

<script setup lang="ts">
import Montrec from "@/components/Montrec.vue";
import Montrer from "@/components/Montrer.vue";
import Montrex from "@/components/Montrex.vue";
</script>
