.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/OPThemeSettings;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/OPThemeSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;->f$0:Lcom/oneplus/settings/OPThemeSettings;

    iput p2, p0, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;->f$0:Lcom/oneplus/settings/OPThemeSettings;

    iget v1, p0, Lcom/oneplus/settings/-$$Lambda$OPThemeSettings$C6kQtaLLIAgYempaPUo6K7qFVBw;->f$1:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPThemeSettings;->lambda$showWarningDialog$0$OPThemeSettings(I)V

    return-void
.end method
