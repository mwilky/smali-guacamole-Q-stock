.class Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;
.super Ljava/lang/Object;
.source "ContextualCardLookupTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ControllerRendererMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
        ">;"
    }
.end annotation


# instance fields
.field final mCardType:I

.field final mControllerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;"
        }
    .end annotation
.end field

.field final mRendererClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;"
        }
    .end annotation
.end field

.field final mViewType:I


# direct methods
.method constructor <init>(IILjava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mCardType:I

    iput p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mViewType:I

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mControllerClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mRendererClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic lambda$compareTo$0(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mCardType:I

    return v0
.end method

.method static synthetic lambda$compareTo$1(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mViewType:I

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I
    .locals 2

    sget-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$ZZwwcJixnwWLgKid21VQ51NUU0U;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$ZZwwcJixnwWLgKid21VQ51NUU0U;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->compareTo(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I

    move-result p1

    return p1
.end method
