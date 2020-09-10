.class public Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;
.super Ljava/lang/Object;
.source "SliceContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardController;


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceCardController"


# instance fields
.field private mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSimpleCardName(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method


# virtual methods
.method public getCardType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isFeedbackEnabled(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onDismissed$0$SliceContextualCardController(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/CardDatabaseHelper;->markContextualCardAsDismissed(Landroid/content/Context;Ljava/lang/String;)I

    return-void
.end method

.method public onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    return-void
.end method

.method public onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 4

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;-><init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->showFeedbackDialog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;->buildCardDismissLog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x681

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    return-void
.end method

.method public setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method

.method showFeedbackDialog(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    const v1, 0x7f120489

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->isFeedbackEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/homepage/contextualcards/ContextualCardFeedbackDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    nop

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->getSimpleCardName(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "card_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "feedback_email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
