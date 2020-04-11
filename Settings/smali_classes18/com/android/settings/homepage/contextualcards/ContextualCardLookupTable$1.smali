.class Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;
.super Ljava/util/TreeSet;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const/4 v3, 0x3

    const v4, 0x7f0d0056

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const v4, 0x7f0d0055

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    const/4 v3, 0x2

    const v4, 0x7f0d00fe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const/4 v3, 0x1

    const v4, 0x7f0d0064

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const v4, 0x7f0d0065

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const v4, 0x7f0d0066

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    const/4 v3, 0x5

    const v4, 0x7f0d0054

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    const/4 v3, 0x4

    const v4, 0x7f0d0057

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
