.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QXDM_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum ela:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum fla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum gla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum hla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v1, 0x0

    const-string v2, "TELE_ABN_TRIGGER"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v2, 0x1

    const-string v3, "MODEM_ABN_TRIGGER"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->ela:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v3, 0x2

    const-string v4, "REACH_120SEC_TIMEOUT"

    invoke-direct {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->fla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v4, 0x3

    const-string v5, "VALID_STANDBY_PERIOD"

    invoke-direct {v0, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->gla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v5, 0x4

    const-string v6, "INVALID_STANDBY_PERIOD"

    invoke-direct {v0, v6, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->hla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->dla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->ela:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->fla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->gla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->hla:Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$QXDM_REASON;

    return-object v0
.end method
