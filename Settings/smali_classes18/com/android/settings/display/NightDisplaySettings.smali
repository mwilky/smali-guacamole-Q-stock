.class public Lcom/android/settings/display/NightDisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# static fields
.field private static final DIALOG_END_TIME:I = 0x1

.field private static final DIALOG_START_TIME:I = 0x0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "NightDisplaySettings"


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/display/NightDisplaySettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/NightDisplaySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/NightDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/display/NightDisplaySettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/android/settings/display/NightDisplayFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/NightDisplayFooterPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/display/NightDisplaySettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x24d

    return v0

    :cond_1
    const/16 v0, 0x24c

    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120813

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "NightDisplaySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16007b

    return v0
.end method

.method public synthetic lambda$onCreateDialog$0$NightDisplaySettings(ILandroid/widget/TimePicker;II)V
    .locals 2

    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z

    :goto_0
    return-void
.end method

.method public onActivated(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/ColorDisplayManager;

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    new-instance v1, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {v1, v0}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Landroid/app/TimePickerDialog;

    new-instance v3, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$EHQrigX4B__bQ2Ww7B-DCA-KncQ;-><init>(Lcom/android/settings/display/NightDisplaySettings;I)V

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v9

    move-object v2, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v9
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->updatePreferenceStates()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_end_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "night_display_start_time"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
