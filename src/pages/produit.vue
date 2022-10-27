<script setup lang="ts">
import Foter from "@/components/foter.vue";
import Bouton from "@/components/bouton.vue";
import Montrec from "@/components/Montrec.vue";
import Montrer from "@/components/Montrer.vue";
import Montrex from "@/components/Montrex.vue";
</script>

<template>
  <main class="m-0 min-h-screen bg-mclair">
    <h1 class="py-4 text-center font-montagu-slab text-2xl font-bold">
      Nos produits
    </h1>
    <div class="flex justify-around mt-14">

    
    <div class="flex flex-col ">
      <h3 class="text- font-montagu-slab underline-offset-4 underline text-xl font-bold">Édition Standar</h3>
      <div class="my-20 flex justify-evenly">
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
    </div>
     <div class="flex flex-col">
      <h3 class="text- font-montagu-slab text-xl  underline-offset-4 underline font-bold">Édition Liminé</h3>
      <div class="my-20 flex justify-evenly">
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
    </div>
</div>
  </main>
  <footer>
    <Foter></Foter>
  </footer>
</template>
