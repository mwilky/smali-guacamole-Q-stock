.class public Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a76

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a77

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121ac3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121ac4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a70

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a71

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a75

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a6d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a6e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    if-ne p1, v1, :cond_c

    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a83

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a51

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121abc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/16 v0, 0x10

    if-ne p1, v0, :cond_11

    if-eqz p3, :cond_10

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a85

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v1, 0x7f121a86

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    if-eqz p3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x10

    if-ne v5, v7, :cond_1

    const/16 v7, 0x8

    invoke-direct {p0, p1, v7}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v5, p1, v6}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 1

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getSoundSettingSummary$0(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v1, v0, :cond_1

    const/16 v0, 0x40

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method getAutomaticRulesSummary()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f121ab4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100057

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121a94

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121a93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121a92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$_Gea8GbwXN997GXaupRdGPPi1FA;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121a73

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121a4d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121a4e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$LLDaX-2z-6de5PmdjgLOxxl3BSU;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121a74

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method getSoundSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121adf

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121ae3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121ae6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v7, 0x7f121ae4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v3, 0x7f121ae2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getSoundSummary()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f121aba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f121abb

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v5, 0x7f121ab9

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100058

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v1

    invoke-virtual {v7, v8, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f121ab8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
