.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_MASTER_TYPE_FOR_MSM8998"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

.field public static final enum nka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

.field public static final enum oka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

.field public static final enum pka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

.field public static final enum rka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

.field public static final enum ska:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    const/4 v1, 0x0

    const-string v2, "MPSS"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->oka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    const/4 v2, 0x1

    const-string v3, "ADSP"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->nka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    const/4 v3, 0x2

    const-string v4, "SLPI"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->pka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    const/4 v4, 0x3

    const-string v5, "TZ"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->ska:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    const/4 v5, 0x4

    const-string v6, "SPSS"

    invoke-direct {v0, v6, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->rka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->oka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->nka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->pka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->ska:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->rka:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;

    return-object v0
.end method
