.class public Lcom/android/settings/notification/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

.field private static final CALENDAR_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final KEY_REPLY:Ljava/lang/String; = "reply"


# instance fields
.field private mCalendar:Landroidx/preference/DropDownPreference;

.field private mCreate:Z

.field private mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private mReply:Landroidx/preference/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addCalendars(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_id"

    const-string v1, "calendar_displayName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    move-object v5, p0

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addCalendar(JLjava/lang/String;ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    nop

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getCalendars(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {p1, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addCalendars(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static key(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->calendarId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reloadCalendar()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getCalendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f121a65

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v4, v3, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v4, :cond_0

    iget-object v3, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    iget-object v6, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-nez v6, :cond_1

    iget-object v6, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v7, v5, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->calendarId:Ljava/lang/Long;

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6, v4}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6}, Landroidx/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    invoke-virtual {v6, v5}, Landroidx/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method addCalendar(JLjava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->calendarId:Ljava/lang/Long;

    iput-object p3, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    iput p4, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

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

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    new-instance v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mHeader:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mActionButtons:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mSwitch:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x92

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160121

    return v0
.end method

.method protected onCreateInternal()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "calendar"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    new-instance v3, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v2, v3}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "reply"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    const v5, 0x7f121a67

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f121a69

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const v5, 0x7f121a68

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroidx/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateControlsInternal()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected updateControlsInternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
