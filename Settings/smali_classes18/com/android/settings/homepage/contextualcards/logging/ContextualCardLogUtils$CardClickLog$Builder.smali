.class public Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;
.super Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;
.source "ContextualCardLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSliceRow:I

.field private mSliceTapTarget:I

.field private mUiPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->mSliceRow:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->mSliceTapTarget:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->mUiPosition:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;-><init>(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;

    move-result-object v0

    return-object v0
.end method

.method public setSliceRow(I)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->mSliceRow:I

    return-object p0
.end method

.method public setSliceTapTarget(I)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->mSliceTapTarget:I

    return-object p0
.end method

.method public setUiPosition(I)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->mUiPosition:I

    return-object p0
.end method
