.class Lcom/oneplus/aod/slice/OpSliceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OpSliceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/slice/OpSliceManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/aod/slice/OpSliceManager;->access$000()Z

    move-result p1

    const-string v0, "OpSliceManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.systemui.intent.SLEEP_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x1e6c

    if-ne p1, p2, :cond_2

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p2}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {v1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "pref_name_sleep_end"

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p2}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {v1}, Lcom/oneplus/aod/slice/OpSliceManager;->access$100(Lcom/oneplus/aod/slice/OpSliceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "pref_name_initiative_pulse"

    const-string v2, ""

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save sleep end time: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and clear user initiative pulse time"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager$1;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$200(Lcom/oneplus/aod/slice/OpSliceManager;)Ljava/util/LinkedHashMap;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/slice/OpSlice;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpSlice;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast p0, Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-virtual {p0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->refreshState()V

    :cond_2
    return-void
.end method
