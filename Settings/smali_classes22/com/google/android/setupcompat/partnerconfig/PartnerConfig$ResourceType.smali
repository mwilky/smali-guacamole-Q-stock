.class public final enum Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
.super Ljava/lang/Enum;
.source "PartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

.field public static final enum STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v1, 0x0

    const-string v2, "BOOL"

    invoke-direct {v0, v2, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v2, 0x1

    const-string v3, "COLOR"

    invoke-direct {v0, v3, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v3, 0x2

    const-string v4, "DRAWABLE"

    invoke-direct {v0, v4, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v4, 0x3

    const-string v5, "STRING"

    invoke-direct {v0, v5, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v5, 0x4

    const-string v6, "DIMENSION"

    invoke-direct {v0, v6, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v6, 0x5

    const-string v7, "FRACTION"

    invoke-direct {v0, v7, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object v0
.end method
