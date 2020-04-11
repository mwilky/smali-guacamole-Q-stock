.class public Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;
.super Ljava/lang/Object;
.source "ContextualCardLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRankingScore:D

.field private mSliceUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->mSliceUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->mRankingScore:D

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog;-><init>(Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;)V

    return-object v0
.end method

.method public setRankingScore(D)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->mRankingScore:D

    return-object p0
.end method

.method public setSliceUri(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/logging/ContextualCardLogUtils$CardLog$Builder;->mSliceUri:Ljava/lang/String;

    return-object p0
.end method
