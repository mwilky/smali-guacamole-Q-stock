.class final enum Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;
.super Ljava/lang/Enum;
.source "OpWeatherSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpWeatherSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WeatherColumns"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

.field public static final enum TEMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

.field public static final enum TEMP_HIGH:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

.field public static final enum TEMP_LOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

.field public static final enum TIMESTAMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

.field public static final enum WEATHER_CODE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

.field public static final enum WEATHER_NAME:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    const/4 v1, 0x0

    const-string v2, "TIMESTAMP"

    invoke-direct {v0, v2, v1, v1}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TIMESTAMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "WEATHER_CODE"

    invoke-direct {v0, v4, v2, v3}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->WEATHER_CODE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    const/4 v4, 0x6

    const-string v5, "WEATHER_NAME"

    invoke-direct {v0, v5, v3, v4}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->WEATHER_NAME:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    const/4 v5, 0x3

    const-string v6, "TEMP"

    invoke-direct {v0, v6, v5, v5}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    const/4 v6, 0x4

    const-string v7, "TEMP_HIGH"

    invoke-direct {v0, v7, v6, v6}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP_HIGH:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    new-instance v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    const/4 v7, 0x5

    const-string v8, "TEMP_LOW"

    invoke-direct {v0, v8, v7, v7}, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP_LOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    new-array v0, v4, [Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    sget-object v4, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TIMESTAMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->WEATHER_CODE:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->WEATHER_NAME:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP_HIGH:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->TEMP_LOW:Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->$VALUES:[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->index:I

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->index:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;
    .locals 1

    const-class v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->$VALUES:[Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    invoke-virtual {v0}, [Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherColumns;

    return-object v0
.end method
