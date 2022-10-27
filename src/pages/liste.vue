<template>
  <main class="m-0 min-h-screen bg-mclair">
    <div class="flex flex-row items-center">
      <RouterLink
        :to="{ name: 'montre-edit-id', params: { id: montrex.id_montre } }"
        v-for="montrex in MesMontre"
        :key="montrex.id"
      >
        <Montrex v-bind="montrex" class="w-32" />
      </RouterLink>

      <RouterLink
        :to="{ name: 'montre-edit-id', params: { id: montrer.id_montre } }"
        v-for="montrer in MesMontrer"
        :key="montrer.id"
      >
        <Montrer v-bind="montrer" class="w-32" />
      </RouterLink>
      <RouterLink
        :to="{ name: 'montre-edit-id', params: { id: montrec.id_montre } }"
        v-for="montrec in MesMontrec"
        :key="montrec.id_montre"
      >
        <div v-for="montrec in MesMontrec" :key="MesMontrec.id_montre">
          <Montrec v-bind="montrec" class="w-32" />

          <!-- <router-link :to="{
            name: 'montre-edit-id',
            params: { id: montrec.id_montre },
          }" >  <button>Modifier</button> </router-link>
        <router-link  :to="{
            name: 'montre-sup-id',
            params: { id: montrec.id_montre }, }" > <button>Supprimer</button>  </router-link> -->
        </div>
      </RouterLink>
    </div>
  </main>
  <footer>
    <Foter></Foter>
  </footer>
</template>

<script setup lang="ts">
import Foter from "@/components/foter.vue";

import type { montrex } from "@/type";
import type { montrer } from "@/type";
import type { montrec } from "@/type";

import Montrer from "@/components/Montrer.vue";
import Montrex from "@/components/Montrex.vue";
import Montrec from "@/components/Montrec.vue";

import { ref } from "vue";
import { useRouter } from "vue-router";
import { user, supabase } from "../supabase";

const router = useRouter();
const MesMontre = ref();
const MesMontrec = ref();
const MesMontrer = ref();

async function getMontre() {
  const { error, data } = await supabase.from("montre").select("*");

  console.log(data);
  MesMontre.value = data;
}
async function getMontrec() {
  const { error, data } = await supabase.from("montrec").select("*");

  console.log(data);
  MesMontrec.value = data;
}
async function getMontrer() {
  const { error, data } = await supabase.from("montrer").select("*");

  console.log(data);
  MesMontrer.value = data;
}
getMontrer();
getMontre();
getMontrec();
</script>
