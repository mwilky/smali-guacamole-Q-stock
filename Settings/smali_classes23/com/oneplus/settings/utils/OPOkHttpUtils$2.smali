.class Lcom/oneplus/settings/utils/OPOkHttpUtils$2;
.super Ljava/lang/Object;
.source "OPOkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/OPOkHttpUtils;->getDataAsyn(Ljava/lang/String;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/utils/OPOkHttpUtils;

.field final synthetic val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/utils/OPOkHttpUtils;Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$2;->this$0:Lcom/oneplus/settings/utils/OPOkHttpUtils;

    iput-object p2, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$2;->val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$2;->val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;->failed(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPOkHttpUtils$2;->val$netCall:Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/settings/utils/OPOkHttpUtils$NetCall;->success(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
