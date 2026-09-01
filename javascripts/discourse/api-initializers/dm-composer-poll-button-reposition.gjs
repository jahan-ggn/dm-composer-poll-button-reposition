import { apiInitializer } from "discourse/lib/api";
import PollUiBuilder from "discourse/plugins/poll/components/modal/poll-ui-builder";

export default apiInitializer((api) => {
  api.onToolbarCreate((toolbar) => {
    toolbar.addButton({
      id: "poll",
      group: "extras",
      icon: "chart-bar",
      title: "poll.ui_builder.title",
      action: (toolbarEvent) => {
        api.container.lookup("service:modal").show(PollUiBuilder, {
          model: { toolbarEvent },
        });
      },
    });
  });
});
