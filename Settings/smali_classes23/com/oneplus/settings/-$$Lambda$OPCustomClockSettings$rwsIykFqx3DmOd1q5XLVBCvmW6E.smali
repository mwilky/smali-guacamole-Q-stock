.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPCustomClockSettings$rwsIykFqx3DmOd1q5XLVBCvmW6E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/OPCustomClockSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/OPCustomClockSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/-$$Lambda$OPCustomClockSettings$rwsIykFqx3DmOd1q5XLVBCvmW6E;->f$0:Lcom/oneplus/settings/OPCustomClockSettings;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/-$$Lambda$OPCustomClockSettings$rwsIykFqx3DmOd1q5XLVBCvmW6E;->f$0:Lcom/oneplus/settings/OPCustomClockSettings;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/OPCustomClockSettings;->lambda$onCreateOptionsMenu$0$OPCustomClockSettings(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
