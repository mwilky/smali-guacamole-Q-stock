.class public final synthetic Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$oNbK-iRZQTcCTWLj6iE3Ug-n1Bo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$oNbK-iRZQTcCTWLj6iE3Ug-n1Bo;->f$0:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$oNbK-iRZQTcCTWLj6iE3Ug-n1Bo;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$oNbK-iRZQTcCTWLj6iE3Ug-n1Bo;->f$0:Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardController$oNbK-iRZQTcCTWLj6iE3Ug-n1Bo;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->lambda$loadSuggestions$0$LegacySuggestionContextualCardController(Ljava/util/Map;)V

    return-void
.end method
