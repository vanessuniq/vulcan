import TurbolinksAdapter from "vue-turbolinks";
import Vue from "vue";
import BootstrapVue from "bootstrap-vue";
import Projects from "../components/projects/Projects.vue";

Vue.use(TurbolinksAdapter);
Vue.use(BootstrapVue);

Vue.component("Projects", Projects);

document.addEventListener("turbolinks:load", () => {
  new Vue({
    el: "#Projects",
  });
});
