.class public Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;
.super Ljava/lang/Object;
.source "GrayscaleConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_GRAYSCALE_CHANGED:Ljava/lang/String; = "android.settings.action.GRAYSCALE_CHANGED"

.field private static final GRAYSCALE_CHANGED_FILTER:Landroid/content/IntentFilter;

.field static final ID:I

.field private static final TAG:Ljava/lang/String; = "GrayscaleCondition"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private mIntent:Landroid/content/Intent;

.field private final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "GrayscaleConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->ID:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->GRAYSCALE_CHANGED_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;)V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-object v0
.end method

.method private sendBroadcast()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->ID:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    move-result-object v0

    const/16 v1, 0x693

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f12046c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f120466

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120465

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v2, 0x7f0801ee

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

    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->ID:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    const v1, 0x7f12047e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isSaturationActivated()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GrayscaleCondition"

    const-string v2, "Failure parsing grayscale settings intent, skipping"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onActionClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->sendBroadcast()V

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->GRAYSCALE_CHANGED_FILTER:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/GrayscaleConditionController$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
