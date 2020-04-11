.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "ConditionalContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
    }
.end annotation


# static fields
.field static final UNSUPPORTED_RANKING_SCORE:D = -100.0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mActionText:Ljava/lang/CharSequence;

.field private final mConditionId:J

.field private final mMetricsConstant:I


# direct methods
.method private constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->access$200(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mActionText:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mActionText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCardType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getConditionId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    return-wide v0
.end method

.method public getMetricsConstant()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    return v0
.end method
