define(["sitecore"], function (Sitecore) {

    Sitecore.Commands.LaunchFieldEditor =
    {
        canExecute: function (context) {
            //YOU COULD ADD FUNCTIONALITY HERE TO SEE IF ITEMS HAVE THE CORRECT FIELDS
            return true;
        },
        execute: function (context) {
            context.currentContext.argument = context.button.viewModel.$el[0].accessKey;

            Sitecore.ExperienceEditor.PipelinesUtil.generateRequestProcessor("ExperienceEditor.GenerateFieldEditorUrl", function (response) {
                var DialogUrl = response.responseValue.value;
                var dialogFeatures = "dialogHeight: 680px;dialogWidth: 680px;";
                Sitecore.ExperienceEditor.Dialogs.showModalDialog(DialogUrl, '', dialogFeatures, null);
            }).execute(context);

        }
    };
});