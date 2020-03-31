.class Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;
.super Ljava/lang/Object;
.source "OpWeatherSlice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/slice/OpWeatherSlice$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/slice/OpWeatherSlice$1;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/slice/OpWeatherSlice$1;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;->this$1:Lcom/oneplus/aod/slice/OpWeatherSlice$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;->this$1:Lcom/oneplus/aod/slice/OpWeatherSlice$1;

    iget-object v0, v0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {v0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$200(Lcom/oneplus/aod/slice/OpWeatherSlice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$400()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;->this$1:Lcom/oneplus/aod/slice/OpWeatherSlice$1;

    iget-object v1, v1, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$002(Lcom/oneplus/aod/slice/OpWeatherSlice;I)I

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1$1;->this$1:Lcom/oneplus/aod/slice/OpWeatherSlice$1;

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpWeatherSlice$1;->this$0:Lcom/oneplus/aod/slice/OpWeatherSlice;

    invoke-static {p0, v0}, Lcom/oneplus/aod/slice/OpWeatherSlice;->access$500(Lcom/oneplus/aod/slice/OpWeatherSlice;Landroid/database/Cursor;)V

    return-void
.end method
