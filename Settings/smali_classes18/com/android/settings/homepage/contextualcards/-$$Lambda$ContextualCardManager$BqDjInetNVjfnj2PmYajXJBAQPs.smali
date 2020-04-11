.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$BqDjInetNVjfnj2PmYajXJBAQPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$BqDjInetNVjfnj2PmYajXJBAQPs;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$BqDjInetNVjfnj2PmYajXJBAQPs;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardManager;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->lambda$getCardsToKeep$3$ContextualCardManager(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result p1

    return p1
.end method
