.class public final enum Lcom/android/server/am/OnePlusBGController$MyDrainType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MyDrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$MyDrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum BLUETOOTH:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum CAMERA:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum CPU:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum FLASHLIGHT:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum GPS:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum MEDIA:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum SENSOR:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum UNKNOWN:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum WAKELOCK:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum WIFI:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum Zka:Lcom/android/server/am/OnePlusBGController$MyDrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v2, 0x1

    const-string v3, "CPU"

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->CPU:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v3, 0x2

    const-string v4, "WAKELOCK"

    invoke-direct {v0, v4, v3}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->WAKELOCK:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v4, 0x3

    const-string v5, "MOBILERADIO"

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->Zka:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v5, 0x4

    const-string v6, "WIFI"

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->WIFI:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v6, 0x5

    const-string v7, "BLUETOOTH"

    invoke-direct {v0, v7, v6}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->BLUETOOTH:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v7, 0x6

    const-string v8, "GPS"

    invoke-direct {v0, v8, v7}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->GPS:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/4 v8, 0x7

    const-string v9, "SENSOR"

    invoke-direct {v0, v9, v8}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->SENSOR:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/16 v9, 0x8

    const-string v10, "CAMERA"

    invoke-direct {v0, v10, v9}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->CAMERA:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/16 v10, 0x9

    const-string v11, "FLASHLIGHT"

    invoke-direct {v0, v11, v10}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->FLASHLIGHT:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/16 v11, 0xa

    const-string v12, "MEDIA"

    invoke-direct {v0, v12, v11}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->MEDIA:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$MyDrainType;

    sget-object v12, Lcom/android/server/am/OnePlusBGController$MyDrainType;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v12, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->CPU:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->WAKELOCK:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->Zka:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->WIFI:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->BLUETOOTH:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->GPS:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->SENSOR:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->CAMERA:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->FLASHLIGHT:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->MEDIA:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$MyDrainType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$MyDrainType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$MyDrainType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$MyDrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$MyDrainType;

    return-object v0
.end method
