.class public final synthetic Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;->f$0:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    iput p2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;->f$1:I

    iput-object p3, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;->f$2:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;->f$0:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    iget v1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;->f$1:I

    iget-object v2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomClockPreference$ChooseStyleAdapter$w5E-rJ7hfpkhOWi8HD6IBwTjpxA;->f$2:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0$OPCustomClockPreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;Landroid/view/View;)V

    return-void
.end method
