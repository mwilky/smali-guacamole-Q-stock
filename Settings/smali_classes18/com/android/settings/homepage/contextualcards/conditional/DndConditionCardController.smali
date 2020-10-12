.class public Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;
.super Ljava/lang/Object;
.source "DndConditionCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;,
        Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;
    }
.end annotation


# static fields
.field static final DND_FILTER:Landroid/content/IntentFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ID:I

.field private static final TAG:Ljava/lang/String; = "DndCondition"

.field private static mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

.field private mZen:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DndConditionCardController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZen:I

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDefaultStrings(Landroid/service/notification/ZenModeConfig;)Ljava/lang/String;
    .locals 13

    const-string v0, ""

    const-wide/16 v1, -0x1

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v8, 0x7f121ac4

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v5, 0x7f121a74

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    sget-object v6, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    invoke-virtual {v6, v3}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_3

    sget-object v6, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-virtual {v6, v1, v2, v7}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v8, 0x10407cb

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v8, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v7

    const v8, 0x7f121ac3

    if-nez v7, :cond_4

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-virtual {v3, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    sget-object v7, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v9, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v7, v9}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v9

    cmp-long v7, v9, v1

    if-lez v7, :cond_5

    move-wide v1, v9

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    new-array v11, v5, [Ljava/lang/Object;

    iget-object v12, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v12, v11, v4

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private static getNextAlarm(Landroid/content/Context;)J
    .locals 4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method private getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->getDefaultStrings(Landroid/service/notification/ZenModeConfig;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    move-result-object v0

    const/16 v1, 0x17d

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120cd0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f120484

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f08020c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .locals 2

    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActionClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "DndCondition"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x5de

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f121aca

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
