.class Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;
.super Landroid/database/ContentObserver;
.source "OpWeatherSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpWeatherSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/slice/OpWeatherSlice;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object p1, p1, Lcom/oneplus/aod/slice/OpSlice;->mHandler:Lcom/oneplus/aod/slice/OpSlice$H;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    iget-object p1, p1, Lcom/oneplus/aod/slice/OpSlice;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "weather info onChange query mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v1}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$000(Lcom/oneplus/aod/slice/OpWeatherSlice;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$WeatherObserver;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$100(Lcom/oneplus/aod/slice/OpWeatherSlice;)V

    return-void
.end method
