.class public Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;
.super Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;
.source "ContextualCardLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardClickLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;
    }
.end annotation


# instance fields
.field private final mSliceRow:I

.field private final mSliceTapTarget:I

.field private final mUiPosition:I


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;-><init>(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)V

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->access$200(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;->mSliceRow:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->access$300(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;->mSliceTapTarget:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;->access$400(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;->mUiPosition:I

    return-void
.end method


# virtual methods
.method public getSliceRow()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;->mSliceRow:I

    return v0
.end method

.method public getSliceTapTarget()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;->mSliceTapTarget:I

    return v0
.end method

.method public getUiPosition()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardClickLog;->mUiPosition:I

    return v0
.end method
