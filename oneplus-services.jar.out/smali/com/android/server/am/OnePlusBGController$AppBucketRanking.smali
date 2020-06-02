.class public final enum Lcom/android/server/am/OnePlusBGController$AppBucketRanking;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppBucketRanking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$AppBucketRanking;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum HIGH:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum LOW:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum UNKNOWN:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum Vka:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const-string v3, "U"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v2, 0x1

    const-string v3, "HIGH"

    const-string v4, "H"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->HIGH:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v3, 0x2

    const-string v4, "GENERAL"

    const-string v5, "G"

    invoke-direct {v0, v4, v3, v5}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->Vka:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v4, 0x3

    const-string v5, "LOW"

    const-string v6, "L"

    invoke-direct {v0, v5, v4, v6}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->LOW:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->HIGH:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->Vka:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->LOW:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->$VALUES:[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$AppBucketRanking;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->$VALUES:[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->mType:Ljava/lang/String;

    return-object p0
.end method
