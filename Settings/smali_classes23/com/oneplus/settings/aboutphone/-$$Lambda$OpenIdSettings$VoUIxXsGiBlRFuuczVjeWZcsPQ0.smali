.class public final synthetic Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/aboutphone/OpenIdSettings;

.field private final synthetic f$1:Lcom/oneplus/lib/widget/button/OPButton;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;Lcom/oneplus/lib/widget/button/OPButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;->f$0:Lcom/oneplus/settings/aboutphone/OpenIdSettings;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;->f$1:Lcom/oneplus/lib/widget/button/OPButton;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;->f$0:Lcom/oneplus/settings/aboutphone/OpenIdSettings;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$VoUIxXsGiBlRFuuczVjeWZcsPQ0;->f$1:Lcom/oneplus/lib/widget/button/OPButton;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->lambda$onCreate$1$OpenIdSettings(Lcom/oneplus/lib/widget/button/OPButton;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
