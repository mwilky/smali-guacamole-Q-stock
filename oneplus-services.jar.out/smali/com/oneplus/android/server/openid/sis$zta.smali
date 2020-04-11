.class Lcom/oneplus/android/server/openid/sis$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/openid/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/openid/sis;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/openid/sis;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/openid/sis$zta;->this$0:Lcom/oneplus/android/server/openid/sis;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const-string v0, "OpenIdManager"

    iget-object v1, p0, Lcom/oneplus/android/server/openid/sis$zta;->this$0:Lcom/oneplus/android/server/openid/sis;

    invoke-static {v1}, Lcom/oneplus/android/server/openid/sis;->tsu(Lcom/oneplus/android/server/openid/sis;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/oneplus/android/server/openid/sis;->access$600()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "registerContentObserver on settings got exception..."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/openid/sis$zta;->update(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "update for all uris got exception..."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/oneplus/android/server/openid/sis$zta;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver onChange uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/openid/sis$zta;->this$0:Lcom/oneplus/android/server/openid/sis;

    invoke-static {v0}, Lcom/oneplus/android/server/openid/sis;->tsu(Lcom/oneplus/android/server/openid/sis;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/openid/sis;->access$600()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/openid/sis$zta;->this$0:Lcom/oneplus/android/server/openid/sis;

    invoke-static {p1}, Lcom/oneplus/android/server/openid/sis;->you(Lcom/oneplus/android/server/openid/sis;)Lcom/oneplus/android/server/openid/cno;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/openid/sis$zta;->this$0:Lcom/oneplus/android/server/openid/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/openid/sis;->you(Lcom/oneplus/android/server/openid/sis;)Lcom/oneplus/android/server/openid/cno;

    move-result-object p0

    const/4 p1, 0x1

    const-string v1, "oneplus_openid_toggle"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/openid/cno;->N(Z)V

    :cond_2
    return-void
.end method
