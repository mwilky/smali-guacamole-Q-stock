.class public Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

.field private static final KEY_DAYS:Ljava/lang/String; = "days"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_EXIT_AT_ALARM:Ljava/lang/String; = "exit_at_alarm"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"


# instance fields
.field private mDayDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroidx/preference/Preference;

.field private mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mExitAtAlarm:Landroidx/preference/SwitchPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method private showDaysDialog()V
    .locals 4

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121aa4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12065d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateDays()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_3

    aget v5, v3, v4

    const/4 v6, 0x0

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_2

    aget v7, v0, v6

    if-ne v5, v7, :cond_1

    const/4 v7, 0x7

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f1215c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    const v2, 0x7f121aa6

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method

.method private updateEndSummary()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const v2, 0x7f121a63

    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    new-instance v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160124

    return v0
.end method

.method protected onCreateInternal()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "days"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "start_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121abe

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "end_time"

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    const v3, 0x7f121a62

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    const-string v2, "exit_at_alarm"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected updateControlsInternal()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateEndSummary()V

    return-void
.end method
