.class public Lcom/android/server/am/OnePlusBGController$kth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kth"
.end annotation


# instance fields
.field public Am:Z

.field public Bm:Z

.field public Cm:Z

.field public mPkg:Ljava/lang/String;

.field public wm:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public xm:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public ym:Z

.field public zm:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$kth;->wm:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$kth;->xm:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$kth;->ym:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$kth;->zm:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$kth;->Am:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$kth;->Bm:Z

    iput-boolean p9, p0, Lcom/android/server/am/OnePlusBGController$kth;->Cm:Z

    return-void
.end method
