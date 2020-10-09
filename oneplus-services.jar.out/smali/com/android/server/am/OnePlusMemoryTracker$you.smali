.class final Lcom/android/server/am/OnePlusMemoryTracker$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "you"
.end annotation


# instance fields
.field final Av:Ljava/lang/String;

.field final Bv:J

.field final Cv:Z

.field Dv:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$you;",
            ">;"
        }
    .end annotation
.end field

.field final mId:I

.field final mLabel:Ljava/lang/String;

.field final mPss:J

.field final zv:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->zv:Z

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->Av:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mPss:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->Bv:J

    iput p7, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mId:I

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->Cv:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->zv:Z

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->Av:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mPss:J

    iput-wide p5, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->Bv:J

    iput p7, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mId:I

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->Cv:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->zv:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mLabel:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "%16dk: %s\n"

    :goto_0
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$you;->mLabel:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "%12dk: %s\n"

    goto :goto_0
.end method
