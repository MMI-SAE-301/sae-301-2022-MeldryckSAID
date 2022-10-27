<template>
  <main class="m-0 min-h-screen bg-mclair">
    <figure class="flex flex-col items-center justify-center text-center">
      <img
        class="flex max-w-xl"
        src="src/assets/image/exemple.png"
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
      <div>
        <h1 class="ml-4 font-montagu-slab text-2xl font-extrabold">
          Editions Standar
        </h1>
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
      <div class=" flex justify-end pl-8">
        <RouterLink to="/persoindex">
          <Bouton>Commencer à personaliser</Bouton>
        </RouterLink>
      </div>
    </div>
     <div>
      <div>
        <h1 class="ml-4 font-montagu-slab text-2xl font-extrabold">
          Editions Spéciale
        </h1>
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
      <div class=" flex justify-end pl-8">
        <RouterLink to="/persoindex">
          <Bouton>Commencer à personaliser</Bouton>
        </RouterLink>
      </div>
    </div>
  </main>
  <footer>
    <Foter></Foter>
  </footer>
</template>

<script setup lang="ts">
import Bouton from "@/components/bouton.vue";
import Foter from "@/components/foter.vue";
import Montrec from "@/components/Montrec.vue";
import Montrer from "@/components/Montrer.vue";
import Montrex from "@/components/Montrex.vue";
</script>
