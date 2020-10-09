.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIAGNOSIS_DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum Ula:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum nma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum oma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum pma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum qma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum rma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum sma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum tma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum uma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum vma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum wma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum xma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

.field public static final enum yma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v1, 0x0

    const-string v2, "VER"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->nma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v2, 0x1

    const-string v3, "SBHR"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->oma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v3, 0x2

    const-string v4, "EVDI"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->pma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v4, 0x3

    const-string v5, "DP"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v5, 0x4

    const-string v6, "AC"

    invoke-direct {v0, v6, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->qma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v6, 0x5

    const-string v7, "CRI"

    invoke-direct {v0, v7, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->rma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v7, 0x6

    const-string v8, "MIN"

    invoke-direct {v0, v8, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/4 v8, 0x7

    const-string v9, "WLP"

    invoke-direct {v0, v9, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->sma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v9, 0x8

    const-string v10, "CRP"

    invoke-direct {v0, v10, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->tma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v10, 0x9

    const-string v11, "KWLP"

    invoke-direct {v0, v11, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->uma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v11, 0xa

    const-string v12, "WR"

    invoke-direct {v0, v12, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->Ula:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v12, 0xb

    const-string v13, "SBP"

    invoke-direct {v0, v13, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->vma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v13, 0xc

    const-string v14, "SNP"

    invoke-direct {v0, v14, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->wma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v14, 0xd

    const-string v15, "UCP"

    invoke-direct {v0, v15, v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->xma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v15, 0xe

    const-string v14, "RPM"

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->yma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->nma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->oma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->pma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->qma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->rma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->sma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->tma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->uma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->Ula:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->vma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->wma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->xma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->yma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    return-object v0
.end method
