.class public Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;
.super Ljava/lang/Object;
.source "ContextualCardLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;
    }
.end annotation


# instance fields
.field private final mRankingScore:D

.field private final mSliceUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;->mSliceUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;->mRankingScore:D

    return-void
.end method


# virtual methods
.method public getRankingScore()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;->mRankingScore:D

    return-wide v0
.end method

.method public getSliceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;->mSliceUri:Ljava/lang/String;

    return-object v0
.end method
