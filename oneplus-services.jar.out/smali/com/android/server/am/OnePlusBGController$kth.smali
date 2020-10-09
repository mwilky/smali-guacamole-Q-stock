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
.field public Cm:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public Dm:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public Em:Z

.field public Fm:D

.field public Gm:Z

.field public Hm:Z

.field public Im:Z

.field public mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$kth;->Cm:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$kth;->Dm:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$kth;->Em:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$kth;->Fm:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$kth;->Gm:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$kth;->Hm:Z

    iput-boolean p9, p0, Lcom/android/server/am/OnePlusBGController$kth;->Im:Z

    return-void
.end method
