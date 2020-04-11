.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.source "ConditionFooterContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;
    .locals 2

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$1;)V

    return-object v0
.end method

.method public bridge synthetic setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;->setCardType(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCardType(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change card type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
