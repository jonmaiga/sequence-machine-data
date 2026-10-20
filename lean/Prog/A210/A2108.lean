import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A210805: Triangle of coefficients of polynomials u(n,x) jointly generated with A210806; see the Formula section.

The programs for A210805, there is no canonical definition to state claims against.
-/

/-! ## A210805.P2398224260393487415

`2*A210789(n+1)-A210797(n+1)`
-/

namespace A210805.P2398224260393487415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210789 (n + 1) - A210797 (n + 1)

end

end A210805.P2398224260393487415

/-! ## A210805.P15130630289409989824

`A004277(A210789(n+1))-A210797(n+1)`
-/

namespace A210805.P15130630289409989824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210789 (n + 1)).toNat - A210797 (n + 1)

end

end A210805.P15130630289409989824

/-! ## A210805.P2355620318707344826

`∑{e}[A172516(A210790(n+1)), #]`
-/

namespace A210805.P2355620318707344826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172516 (A210790 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A210805.P2355620318707344826

/-! ## A210805.P184877728072921428

`A238598(A295027(n+1))`
-/

namespace A210805.P184877728072921428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A295027 (n + 1)).toNat

end

end A210805.P184877728072921428

/-! ## A210805.P5054443391071193994

`A322523(A176390(n))+A260876(n)`
-/

namespace A210805.P5054443391071193994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (A176390 n).toNat + A260876 n

end

end A210805.P5054443391071193994

/-!
# A210806: Triangle of coefficients of polynomials v(n,x) jointly generated with A210805; see the Formula section.

The programs for A210806, there is no canonical definition to state claims against.
-/

/-! ## A210806.P10792615386777460782

`2*A210790(n+1)-A210798(n+1)`
-/

namespace A210806.P10792615386777460782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210790 (n + 1) - A210798 (n + 1)

end

end A210806.P10792615386777460782

/-! ## A210806.P8709609951306732226

`A210789(n+2)-Δ[A210790(n+1)]`
-/

namespace A210806.P8709609951306732226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210789 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210806.P8709609951306732226

/-! ## A210806.P17207655993555236103

`A210790(n+1)+A210789(n+2)-A210790(n+2)`
-/

namespace A210806.P17207655993555236103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210790 (n + 1) + (A210789 (n + 2) - A210790 (n + 2))

end

end A210806.P17207655993555236103

/-! ## A210806.P210730642283494404

`A004277(A210790(n+1))-A210798(n+1)`
-/

namespace A210806.P210730642283494404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210790 (n + 1)).toNat - A210798 (n + 1)

end

end A210806.P210730642283494404

/-! ## A210806.P9671118777704528468

`A245840(n+1)+A011731(A132985(n))`
-/

namespace A210806.P9671118777704528468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245840 (n + 1) + A011731 (A132985 n).toNat

end

end A210806.P9671118777704528468

/-!
# A210809: Number of (n+1)X(n+1) 0..2 symmetric matrices containing all values 0..2 with every 2X2 subblock having three distinct values, and new values 0..2 introduced in lower triangle row major order.

The programs for A210809, there is no canonical definition to state claims against.
-/

/-! ## A210809.P13829622619921244982

`A210835(n+1)-A210822(n+1)`
-/

namespace A210809.P13829622619921244982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210835 (n + 1) - A210822 (n + 1)

end

end A210809.P13829622619921244982

/-! ## A210809.P158275718302284305

`A210829(n+1)-A210816(n+1)`
-/

namespace A210809.P158275718302284305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210829 (n + 1) - A210816 (n + 1)

end

end A210809.P158275718302284305

/-!
# A210810: Number of (n+1)X(n+1) 0..2 symmetric matrices containing all values 0..2 with every 2X2 subblock having one or three distinct values, and new values 0..2 introduced in lower triangle row major order.

The programs for A210810, there is no canonical definition to state claims against.
-/

/-! ## A210810.P7599466169137518898

`A210856(n+1)-1`
-/

namespace A210810.P7599466169137518898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210856 (n + 1) - 1

end

end A210810.P7599466169137518898

/-! ## A210810.P13439567942790968816

`xor(Δ[A080277(n+1)], A210856(n+1))`
-/

namespace A210810.P13439567942790968816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A210856 (n + 1))

end

end A210810.P13439567942790968816

/-! ## A210810.P2294396989405560701

`A292279(Δ[floor(ϕ*n)])+A210856(n+1)`
-/

namespace A210810.P2294396989405560701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292279 (f1 (n + 1) - f1 n).toNat + A210856 (n + 1)

end

end A210810.P2294396989405560701

/-! ## A210810.P803454433019064435

`A295728(A072344(n+1))+A210856(n+1)`
-/

namespace A210810.P803454433019064435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (A072344 (n + 1)).toNat + A210856 (n + 1)

end

end A210810.P803454433019064435

/-! ## A210810.P11995324412483628041

`A210830(n+1)-(A210817(n+1)+1)`
-/

namespace A210810.P11995324412483628041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210830 (n + 1) - (A210817 (n + 1) + 1)

end

end A210810.P11995324412483628041

/-!
# A210814: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having two distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210814, there is no canonical definition to state claims against.
-/

/-! ## A210814.P2566342084570362312

`A210827(n+1)-A210854(n+1)`
-/

namespace A210814.P2566342084570362312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210827 (n + 1) - A210854 (n + 1)

end

end A210814.P2566342084570362312

/-! ## A210814.P13088803514080074298

`A210820(n+1)+A210827(n+1)-A210833(n+1)`
-/

namespace A210814.P13088803514080074298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210820 (n + 1) + (A210827 (n + 1) - A210833 (n + 1))

end

end A210814.P13088803514080074298

/-!
# A210815: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having one or two distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210815, there is no canonical definition to state claims against.
-/

/-! ## A210815.P6791582926791203806

`A210828(n+1)-A210855(n+1)`
-/

namespace A210815.P6791582926791203806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210828 (n + 1) - A210855 (n + 1)

end

end A210815.P6791582926791203806

/-! ## A210815.P7620043821352227083

`A210821(n+1)+A210828(n+1)-A210834(n+1)`
-/

namespace A210815.P7620043821352227083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210821 (n + 1) + (A210828 (n + 1) - A210834 (n + 1))

end

end A210815.P7620043821352227083

/-!
# A210816: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having three distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210816, there is no canonical definition to state claims against.
-/

/-! ## A210816.P9406877918599649411

`A210829(n+1)-A210809(n+1)`
-/

namespace A210816.P9406877918599649411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210829 (n + 1) - A210809 (n + 1)

end

end A210816.P9406877918599649411

/-! ## A210816.P1137719718171611355

`A210822(n+1)+A210829(n+1)-A210835(n+1)`
-/

namespace A210816.P1137719718171611355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210822 (n + 1) + (A210829 (n + 1) - A210835 (n + 1))

end

end A210816.P1137719718171611355

/-!
# A210817: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210817, there is no canonical definition to state claims against.
-/

/-! ## A210817.P13758330243243687439

`A210830(n+1)-A210856(n+1)`
-/

namespace A210817.P13758330243243687439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210830 (n + 1) - A210856 (n + 1)

end

end A210817.P13758330243243687439

/-! ## A210817.P386864246585232325

`A210830(n+1)-(A210810(n+1)+1)`
-/

namespace A210817.P386864246585232325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210830 (n + 1) - (A210810 (n + 1) + 1)

end

end A210817.P386864246585232325

/-! ## A210817.P14116920711082923805

`ceil(A211103(n+1)/6)-A210856(n+1)`
-/

namespace A210817.P14116920711082923805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211103 (n + 1) : ℚ) / 6⌉ - A210856 (n + 1)

end

end A210817.P14116920711082923805

/-! ## A210817.P8322823903766298420

`ceil(A211103(n+1)/6)-(A210810(n+1)+1)`
-/

namespace A210817.P8322823903766298420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211103 (n + 1) : ℚ) / 6⌉ - (A210810 (n + 1) + 1)

end

end A210817.P8322823903766298420

/-! ## A210817.P1787246752754107360

`A210823(n+1)+A210830(n+1)-A210836(n+1)`
-/

namespace A210817.P1787246752754107360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210823 (n + 1) + (A210830 (n + 1) - A210836 (n + 1))

end

end A210817.P1787246752754107360

/-!
# A210818: Number of (n+1) X (n+1) 0..3 symmetric matrices containing all values 0..3 with every 2 X 2 subblock having two or three distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210818, there is no canonical definition to state claims against.
-/

/-! ## A210818.P12696434733520458233

`A210831(n+1)-A210857(n+1)`
-/

namespace A210818.P12696434733520458233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210831 (n + 1) - A210857 (n + 1)

end

end A210818.P12696434733520458233

/-! ## A210818.P9765682118835271100

`A210824(n+1)+A210831(n+1)-A210837(n+1)`
-/

namespace A210818.P9765682118835271100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210824 (n + 1) + (A210831 (n + 1) - A210837 (n + 1))

end

end A210818.P9765682118835271100

/-!
# A210820: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210820, there is no canonical definition to state claims against.
-/

/-! ## A210820.P2552617710933038482

`A210833(n+1)-A210854(n+1)`
-/

namespace A210820.P2552617710933038482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210833 (n + 1) - A210854 (n + 1)

end

end A210820.P2552617710933038482

/-! ## A210820.P13806803390347669147

`A210814(n+1)+A210833(n+1)-A210827(n+1)`
-/

namespace A210820.P13806803390347669147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210814 (n + 1) + (A210833 (n + 1) - A210827 (n + 1))

end

end A210820.P13806803390347669147

/-!
# A210821: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210821, there is no canonical definition to state claims against.
-/

/-! ## A210821.P9993208772870186731

`A210834(n+1)-A210855(n+1)`
-/

namespace A210821.P9993208772870186731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210834 (n + 1) - A210855 (n + 1)

end

end A210821.P9993208772870186731

/-! ## A210821.P11738530364135278443

`A210834(n+1)-ceil(A195213(n+2)/2)`
-/

namespace A210821.P11738530364135278443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210834 (n + 1) - ⌈(A195213 (n + 2) : ℚ) / 2⌉

end

end A210821.P11738530364135278443

/-! ## A210821.P4181133654647251103

`A210815(n+1)+A210834(n+1)-A210828(n+1)`
-/

namespace A210821.P4181133654647251103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210815 (n + 1) + (A210834 (n + 1) - A210828 (n + 1))

end

end A210821.P4181133654647251103

/-!
# A210822: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210822, there is no canonical definition to state claims against.
-/

/-! ## A210822.P6644237802882692211

`A210835(n+1)-A210809(n+1)`
-/

namespace A210822.P6644237802882692211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210835 (n + 1) - A210809 (n + 1)

end

end A210822.P6644237802882692211

/-! ## A210822.P16754160900705289291

`A210816(n+1)+A210835(n+1)-A210829(n+1)`
-/

namespace A210822.P16754160900705289291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210816 (n + 1) + (A210835 (n + 1) - A210829 (n + 1))

end

end A210822.P16754160900705289291

/-!
# A210823: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210823, there is no canonical definition to state claims against.
-/

/-! ## A210823.P7090818964079904708

`A210836(n+1)-A210856(n+1)`
-/

namespace A210823.P7090818964079904708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210836 (n + 1) - A210856 (n + 1)

end

end A210823.P7090818964079904708

/-! ## A210823.P6050657095750459346

`A210836(n+1)-(A210810(n+1)+1)`
-/

namespace A210823.P6050657095750459346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210836 (n + 1) - (A210810 (n + 1) + 1)

end

end A210823.P6050657095750459346

/-! ## A210823.P9749510778751426692

`A210817(n+1)+A210836(n+1)-A210830(n+1)`
-/

namespace A210823.P9749510778751426692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210817 (n + 1) + (A210836 (n + 1) - A210830 (n + 1))

end

end A210823.P9749510778751426692

/-! ## A210823.P2144911931456392096

`A210836(n+1)-(ceil(A211103(n+1)/6)-A210817(n+1))`
-/

namespace A210823.P2144911931456392096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210836 (n + 1) - (⌈(A211103 (n + 1) : ℚ) / 6⌉ - A210817 (n + 1))

end

end A210823.P2144911931456392096

/-!
# A210824: Number of (n+1)X(n+1) 0..3 symmetric matrices containing all values 0..3 with every 2X2 subblock having two, three or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210824, there is no canonical definition to state claims against.
-/

/-! ## A210824.P12059264210977127014

`A210837(n+1)-A210857(n+1)`
-/

namespace A210824.P12059264210977127014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210837 (n + 1) - A210857 (n + 1)

end

end A210824.P12059264210977127014

/-! ## A210824.P2606243543028837205

`A210818(n+1)+A210837(n+1)-A210831(n+1)`
-/

namespace A210824.P2606243543028837205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210818 (n + 1) + (A210837 (n + 1) - A210831 (n + 1))

end

end A210824.P2606243543028837205

/-!
# A210825: G.f.: Sum_{n>=1} a(n)*x^n/(1-x^n) = x*Sum_{n>=1} x^(n*(n-1)/2).

The programs for A210825, the canonical program `A210825.P13526735410302526141` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210825 has offset 1).

The definition of A210825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210825.P13526735410302526141

`∑{d}[n+1, A010054(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A210825

/-- `∑{d}[n+1, A010054(#-1)*A008683((n+1)/#)]` -/
def P13526735410302526141.Spec : Prop :=
  ∀ n, P13526735410302526141.a n = A210825 (n + 1)

theorem P13526735410302526141.correct : P13526735410302526141.Spec := by
  intro n
  simp only [A210825, Nat.add_sub_cancel]

end A210825

/-! ## A210825.P12373071949920315079

`A353374(n+1)-A353374(A339657(3*(n+1)))`
-/

namespace A210825.P12373071949920315079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (n + 1) - A353374 (A339657 (3 * (n + 1))).toNat

end

end A210825.P12373071949920315079

namespace A210825

/-- `A353374(n+1)-A353374(A339657(3*(n+1)))` -/
def P12373071949920315079.Spec : Prop :=
  ∀ n, P12373071949920315079.a n = A210825 (n + 1)

end A210825

/-! ## A210825.P17609014777668684512

`A008683(A227103(2*n+5)-A244990(n+1))`
-/

namespace A210825.P17609014777668684512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A227103 (2 * n + 5) - A244990 (n + 1)).toNat

end

end A210825.P17609014777668684512

namespace A210825

/-- `A008683(A227103(2*n+5)-A244990(n+1))` -/
def P17609014777668684512.Spec : Prop :=
  ∀ n, P17609014777668684512.a n = A210825 (n + 1)

end A210825

/-! ## A210825.P7498290876593289250

`A016415(A331832(n+1)+A324849(n+1))`
-/

namespace A210825.P7498290876593289250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 (A331832 (n + 1) + A324849 (n + 1)).toNat

end

end A210825.P7498290876593289250

namespace A210825

/-- `A016415(A331832(n+1)+A324849(n+1))` -/
def P7498290876593289250.Spec : Prop :=
  ∀ n, P7498290876593289250.a n = A210825 (n + 1)

end A210825

/-! ## A210825.P844614071064467048

`A016412(A006590(n+1)*A275888(n+1))`
-/

namespace A210825.P844614071064467048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 (A006590 (n + 1) * A275888 (n + 1)).toNat

end

end A210825.P844614071064467048

namespace A210825

/-- `A016412(A006590(n+1)*A275888(n+1))` -/
def P844614071064467048.Spec : Prop :=
  ∀ n, P844614071064467048.a n = A210825 (n + 1)

end A210825

/-!
# A210826: G.f.: Sum_{n>=1} a(n)*x^n/(1 - x^n) = Sum_{n>=1} x^(n^3).

The programs for A210826, the canonical program `A210826.P1982609276010569986` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210826 has offset 1).

The definition of A210826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210826.P1982609276010569986

`(∏{e}[n+1, #+1]+1)%3-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210826

/-- `(∏{e}[n+1, #+1]+1)%3-1` -/
def P1982609276010569986.Spec : Prop :=
  ∀ n, P1982609276010569986.a n = A210826 (n + 1)

theorem P1982609276010569986.correct : P1982609276010569986.Spec := by
  intro n
  simp only [A210826, Nat.add_sub_cancel]

end A210826

/-! ## A210826.P15272466162508515559

`∏{e}[n+1, A011646(#)]`
-/

namespace A210826.P15272466162508515559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A011646 (Nat.factorization (f1 n) p)

end

end A210826.P15272466162508515559

namespace A210826

/-- `∏{e}[n+1, A011646(#)]` -/
def P15272466162508515559.Spec : Prop :=
  ∀ n, P15272466162508515559.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P6294053986531380503

`∏{e}[n+1, A014978(#)]`
-/

namespace A210826.P6294053986531380503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014978 (Nat.factorization (f1 n) p)

end

end A210826.P6294053986531380503

namespace A210826

/-- `∏{e}[n+1, A014978(#)]` -/
def P6294053986531380503.Spec : Prop :=
  ∀ n, P6294053986531380503.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P6365630327248106054

`∏{e}[n+1, A015182(#)]`
-/

namespace A210826.P6365630327248106054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015182 (Nat.factorization (f1 n) p)

end

end A210826.P6365630327248106054

namespace A210826

/-- `∏{e}[n+1, A015182(#)]` -/
def P6365630327248106054.Spec : Prop :=
  ∀ n, P6365630327248106054.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P11182299257575923234

`∏{e}[n+1, A015320(#)]`
-/

namespace A210826.P11182299257575923234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015320 (Nat.factorization (f1 n) p)

end

end A210826.P11182299257575923234

namespace A210826

/-- `∏{e}[n+1, A015320(#)]` -/
def P11182299257575923234.Spec : Prop :=
  ∀ n, P11182299257575923234.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P10032170705358936616

`∏{e}[n+1, A015662(#)]`
-/

namespace A210826.P10032170705358936616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015662 (Nat.factorization (f1 n) p)

end

end A210826.P10032170705358936616

namespace A210826

/-- `∏{e}[n+1, A015662(#)]` -/
def P10032170705358936616.Spec : Prop :=
  ∀ n, P10032170705358936616.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P5734739142416884679

`∏{e}[n+1, A016010(#)]`
-/

namespace A210826.P5734739142416884679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016010 (Nat.factorization (f1 n) p)

end

end A210826.P5734739142416884679

namespace A210826

/-- `∏{e}[n+1, A016010(#)]` -/
def P5734739142416884679.Spec : Prop :=
  ∀ n, P5734739142416884679.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P5751389456633394429

`∏{e}[n+1, A049347(#)]`
-/

namespace A210826.P5751389456633394429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A049347 (Nat.factorization (f1 n) p)

end

end A210826.P5751389456633394429

namespace A210826

/-- `∏{e}[n+1, A049347(#)]` -/
def P5751389456633394429.Spec : Prop :=
  ∀ n, P5751389456633394429.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P13002198716389413343

`∏{e}[A050985(n+1), #-2]`
-/

namespace A210826.P13002198716389413343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 2)

end

end A210826.P13002198716389413343

namespace A210826

/-- `∏{e}[A050985(n+1), #-2]` -/
def P13002198716389413343.Spec : Prop :=
  ∀ n, P13002198716389413343.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P13789146213588255408

`C(2, A074943(n+1)²)-1`
-/

namespace A210826.P13789146213588255408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A074943 (n + 1) ^ 2).toNat : ℤ) - 1

end

end A210826.P13789146213588255408

namespace A210826

/-- `C(2, A074943(n+1)²)-1` -/
def P13789146213588255408.Spec : Prop :=
  ∀ n, P13789146213588255408.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P13291758006604755148

`(A000005(n+1)+1)%3-1`
-/

namespace A210826.P13291758006604755148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) + 1) 3 - 1

end

end A210826.P13291758006604755148

namespace A210826

/-- `(A000005(n+1)+1)%3-1` -/
def P13291758006604755148.Spec : Prop :=
  ∀ n, P13291758006604755148.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P13265599757036945835

`A008683(A050985(n+1))`
-/

namespace A210826.P13265599757036945835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A050985 (n + 1)).toNat

end

end A210826.P13265599757036945835

namespace A210826

/-- `A008683(A050985(n+1))` -/
def P13265599757036945835.Spec : Prop :=
  ∀ n, P13265599757036945835.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P13467548746858355754

`A102283(A000005(n+1))`
-/

namespace A210826.P13467548746858355754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A000005 (n + 1)).toNat

end

end A210826.P13467548746858355754

namespace A210826

/-- `A102283(A000005(n+1))` -/
def P13467548746858355754.Spec : Prop :=
  ∀ n, P13467548746858355754.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P8702731346018508518

`A102283(A015996(n+1))`
-/

namespace A210826.P8702731346018508518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A015996 (n + 1)).toNat

end

end A210826.P8702731346018508518

namespace A210826

/-- `A102283(A015996(n+1))` -/
def P8702731346018508518.Spec : Prop :=
  ∀ n, P8702731346018508518.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P4232220548394257093

`A104562(A066446(n+1))`
-/

namespace A210826.P4232220548394257093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104562 (A066446 (n + 1)).toNat

end

end A210826.P4232220548394257093

namespace A210826

/-- `A104562(A066446(n+1))` -/
def P4232220548394257093.Spec : Prop :=
  ∀ n, P4232220548394257093.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P10189388186730349276

`A103368(A086369(n+1))`
-/

namespace A210826.P10189388186730349276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103368 (A086369 (n + 1)).toNat

end

end A210826.P10189388186730349276

namespace A210826

/-- `A103368(A086369(n+1))` -/
def P10189388186730349276.Spec : Prop :=
  ∀ n, P10189388186730349276.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P4809996377793529002

`A128834(A062011(n+1))`
-/

namespace A210826.P4809996377793529002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A062011 (n + 1)).toNat

end

end A210826.P4809996377793529002

namespace A210826

/-- `A128834(A062011(n+1))` -/
def P4809996377793529002.Spec : Prop :=
  ∀ n, P4809996377793529002.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P8642712263217199886

`A128834(A131089(n+1))`
-/

namespace A210826.P8642712263217199886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A131089 (n + 1)).toNat

end

end A210826.P8642712263217199886

namespace A210826

/-- `A128834(A131089(n+1))` -/
def P8642712263217199886.Spec : Prop :=
  ∀ n, P8642712263217199886.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P9796735404724308834

`A084091(A344327(n+1))`
-/

namespace A210826.P9796735404724308834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A344327 (n + 1)).toNat

end

end A210826.P9796735404724308834

namespace A210826

/-- `A084091(A344327(n+1))` -/
def P9796735404724308834.Spec : Prop :=
  ∀ n, P9796735404724308834.a n = A210826 (n + 1)

end A210826

/-! ## A210826.P3422230849552800445

`A049347(A000005(n+1)-1)`
-/

namespace A210826.P3422230849552800445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A000005 (n + 1) - 1).toNat

end

end A210826.P3422230849552800445

namespace A210826

/-- `A049347(A000005(n+1)-1)` -/
def P3422230849552800445.Spec : Prop :=
  ∀ n, P3422230849552800445.a n = A210826 (n + 1)

end A210826

/-!
# A210827: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having two distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210827, there is no canonical definition to state claims against.
-/

/-! ## A210827.P17975505510290654444

`A210854(n+1)+A210814(n+1)`
-/

namespace A210827.P17975505510290654444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210854 (n + 1) + A210814 (n + 1)

end

end A210827.P17975505510290654444

/-! ## A210827.P8233043507394824731

`A210814(n+1)+A210833(n+1)-A210820(n+1)`
-/

namespace A210827.P8233043507394824731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210814 (n + 1) + (A210833 (n + 1) - A210820 (n + 1))

end

end A210827.P8233043507394824731

/-!
# A210828: Number of (n+1) X (n+1) 0..3 symmetric matrices with every 2 X 2 subblock having one or two distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210828, there is no canonical definition to state claims against.
-/

/-! ## A210828.P8656088509095694451

`A210855(n+1)+A210815(n+1)`
-/

namespace A210828.P8656088509095694451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210855 (n + 1) + A210815 (n + 1)

end

end A210828.P8656088509095694451

/-! ## A210828.P9429419118007766706

`A210815(n+1)+ceil(A195213(n+2)/2)`
-/

namespace A210828.P9429419118007766706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210815 (n + 1) + ⌈(A195213 (n + 2) : ℚ) / 2⌉

end

end A210828.P9429419118007766706

/-! ## A210828.P10538238620337804564

`A210815(n+1)+A210834(n+1)-A210821(n+1)`
-/

namespace A210828.P10538238620337804564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210815 (n + 1) + (A210834 (n + 1) - A210821 (n + 1))

end

end A210828.P10538238620337804564

/-!
# A210829: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having three distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210829, there is no canonical definition to state claims against.
-/

/-! ## A210829.P4689414530481594963

`A210816(n+1)+A210809(n+1)`
-/

namespace A210829.P4689414530481594963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210816 (n + 1) + A210809 (n + 1)

end

end A210829.P4689414530481594963

/-! ## A210829.P2827629962808468411

`A210816(n+1)+A210835(n+1)-A210822(n+1)`
-/

namespace A210829.P2827629962808468411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210816 (n + 1) + (A210835 (n + 1) - A210822 (n + 1))

end

end A210829.P2827629962808468411

/-!
# A210830: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having one or three distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210830, there is no canonical definition to state claims against.
-/

/-! ## A210830.P17888861591229289481

`ceil(A211103(n+1)/6)`
-/

namespace A210830.P17888861591229289481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211103 (n + 1) : ℚ) / 6⌉

end

end A210830.P17888861591229289481

/-! ## A210830.P2296675288528635603

`A210856(n+1)+A210817(n+1)`
-/

namespace A210830.P2296675288528635603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210856 (n + 1) + A210817 (n + 1)

end

end A210830.P2296675288528635603

/-! ## A210830.P5151996006482009374

`A210810(n+1)+A210817(n+1)+1`
-/

namespace A210830.P5151996006482009374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210810 (n + 1) + (A210817 (n + 1) + 1)

end

end A210830.P5151996006482009374

/-! ## A210830.P4059237384778452515

`A210817(n+1)+A210836(n+1)-A210823(n+1)`
-/

namespace A210830.P4059237384778452515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210817 (n + 1) + (A210836 (n + 1) - A210823 (n + 1))

end

end A210830.P4059237384778452515

/-! ## A210830.P3039958984163253040

`A210817(n+1)+ceil(A211108(n+1)/6)-A210823(n+1)`
-/

namespace A210830.P3039958984163253040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210817 (n + 1) + (⌈(A211108 (n + 1) : ℚ) / 6⌉ - A210823 (n + 1))

end

end A210830.P3039958984163253040

/-!
# A210831: Number of (n+1) X (n+1) 0..3 symmetric matrices with every 2 X 2 subblock having two or three distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210831, there is no canonical definition to state claims against.
-/

/-! ## A210831.P6648612179143075105

`A210818(n+1)+A210837(n+1)-A210824(n+1)`
-/

namespace A210831.P6648612179143075105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210818 (n + 1) + (A210837 (n + 1) - A210824 (n + 1))

end

end A210831.P6648612179143075105

/-!
# A210833: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210833, there is no canonical definition to state claims against.
-/

/-! ## A210833.P9406674243216198601

`A210854(n+1)+A210820(n+1)`
-/

namespace A210833.P9406674243216198601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210854 (n + 1) + A210820 (n + 1)

end

end A210833.P9406674243216198601

/-! ## A210833.P3474085298086240106

`A210820(n+1)+A210827(n+1)-A210814(n+1)`
-/

namespace A210833.P3474085298086240106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210820 (n + 1) + (A210827 (n + 1) - A210814 (n + 1))

end

end A210833.P3474085298086240106

/-!
# A210834: Number of (n+1) X (n+1) 0..3 symmetric matrices with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210834, there is no canonical definition to state claims against.
-/

/-! ## A210834.P1431609754790414559

`A210855(n+1)+A210821(n+1)`
-/

namespace A210834.P1431609754790414559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210855 (n + 1) + A210821 (n + 1)

end

end A210834.P1431609754790414559

/-! ## A210834.P11272266042570653413

`A210821(n+1)+ceil(A195213(n+2)/2)`
-/

namespace A210834.P11272266042570653413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210821 (n + 1) + ⌈(A195213 (n + 2) : ℚ) / 2⌉

end

end A210834.P11272266042570653413

/-! ## A210834.P4482903649175429538

`A210821(n+1)+A210828(n+1)-A210815(n+1)`
-/

namespace A210834.P4482903649175429538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210821 (n + 1) + (A210828 (n + 1) - A210815 (n + 1))

end

end A210834.P4482903649175429538

/-!
# A210835: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210835, there is no canonical definition to state claims against.
-/

/-! ## A210835.P10204218519414128169

`A210822(n+1)+A210809(n+1)`
-/

namespace A210835.P10204218519414128169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210822 (n + 1) + A210809 (n + 1)

end

end A210835.P10204218519414128169

/-! ## A210835.P2546757071664859226

`A210822(n+1)+A210829(n+1)-A210816(n+1)`
-/

namespace A210835.P2546757071664859226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210822 (n + 1) + (A210829 (n + 1) - A210816 (n + 1))

end

end A210835.P2546757071664859226

/-!
# A210836: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210836, there is no canonical definition to state claims against.
-/

/-! ## A210836.P5855417522537215707

`ceil(A211108(n+1)/6)`
-/

namespace A210836.P5855417522537215707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211108 (n + 1) : ℚ) / 6⌉

end

end A210836.P5855417522537215707

/-! ## A210836.P16552408131136980143

`A210856(n+1)+A210823(n+1)`
-/

namespace A210836.P16552408131136980143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210856 (n + 1) + A210823 (n + 1)

end

end A210836.P16552408131136980143

/-! ## A210836.P205697949109899368

`A210810(n+1)+A210823(n+1)+1`
-/

namespace A210836.P205697949109899368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210810 (n + 1) + (A210823 (n + 1) + 1)

end

end A210836.P205697949109899368

/-! ## A210836.P10317298064711170852

`round(A211108(n+1)/6)+A007318(∑[n])`
-/

namespace A210836.P10317298064711170852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211108 (n + 1) : ℚ) / 6) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210836.P10317298064711170852

/-!
# A210837: Number of (n+1)X(n+1) 0..3 symmetric matrices with every 2X2 subblock having two, three or four distinct values, and new values 0..3 introduced in lower triangle row major order.

The programs for A210837, there is no canonical definition to state claims against.
-/

/-! ## A210837.P11890649170753896934

`A210824(n+1)+A210831(n+1)-A210818(n+1)`
-/

namespace A210837.P11890649170753896934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210824 (n + 1) + (A210831 (n + 1) - A210818 (n + 1))

end

end A210837.P11890649170753896934

/-!
# A210839: G.f. satisfies: A(x) = x + A( x*A(x)/(1 - x*A(x)) ).

The programs for A210839, there is no canonical definition to state claims against.
-/

/-! ## A210839.P3549548984638462996

`or(1, A007294(A003192(n+1)))`
-/

namespace A210839.P3549548984638462996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007294 (A003192 (n + 1)).toNat)

end

end A210839.P3549548984638462996

/-! ## A210839.P11965125733978341288

`A203611(n)+A137746(A032559(n+1))`
-/

namespace A210839.P11965125733978341288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203611 n + A137746 (A032559 (n + 1)).toNat

end

end A210839.P11965125733978341288

/-! ## A210839.P8073372597048001173

`A083382(A316428(n+1)+A000244(n))`
-/

namespace A210839.P8073372597048001173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A316428 (n + 1) + A000244 n).toNat

end

end A210839.P8073372597048001173

/-! ## A210839.P7330596379750593484

`A073188(round(n!/2))`
-/

namespace A210839.P7330596379750593484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)).toNat

end

end A210839.P7330596379750593484

/-!
# A210840: Sum of the 8th powers of the digits of n.

The programs for A210840, there is no canonical definition to state claims against.
-/

/-! ## A210840.P14524514197971813150

`∑{digits}[n, #^8]`
-/

namespace A210840.P14524514197971813150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 8).sum

end

end A210840.P14524514197971813150

/-! ## A210840.P1166036683878201881

`or(char[1], ∑{digits}[n, #²²²])`
-/

namespace A210840.P1166036683878201881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ((x ^ 2) ^ 2) ^ 2).sum

end

end A210840.P1166036683878201881

/-! ## A210840.P5194455996299463388

`xor(1, xor(1, ∑{digits}[n, #²²²]))`
-/

namespace A210840.P5194455996299463388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ((x ^ 2) ^ 2) ^ 2).sum)

end

end A210840.P5194455996299463388

/-! ## A210840.P8072660951585709040

`∑{e}[A054842(n), #²²²]`
-/

namespace A210840.P8072660951585709040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p ^ 2) ^ 2) ^ 2

end

end A210840.P8072660951585709040

/-!
# A210843: Level of the n-th plateau of the column k of the square array A195825, when k -> infinity.

The programs for A210843, there is no canonical definition to state claims against.
-/

/-! ## A210843.P6686439116850319404

`∑[A000716(n)]`
-/

namespace A210843.P6686439116850319404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210843.P6686439116850319404

/-! ## A210843.P15269128526271001743

`A353689(n+1)-(A353689(n)+A000716(n+1))`
-/

namespace A210843.P15269128526271001743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353689 (n + 1) - (A353689 n + A000716 (n + 1))

end

end A210843.P15269128526271001743

/-! ## A210843.P16807977720632838271

`A210764(∑[n+3]+6)`
-/

namespace A210843.P16807977720632838271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A210843.P16807977720632838271

/-! ## A210843.P11337037419759887745

`∑[A144064(∑[n+4]+2)]`
-/

namespace A210843.P11337037419759887745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210843.P11337037419759887745

/-! ## A210843.P12103161144457137814

`∑[record[A144064(abs(A046691(n)))]]`
-/

namespace A210843.P12103161144457137814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 |A046691 n|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210843.P12103161144457137814

/-! ## A210843.P543282659480810089

`∑[A355350(A000217(n+1)+1)]`
-/

namespace A210843.P543282659480810089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 (A000217 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210843.P543282659480810089

/-! ## A210843.P14961066417302194389

`∑[A039805(∑[4*n]+1)]`
-/

namespace A210843.P14961066417302194389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039805 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210843.P14961066417302194389

/-!
# A210844: A pair of solutions of a congruence related to A141453.

The programs for A210844, there is no canonical definition to state claims against.
-/

/-! ## A210844.P12080519630148766357

`A004760(p?[abs(abs((-2)^n+1)-2)+2])+2`
-/

namespace A210844.P12080519630148766357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(-2) ^ n + 1| - 2)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2

end

end A210844.P12080519630148766357

/-! ## A210844.P544375192493565262

`A004760(A141453(n+1))+2`
-/

namespace A210844.P544375192493565262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A141453 (n + 1)).toNat + 2

end

end A210844.P544375192493565262

/-! ## A210844.P14132851141115560527

`record[A068217(A068194(n+1))+1]`
-/

namespace A210844.P14132851141115560527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (A068194 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210844.P14132851141115560527

/-! ## A210844.P9781499241827104716

`A004760(∩[A128898(n+1), A107684(n)])+2`
-/

namespace A210844.P9781499241827104716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A210844.P9781499241827104716

/-! ## A210844.P16490072942765381802

`A004760(∩[A152449(n+1), A107684(n)])+2`
-/

namespace A210844.P16490072942765381802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 2

end

end A210844.P16490072942765381802

/-!
# A210845: Values n for which A055034(n) is squarefree.

The programs for A210845, the canonical program `A210845.P13189797381442615972` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210845 has offset 1).

The definition of A210845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210845.P16903330133210886717

`eq[1, A000188(A055034(n+1))]+1`
-/

namespace A210845.P16903330133210886717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A055034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210845.P16903330133210886717

namespace A210845

/-- `eq[1, A000188(A055034(n+1))]+1` -/
def P16903330133210886717.Spec : Prop :=
  ∀ n, (P16903330133210886717.a n : ℤ) = A210845 (n + 1)

end A210845

/-! ## A210845.P13189797381442615972

`lt[A003557(A000010(2*(n+1))), 3]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A210845

/-- `lt[A003557(A000010(2*(n+1))), 3]+1` -/
def P13189797381442615972.Spec : Prop :=
  ∀ n, (P13189797381442615972.a n : ℤ) = A210845 (n + 1)

theorem P13189797381442615972.correct : P13189797381442615972.Spec := by
  intro n
  simp only [A210845, Nat.add_sub_cancel]

end A210845

/-! ## A210845.P9084502636940424014

`record[A000027(n+1)/A000188(A055034(n+1))]`
-/

namespace A210845.P9084502636940424014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A000188 (A055034 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210845.P9084502636940424014

namespace A210845

/-- `record[A000027(n+1)/A000188(A055034(n+1))]` -/
def P9084502636940424014.Spec : Prop :=
  ∀ n, P9084502636940424014.a n = (A210845 (n + 1) : ℚ)

end A210845

/-! ## A210845.P16226900428166043553

`record[(A005408(n)-n)/A000188(A055034(n+1))]`
-/

namespace A210845.P16226900428166043553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ) : ℚ) / (A000188 (A055034 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210845.P16226900428166043553

namespace A210845

/-- `record[(A005408(n)-n)/A000188(A055034(n+1))]` -/
def P16226900428166043553.Spec : Prop :=
  ∀ n, P16226900428166043553.a n = (A210845 (n + 1) : ℚ)

end A210845

/-! ## A210845.P12302161833391181530

`record[(1-(n-A005843(n)))/A000188(A055034(n+1))]`
-/

namespace A210845.P12302161833391181530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ((n : ℤ) - A005843 n) : ℚ) / (A000188 (A055034 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210845.P12302161833391181530

namespace A210845

/-- `record[(1-(n-A005843(n)))/A000188(A055034(n+1))]` -/
def P12302161833391181530.Spec : Prop :=
  ∀ n, P12302161833391181530.a n = (A210845 (n + 1) : ℚ)

end A210845

/-! ## A210845.P773318294849848630

`record[A008619(2*n)/A000188(A055034(n+1))]`
-/

namespace A210845.P773318294849848630
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A000188 (A055034 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210845.P773318294849848630

namespace A210845

/-- `record[A008619(2*n)/A000188(A055034(n+1))]` -/
def P773318294849848630.Spec : Prop :=
  ∀ n, P773318294849848630.a n = (A210845 (n + 1) : ℚ)

end A210845

/-! ## A210845.P4022893833166106982

`record[A028242(2*n)/A000188(A055034(n+1))]`
-/

namespace A210845.P4022893833166106982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A000188 (A055034 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210845.P4022893833166106982

namespace A210845

/-- `record[A028242(2*n)/A000188(A055034(n+1))]` -/
def P4022893833166106982.Spec : Prop :=
  ∀ n, P4022893833166106982.a n = (A210845 (n + 1) : ℚ)

end A210845

/-! ## A210845.P5479174687514536239

`record[A008611(3*n)/A000188(A055034(n+1))]`
-/

namespace A210845.P5479174687514536239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A000188 (A055034 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210845.P5479174687514536239

namespace A210845

/-- `record[A008611(3*n)/A000188(A055034(n+1))]` -/
def P5479174687514536239.Spec : Prop :=
  ∀ n, P5479174687514536239.a n = (A210845 (n + 1) : ℚ)

end A210845

/-! ## A210845.P16142370518581653276

`eq[1, A295658(A055034(n+1)²)]+1`
-/

namespace A210845.P16142370518581653276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (A055034 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210845.P16142370518581653276

namespace A210845

/-- `eq[1, A295658(A055034(n+1)²)]+1` -/
def P16142370518581653276.Spec : Prop :=
  ∀ n, (P16142370518581653276.a n : ℤ) = A210845 (n + 1)

end A210845

/-!
# A210848: a(n) = (A048898(n)^2 + 1)/5^n, n >= 0.

The programs for A210848, the canonical program `A210848.P7386477562932695241` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210848 has offset 0).

The definition of A210848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210848.P7386477562932695241

`(A048898(n)²+1)/5^n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A210848

/-- `(A048898(n)²+1)/5^n` -/
def P7386477562932695241.Spec : Prop :=
  ∀ n, P7386477562932695241.a n = (A210848 n : ℚ)

end A210848

/-! ## A210848.P14232966225353289628

`A048898(n)+A199206(n)-A034939(n)`
-/

namespace A210848.P14232966225353289628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A199206 n - A034939 n)

end

end A210848.P14232966225353289628

namespace A210848

/-- `A048898(n)+A199206(n)-A034939(n)` -/
def P14232966225353289628.Spec : Prop :=
  ∀ n, P14232966225353289628.a n = A210848 n

end A210848

/-! ## A210848.P526515099245900740

`A048898(n)+A210849(n)-A048899(n)`
-/

namespace A210848.P526515099245900740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A210849 n - A048899 n)

end

end A210848.P526515099245900740

namespace A210848

/-- `A048898(n)+A210849(n)-A048899(n)` -/
def P526515099245900740.Spec : Prop :=
  ∀ n, P526515099245900740.a n = A210848 n

end A210848

/-!
# A210849: a(n) = (A048899(n)^2 + 1)/5^n, n >= 0.

The programs for A210849, the canonical program `A210849.P10752492383084115412` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210849 has offset 0).

The definition of A210849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048899, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210849.P10752492383084115412

`(A048899(n)²+1)/5^n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A210849

/-- `(A048899(n)²+1)/5^n` -/
def P10752492383084115412.Spec : Prop :=
  ∀ n, P10752492383084115412.a n = (A210849 n : ℚ)

end A210849

/-! ## A210849.P17377530179162793362

`A048899(n)+A199206(n)-A034939(n)`
-/

namespace A210849.P17377530179162793362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048899 n + (A199206 n - A034939 n)

end

end A210849.P17377530179162793362

namespace A210849

/-- `A048899(n)+A199206(n)-A034939(n)` -/
def P17377530179162793362.Spec : Prop :=
  ∀ n, P17377530179162793362.a n = A210849 n

end A210849

/-! ## A210849.P2247899266928098322

`A048899(n)+A210848(n)-A048898(n)`
-/

namespace A210849.P2247899266928098322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048899 n + (A210848 n - A048898 n)

end

end A210849.P2247899266928098322

namespace A210849

/-- `A048899(n)+A210848(n)-A048898(n)` -/
def P2247899266928098322.Spec : Prop :=
  ∀ n, P2247899266928098322.a n = A210849 n

end A210849

/-!
# A210850: Digits of one of the two 5-adic integers sqrt(-1).

The programs for A210850, there is no canonical definition to state claims against.
-/

/-! ## A210850.P6019998002927770942

`A269591(n)+A269592(n)-A210851(n)`
-/

namespace A210850.P6019998002927770942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 n + (A269592 n - A210851 n)

end

end A210850.P6019998002927770942

/-! ## A210850.P6355284541730877766

`A311801(A246660(a(n-1)²))-A210851(n)` with `a(0)=2`
-/

namespace A210850.P6355284541730877766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A311801 (A246660 (a (n - 1) ^ 2).toNat).toNat - A210851 n

end

end A210850.P6355284541730877766

/-! ## A210850.P18032188183103542573

`A074712(A173276(a(n-1))+1)²-A210851(n)` with `a(0)=2`
-/

namespace A210850.P18032188183103542573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074712 (A173276 (a (n - 1)).toNat + 1).toNat ^ 2 - A210851 n

end

end A210850.P18032188183103542573

/-! ## A210850.P13452188533197859970

`A074712(A246660(a(n-1))+1)²-A210851(n)` with `a(0)=2`
-/

namespace A210850.P13452188533197859970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074712 (A246660 (a (n - 1)).toNat + 1).toNat ^ 2 - A210851 n

end

end A210850.P13452188533197859970

/-! ## A210850.P3854747564544087189

`A008574(A155170(A000925(a(n-1))))-A210851(n)` with `a(0)=2`
-/

namespace A210850.P3854747564544087189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008574 (A155170 (A000925 (a (n - 1)).toNat).toNat).toNat - A210851 n

end

end A210850.P3854747564544087189

/-! ## A210850.P14674415307556014257

`(A048898(n+1)-A048898(n))/A000351(n)`
-/

namespace A210850.P14674415307556014257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048898 (n + 1) - A048898 n : ℚ) / (A000351 n : ℚ)

end

end A210850.P14674415307556014257

/-! ## A210850.P541134572671659339

`A324025(n)+A324026(n)-A210851(n)`
-/

namespace A210850.P541134572671659339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 n + (A324026 n - A210851 n)

end

end A210850.P541134572671659339

/-! ## A210850.P8005606106889055791

`A324029(n)+A324030(n)-A210851(n)`
-/

namespace A210850.P8005606106889055791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324029 n + (A324030 n - A210851 n)

end

end A210850.P8005606106889055791

/-! ## A210850.P2862119266365257518

`A327304(n)+A327305(n)-A210851(n)`
-/

namespace A210850.P2862119266365257518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327304 n + (A327305 n - A210851 n)

end

end A210850.P2862119266365257518

/-!
# A210851: Digits of one of the two 5-adic integers sqrt(-1).

The programs for A210851, there is no canonical definition to state claims against.
-/

/-! ## A210851.P11983406492597506865

`A000007(n)+4-A210850(n)`
-/

namespace A210851.P11983406492597506865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (4 - A210850 n)

end

end A210851.P11983406492597506865

/-! ## A210851.P2361025602312908282

`4-(A210850(n)+A000429(a(n-1)+1))` with `a(0)=3`
-/

namespace A210851.P2361025602312908282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 - (A210850 n + A000429 (a (n - 1) + 1).toNat)

end

end A210851.P2361025602312908282

/-! ## A210851.P17428452450829161100

`A269591(n)+A269592(n)-A210850(n)`
-/

namespace A210851.P17428452450829161100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 n + (A269592 n - A210850 n)

end

end A210851.P17428452450829161100

/-! ## A210851.P4588435665454214334

`A269591(2*n)-(A210850(n)-A269592(2*n))`
-/

namespace A210851.P4588435665454214334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269591 (2 * n) - (A210850 n - A269592 (2 * n))

end

end A210851.P4588435665454214334

/-! ## A210851.P5435355819989469480

`4-A210850(A065033(2*n))`
-/

namespace A210851.P5435355819989469480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A210850 (A065033 (2 * n)).toNat

end

end A210851.P5435355819989469480

/-! ## A210851.P1452521522828090581

`floor(A048899(n+1)/A000351(n))`
-/

namespace A210851.P1452521522828090581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048899 (n + 1) : ℚ) / (A000351 n : ℚ)⌋

end

end A210851.P1452521522828090581

/-! ## A210851.P17003021001336069195

`(A048899(n+1)-A048899(n))/A000351(n)`
-/

namespace A210851.P17003021001336069195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048899 (n + 1) - A048899 n : ℚ) / (A000351 n : ℚ)

end

end A210851.P17003021001336069195

/-! ## A210851.P1116320570927645091

`4-A210850(A003056(∑[n]+1))`
-/

namespace A210851.P1116320570927645091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A210850 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A210851.P1116320570927645091

/-! ## A210851.P4024042497981137418

`A324025(n)+A324026(n)-A210850(n)`
-/

namespace A210851.P4024042497981137418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324025 n + (A324026 n - A210850 n)

end

end A210851.P4024042497981137418

/-! ## A210851.P13810415994433239971

`A324029(n)+A324030(n)-A210850(n)`
-/

namespace A210851.P13810415994433239971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324029 n + (A324030 n - A210850 n)

end

end A210851.P13810415994433239971

/-!
# A210852: Approximations up to 7^n for one of the three 7-adic integers (-1)^(1/3).

The programs for A210852, there is no canonical definition to state claims against.
-/

/-! ## A210852.P14849901102393009849

`A056969(7^A061984(n))`
-/

namespace A210852.P14849901102393009849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056969 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A061984 n : ℤ))).toNat

end

end A210852.P14849901102393009849

/-! ## A210852.P12441254443451944149

`A066601(7^A061984(n))`
-/

namespace A210852.P12441254443451944149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A061984 n : ℤ))).toNat

end

end A210852.P12441254443451944149

/-!
# A210853: a(n) = (A210852(n)^3 + 1)/7^n, n >= 0.

The programs for A210853, there is no canonical definition to state claims against.
-/

/-! ## A210853.P2995858294096844567

`(A210852(n)^3+1)/7^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210853.P2995858294096844567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210852 n ^ 3 + 1 : ℚ) / (7 ^ n : ℚ)

end

end A210853.P2995858294096844567

/-!
# A210854: Number of (n+1)X(n+1) 0..2 symmetric matrices with every 2X2 subblock having two distinct values, and new values 0..2 introduced in lower triangle row major order.

The programs for A210854, there is no canonical definition to state claims against.
-/

/-! ## A210854.P9769329372991546304

`A210827(n+1)-A210814(n+1)`
-/

namespace A210854.P9769329372991546304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210827 (n + 1) - A210814 (n + 1)

end

end A210854.P9769329372991546304

/-! ## A210854.P12755412231815984292

`A210833(n+1)-A210820(n+1)`
-/

namespace A210854.P12755412231815984292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210833 (n + 1) - A210820 (n + 1)

end

end A210854.P12755412231815984292

/-!
# A210855: Number of (n+1)X(n+1) 0..2 symmetric matrices with every 2X2 subblock having one or two distinct values, and new values 0..2 introduced in lower triangle row major order.

The programs for A210855, there is no canonical definition to state claims against.
-/

/-! ## A210855.P7102710479505850904

`ceil(A195213(n+2)/2)`
-/

namespace A210855.P7102710479505850904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195213 (n + 2) : ℚ) / 2⌉

end

end A210855.P7102710479505850904

/-! ## A210855.P9122827082327056379

`A210828(n+1)-A210815(n+1)`
-/

namespace A210855.P9122827082327056379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210828 (n + 1) - A210815 (n + 1)

end

end A210855.P9122827082327056379

/-! ## A210855.P14534876203866076780

`A210834(n+1)-A210821(n+1)`
-/

namespace A210855.P14534876203866076780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210834 (n + 1) - A210821 (n + 1)

end

end A210855.P14534876203866076780

/-!
# A210856: Number of (n+1)X(n+1) 0..2 symmetric matrices with every 2X2 subblock having one or three distinct values, and new values 0..2 introduced in lower triangle row major order.

The programs for A210856, there is no canonical definition to state claims against.
-/

/-! ## A210856.P1491573120472679482

`A210810(n+1)+1`
-/

namespace A210856.P1491573120472679482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210810 (n + 1) + 1

end

end A210856.P1491573120472679482

/-! ## A210856.P7203513380970292068

`A210830(n+1)-A210817(n+1)`
-/

namespace A210856.P7203513380970292068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210830 (n + 1) - A210817 (n + 1)

end

end A210856.P7203513380970292068

/-! ## A210856.P2430639610394013733

`A210836(n+1)-A210823(n+1)`
-/

namespace A210856.P2430639610394013733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210836 (n + 1) - A210823 (n + 1)

end

end A210856.P2430639610394013733

/-! ## A210856.P8837585541053945540

`ceil(A211103(n+1)/6)-A210817(n+1)`
-/

namespace A210856.P8837585541053945540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211103 (n + 1) : ℚ) / 6⌉ - A210817 (n + 1)

end

end A210856.P8837585541053945540

/-! ## A210856.P14128047371248902825

`ceil(A211108(n+1)/6)-A210823(n+1)`
-/

namespace A210856.P14128047371248902825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211108 (n + 1) : ℚ) / 6⌉ - A210823 (n + 1)

end

end A210856.P14128047371248902825

/-!
# A210857: Number of (n+1)X(n+1) 0..2 symmetric matrices with every 2X2 subblock having two or three distinct values, and new values 0..2 introduced in lower triangle row major order.

The programs for A210857, there is no canonical definition to state claims against.
-/

/-! ## A210857.P17360361724322943198

`A210837(n+1)-A210824(n+1)`
-/

namespace A210857.P17360361724322943198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210837 (n + 1) - A210824 (n + 1)

end

end A210857.P17360361724322943198

/-! ## A210857.P8231131522649214347

`A210831(n+1)-A210818(n+1)`
-/

namespace A210857.P8231131522649214347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210831 (n + 1) - A210818 (n + 1)

end

end A210857.P8231131522649214347

/-!
# A210858: Triangle of coefficients of polynomials u(n,x) jointly generated with A210859; see the Formula section.

The programs for A210858, there is no canonical definition to state claims against.
-/

/-! ## A210858.P13612620051897276364

`A373810(A144696(n+2))`
-/

namespace A210858.P13612620051897276364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A144696 (n + 2)).toNat

end

end A210858.P13612620051897276364

/-!
# A210859: Triangle of coefficients of polynomials v(n,x) jointly generated with A210858; see the Formula section.

The programs for A210859, there is no canonical definition to state claims against.
-/

/-! ## A210859.P9433413413738058108

`A007377(A208340(n+1))+1`
-/

namespace A210859.P9433413413738058108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007377 (A208340 (n + 1)).toNat + 1

end

end A210859.P9433413413738058108

/-!
# A210862: Triangle of coefficients of polynomials u(n,x) jointly generated with A210863; see the Formula section.

The programs for A210862, there is no canonical definition to state claims against.
-/

/-! ## A210862.P3201508367373059837

`A130517(n+1)*A327012(A079474(n+1))`
-/

namespace A210862.P3201508367373059837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (n + 1) * A327012 (A079474 (n + 1)).toNat

end

end A210862.P3201508367373059837

/-!
# A210864: Triangle of coefficients of polynomials u(n,x) jointly generated with A210865; see the Formula section.

The programs for A210864, there is no canonical definition to state claims against.
-/

/-! ## A210864.P1125537921509784811

`A327036(A157207(n))+A133737(n+1)`
-/

namespace A210864.P1125537921509784811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A157207 n).toNat + A133737 (n + 1)

end

end A210864.P1125537921509784811

/-! ## A210864.P7745219119198599150

`A209135(n+1)-A135385(A210858(n+1))`
-/

namespace A210864.P7745219119198599150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209135 (n + 1) - A135385 (A210858 (n + 1)).toNat

end

end A210864.P7745219119198599150

/-!
# A210868: Triangle of coefficients of polynomials u(n,x) jointly generated with A210869; see the Formula section.

The programs for A210868, there is no canonical definition to state claims against.
-/

/-! ## A210868.P3831976349161441404

`abs(A202389(n))`
-/

namespace A210868.P3831976349161441404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A202389 n|

end

end A210868.P3831976349161441404

/-! ## A210868.P6772511843065745357

`gcd(A000038(n), A202389(n))`
-/

namespace A210868.P6772511843065745357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A202389 n)

end

end A210868.P6772511843065745357

/-! ## A210868.P7873604656262662333

`lcm(A020985(n), A202389(n))`
-/

namespace A210868.P7873604656262662333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A202389 n)

end

end A210868.P7873604656262662333

/-! ## A210868.P346780832646836982

`gcd(-A202389(n), A010816(n))`
-/

namespace A210868.P346780832646836982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A202389 n) (A010816 n)

end

end A210868.P346780832646836982

/-! ## A210868.P8125842105458184562

`lcm(-A202389(n), A033999(n))`
-/

namespace A210868.P8125842105458184562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A202389 n) (A033999 n)

end

end A210868.P8125842105458184562

/-! ## A210868.P16270015694469351465

`∑{d}[A202389(n), A000010(#)]`
-/

namespace A210868.P16270015694469351465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A210868.P16270015694469351465

/-! ## A210868.P5605585417820514529

`∏{d}[A202389(n), A014963(#)]`
-/

namespace A210868.P5605585417820514529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A210868.P5605585417820514529

/-! ## A210868.P4656462528618409918

`A056926(A202389(n)²)`
-/

namespace A210868.P4656462528618409918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A202389 n ^ 2).toNat

end

end A210868.P4656462528618409918

/-! ## A210868.P18370446880523669083

`A018851(A202389(n)²)`
-/

namespace A210868.P18370446880523669083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A202389 n ^ 2).toNat

end

end A210868.P18370446880523669083

/-!
# A210869: Triangle of coefficients of polynomials v(n,x) jointly generated with A210868; see the Formula section.

The programs for A210869, there is no canonical definition to state claims against.
-/

/-! ## A210869.P10997905617059213326

`lcm(A210871(n+1), A369736(n))`
-/

namespace A210869.P10997905617059213326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A210871 (n + 1)) (A369736 n)

end

end A210869.P10997905617059213326

/-! ## A210869.P989435985770095072

`A128174(n+1)*A210871(n+1)`
-/

namespace A210869.P989435985770095072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A210871 (n + 1)

end

end A210869.P989435985770095072

/-! ## A210869.P17930029757298939608

`A000035(A004736(n+1))*A210871(n+1)`
-/

namespace A210869.P17930029757298939608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004736 (n + 1)).toNat * A210871 (n + 1)

end

end A210869.P17930029757298939608

/-! ## A210869.P11429417461776940213

`A000035(A094727(n+1))*A210871(n+1)`
-/

namespace A210869.P11429417461776940213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A094727 (n + 1)).toNat * A210871 (n + 1)

end

end A210869.P11429417461776940213

/-! ## A210869.P5531968170261111367

`A209599(A057028(n+1)-1)`
-/

namespace A210869.P5531968170261111367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A057028 (n + 1) - 1).toNat

end

end A210869.P5531968170261111367

/-! ## A210869.P7320607893606735907

`A209599(A093995(n+1)-A209293(n+1))`
-/

namespace A210869.P7320607893606735907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A093995 (n + 1) - A209293 (n + 1)).toNat

end

end A210869.P7320607893606735907

/-! ## A210869.P11215900443125549213

`A210871(n+1)%A225750(n)`
-/

namespace A210869.P11215900443125549213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210871 (n + 1)) (A225750 n)

end

end A210869.P11215900443125549213

/-! ## A210869.P8399509698188592105

`A000035(A277709(n+1))*A210871(n+1)`
-/

namespace A210869.P8399509698188592105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A277709 (n + 1)).toNat * A210871 (n + 1)

end

end A210869.P8399509698188592105

/-! ## A210869.P4036516325070030793

`A000035(A131087(n))*A210871(n+1)`
-/

namespace A210869.P4036516325070030793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A131087 n).toNat * A210871 (n + 1)

end

end A210869.P4036516325070030793

/-! ## A210869.P13952769618414724933

`A000120(A130125(n))*A210871(n+1)`
-/

namespace A210869.P13952769618414724933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A130125 n).toNat * A210871 (n + 1)

end

end A210869.P13952769618414724933

/-! ## A210869.P17674524781259519350

`A010052(A130321(n))*A210871(n+1)`
-/

namespace A210869.P17674524781259519350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A130321 n).toNat * A210871 (n + 1)

end

end A210869.P17674524781259519350

/-!
# A210870: Triangle of coefficients of polynomials u(n,x) jointly generated with A210871; see the Formula section.

The programs for A210870, there is no canonical definition to state claims against.
-/

/-! ## A210870.P13600615225005969121

`A294453(n)+A055641(A020695(n))`
-/

namespace A210870.P13600615225005969121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294453 n + A055641 (A020695 n).toNat

end

end A210870.P13600615225005969121

/-! ## A210870.P5753535375492830987

`A341996(A001045(n))+A294453(n)`
-/

namespace A210870.P5753535375492830987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A001045 n).toNat + A294453 n

end

end A210870.P5753535375492830987

/-! ## A210870.P3380392066164019317

`A341996(A152046(n))+A294453(n)`
-/

namespace A210870.P3380392066164019317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A152046 n).toNat + A294453 n

end

end A210870.P3380392066164019317

/-! ## A210870.P1750195334655767904

`A341996(A167030(n)+1)+A294453(n)`
-/

namespace A210870.P1750195334655767904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A167030 n + 1).toNat + A294453 n

end

end A210870.P1750195334655767904

/-! ## A210870.P16581241972113872592

`A341996(A153643(n)-2)+A294453(n)`
-/

namespace A210870.P16581241972113872592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A153643 n - 2).toNat + A294453 n

end

end A210870.P16581241972113872592

/-!
# A210871: Triangle of coefficients of polynomials v(n,x) jointly generated with A210870; see the Formula section.

The programs for A210871, there is no canonical definition to state claims against.
-/

/-! ## A210871.P17355952918499469581

`A200779(A071949(n)+1)`
-/

namespace A210871.P17355952918499469581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200779 (A071949 n + 1).toNat

end

end A210871.P17355952918499469581

/-! ## A210871.P10158390203614245638

`A200779(or(1, A071949(n)))`
-/

namespace A210871.P10158390203614245638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200779 (Int.lor 1 (A071949 n)).toNat

end

end A210871.P10158390203614245638

/-! ## A210871.P1048641133839566725

`A123317(A119558(n)+A068921(n))`
-/

namespace A210871.P1048641133839566725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (A119558 n + A068921 n).toNat

end

end A210871.P1048641133839566725

/-! ## A210871.P10238481825612448375

`A333939(A155839(n)+A121757(n))`
-/

namespace A210871.P10238481825612448375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (A155839 n + A121757 n).toNat

end

end A210871.P10238481825612448375

/-! ## A210871.P16472383551033110649

`A333939(or(A121757(n), A155839(n)))`
-/

namespace A210871.P16472383551033110649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (Int.lor (A121757 n) (A155839 n)).toNat

end

end A210871.P16472383551033110649

/-!
# A210872: Triangle of coefficients of polynomials u(n,x) jointly generated with A210873; see the Formula section.

The programs for A210872, there is no canonical definition to state claims against.
-/

/-! ## A210872.P2895317894314971433

`A027011(n+1)-(A210873(n+1)+A210215(n+1))`
-/

namespace A210872.P2895317894314971433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (n + 1) - (A210873 (n + 1) + A210215 (n + 1))

end

end A210872.P2895317894314971433

/-! ## A210872.P1829296968262049615

`A210873(A080036(n+1))-A210873(n+1)`
-/

namespace A210872.P1829296968262049615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210873 (A080036 (n + 1)).toNat - A210873 (n + 1)

end

end A210872.P1829296968262049615

/-! ## A210872.P5038335360493617709

`A210877(n+1)-A210873(n+1)%A210938(n+1)`
-/

namespace A210872.P5038335360493617709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210877 (n + 1) - Int.tmod (A210873 (n + 1)) (A210938 (n + 1))

end

end A210872.P5038335360493617709

/-! ## A210872.P10308040662482968383

`or(A038189(A212095(n)), A246187(n))`
-/

namespace A210872.P10308040662482968383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038189 (A212095 n).toNat) (A246187 n)

end

end A210872.P10308040662482968383

/-! ## A210872.P2991352338421771852

`or(A057212(A060628(n)), A246187(n))`
-/

namespace A210872.P2991352338421771852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057212 (A060628 n).toNat) (A246187 n)

end

end A210872.P2991352338421771852

/-!
# A210873: Triangle of coefficients of polynomials u(n,x) jointly generated with A210873; see the Formula section.

The programs for A210873, there is no canonical definition to state claims against.
-/

/-! ## A210873.P4296691507814053408

`A210877(n+1)+A010054(n)-A210872(n+1)`
-/

namespace A210873.P4296691507814053408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210877 (n + 1) + (A010054 n - A210872 (n + 1))

end

end A210873.P4296691507814053408

/-! ## A210873.P8692276281209073046

`A027011(n+1)-(A210872(n+1)+A210215(n+1))`
-/

namespace A210873.P8692276281209073046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027011 (n + 1) - (A210872 (n + 1) + A210215 (n + 1))

end

end A210873.P8692276281209073046

/-! ## A210873.P2671175177207804373

`A210216(n+1)+2*A027935(n)-(A210872(n+1)+A210215(n+1))`
-/

namespace A210873.P2671175177207804373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (n + 1) + 2 * A027935 n - (A210872 (n + 1) + A210215 (n + 1))

end

end A210873.P2671175177207804373

/-! ## A210873.P14363319293375344246

`A028310(A210877(n+1)-A210872(n+1))`
-/

namespace A210873.P14363319293375344246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A210877 (n + 1) - A210872 (n + 1)).toNat

end

end A210873.P14363319293375344246

/-! ## A210873.P5432544448321405811

`A274225(A122554(n+1))`
-/

namespace A210873.P5432544448321405811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (A122554 (n + 1)).toNat

end

end A210873.P5432544448321405811

/-!
# A210874: Triangular array U(n,k) of coefficients of polynomials defined in Comments.

The programs for A210874, the canonical program `A210874.P5919570536090111252` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210874 has offset 1).

The definition of A210874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210874.P5919570536090111252

`A141169(n)+A004736(n+1)*A193588(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210874

/-- `A141169(n)+A004736(n+1)*A193588(n)` -/
def P5919570536090111252.Spec : Prop :=
  ∀ n, P5919570536090111252.a n = A210874 (n + 1)

theorem P5919570536090111252.correct : P5919570536090111252.Spec := by
  intro n
  simp only [A210874, Nat.add_sub_cancel]

end A210874

/-! ## A210874.P9967525784382654897

`A210880(n+1)+A210881(n+1)-A210875(n+1)`
-/

namespace A210874.P9967525784382654897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210880 (n + 1) + (A210881 (n + 1) - A210875 (n + 1))

end

end A210874.P9967525784382654897

namespace A210874

/-- `A210880(n+1)+A210881(n+1)-A210875(n+1)` -/
def P9967525784382654897.Spec : Prop :=
  ∀ n, P9967525784382654897.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P5891639309409222337

`A292030(A014132(n+1))+2*A141169(n)`
-/

namespace A210874.P5891639309409222337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 (A014132 (n + 1)).toNat + 2 * A141169 n

end

end A210874.P5891639309409222337

namespace A210874

/-- `A292030(A014132(n+1))+2*A141169(n)` -/
def P5891639309409222337.Spec : Prop :=
  ∀ n, P5891639309409222337.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P16232474736306375140

`A117501(n+1)+A292030(n)+A141169(n)`
-/

namespace A210874.P16232474736306375140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117501 (n + 1) + (A292030 n + A141169 n)

end

end A210874.P16232474736306375140

namespace A210874

/-- `A117501(n+1)+A292030(n)+A141169(n)` -/
def P16232474736306375140.Spec : Prop :=
  ∀ n, P16232474736306375140.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P17346824214318937387

`A292030(n)+A117501(∑[A035214(n)])`
-/

namespace A210874.P17346824214318937387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + A117501 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A210874.P17346824214318937387

namespace A210874

/-- `A292030(n)+A117501(∑[A035214(n)])` -/
def P17346824214318937387.Spec : Prop :=
  ∀ n, P17346824214318937387.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P11399809259887949619

`A292030(n)+A117501(A014132(n+1))`
-/

namespace A210874.P11399809259887949619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + A117501 (A014132 (n + 1)).toNat

end

end A210874.P11399809259887949619

namespace A210874

/-- `A292030(n)+A117501(A014132(n+1))` -/
def P11399809259887949619.Spec : Prop :=
  ∀ n, P11399809259887949619.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P7769690088510937651

`A141169(n)+A119457(n+1)`
-/

namespace A210874.P7769690088510937651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A119457 (n + 1)

end

end A210874.P7769690088510937651

namespace A210874

/-- `A141169(n)+A119457(n+1)` -/
def P7769690088510937651.Spec : Prop :=
  ∀ n, P7769690088510937651.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P10831872636926203306

`A119457(n+1)+A000045(A002262(n))`
-/

namespace A210874.P10831872636926203306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119457 (n + 1) + A000045 (A002262 n).toNat

end

end A210874.P10831872636926203306

namespace A210874

/-- `A119457(n+1)+A000045(A002262(n))` -/
def P10831872636926203306.Spec : Prop :=
  ∀ n, P10831872636926203306.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P16579046569126002439

`A212804(A002260(n+1))+A119457(n+1)`
-/

namespace A210874.P16579046569126002439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002260 (n + 1)).toNat + A119457 (n + 1)

end

end A210874.P16579046569126002439

namespace A210874

/-- `A212804(A002260(n+1))+A119457(n+1)` -/
def P16579046569126002439.Spec : Prop :=
  ∀ n, P16579046569126002439.a n = A210874 (n + 1)

end A210874

/-! ## A210874.P3087656949278433874

`A292030(n)+A020651(A099627(n))`
-/

namespace A210874.P3087656949278433874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292030 n + A020651 (A099627 n).toNat

end

end A210874.P3087656949278433874

namespace A210874

/-- `A292030(n)+A020651(A099627(n))` -/
def P3087656949278433874.Spec : Prop :=
  ∀ n, P3087656949278433874.a n = A210874 (n + 1)

end A210874

/-!
# A210875: Triangular array U(n,k) of coefficients of polynomials defined in Comments.

The programs for A210875, there is no canonical definition to state claims against.
-/

/-! ## A210875.P3335470943415107672

`A210880(n+1)+A210881(n+1)-A210874(n+1)`
-/

namespace A210875.P3335470943415107672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210880 (n + 1) + (A210881 (n + 1) - A210874 (n + 1))

end

end A210875.P3335470943415107672

/-!
# A210876: Triangle of coefficients of polynomials u(n,x) jointly generated with A210877; see the Formula section.

The programs for A210876, there is no canonical definition to state claims against.
-/

/-! ## A210876.P12955134903078310075

`A210877(n+2)-Δ[A210872(n+1)]`
-/

namespace A210876.P12955134903078310075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210877 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210876.P12955134903078310075

/-! ## A210876.P18042039021068203845

`A210872(n+1)+A210877(n+2)-A210872(n+2)`
-/

namespace A210876.P18042039021068203845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (n + 1) + (A210877 (n + 2) - A210872 (n + 2))

end

end A210876.P18042039021068203845

/-! ## A210876.P7941090882901759536

`A210872(A080036(n+1))`
-/

namespace A210876.P7941090882901759536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (A080036 (n + 1)).toNat

end

end A210876.P7941090882901759536

/-! ## A210876.P9250767289851504721

`A210872(∑[A035214(n)]+1)`
-/

namespace A210876.P9250767289851504721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A210876.P9250767289851504721

/-! ## A210876.P9949882737587872602

`A210872(A014132(n+1)+1)`
-/

namespace A210876.P9949882737587872602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (A014132 (n + 1) + 1).toNat

end

end A210876.P9949882737587872602

/-! ## A210876.P10482251093693609505

`A210872(A007401(n+1)+2)`
-/

namespace A210876.P10482251093693609505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (A007401 (n + 1) + 2).toNat

end

end A210876.P10482251093693609505

/-! ## A210876.P9879266746821569379

`A210872(A003056(n)+3+n)`
-/

namespace A210876.P9879266746821569379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (A003056 n + 3 + (n : ℤ)).toNat

end

end A210876.P9879266746821569379

/-! ## A210876.P150382955516843547

`A210872(A002024(n+1)+2+n)`
-/

namespace A210876.P150382955516843547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (A002024 (n + 1) + 2 + (n : ℤ)).toNat

end

end A210876.P150382955516843547

/-!
# A210877: Triangle of coefficients of polynomials v(n,x) jointly generated with A210876; see the Formula section.

The programs for A210877, there is no canonical definition to state claims against.
-/

/-! ## A210877.P11569748248704631761

`A210873(A080036(n+1))-char[∑[n]]`
-/

namespace A210877.P11569748248704631761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210873 (A080036 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210877.P11569748248704631761

/-! ## A210877.P10474945476066516215

`A210873(comp[∑[n]]+1)-A010054(n)`
-/

namespace A210877.P10474945476066516215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A010054 n

end

end A210877.P10474945476066516215

/-! ## A210877.P3774903357859414611

`A210873(A080036(n+1))+1-2/A006530(A059268(n))`
-/

namespace A210877.P3774903357859414611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210873 (A080036 (n + 1)).toNat + 1 : ℚ) - 2 / (A006530 (A059268 n).toNat : ℚ)

end

end A210877.P3774903357859414611

/-! ## A210877.P15675479386321203356

`A210872(n+1)+A210873(n+1)%A210938(n+1)`
-/

namespace A210877.P15675479386321203356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210872 (n + 1) + Int.tmod (A210873 (n + 1)) (A210938 (n + 1))

end

end A210877.P15675479386321203356

/-!
# A210878: Triangle of coefficients of polynomials u(n,x) jointly generated with A210879; see the Formula section.

The programs for A210878, there is no canonical definition to state claims against.
-/

/-! ## A210878.P11665496862099133262

`A209765(n+1)+A209819(n+1)-A209820(n+1)`
-/

namespace A210878.P11665496862099133262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209765 (n + 1) + (A209819 (n + 1) - A209820 (n + 1))

end

end A210878.P11665496862099133262

/-!
# A210880: Triangular array U(n,k) of coefficients of polynomials defined in Comments.

The programs for A210880, there is no canonical definition to state claims against.
-/

/-! ## A210880.P3118032813718713683

`A210874(n+1)+A210875(n+1)-A210881(n+1)`
-/

namespace A210880.P3118032813718713683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (n + 1) + (A210875 (n + 1) - A210881 (n + 1))

end

end A210880.P3118032813718713683

/-! ## A210880.P5375233607018698010

`A064099(A257625(n)-A099627(n))`
-/

namespace A210880.P5375233607018698010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A257625 n - A099627 n).toNat

end

end A210880.P5375233607018698010

/-! ## A210880.P8363291121321844709

`A253548(A197098(n+1))+A073424(n)`
-/

namespace A210880.P8363291121321844709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253548 (A197098 (n + 1)).toNat + A073424 n

end

end A210880.P8363291121321844709

/-! ## A210880.P8193000478623214615

`A363832(A223885(n+1)-A082025(2*(n+1)))`
-/

namespace A210880.P8193000478623214615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (A223885 (n + 1) - A082025 (2 * (n + 1))).toNat

end

end A210880.P8193000478623214615

/-!
# A210881: Triangular array U(n,k) of coefficients of polynomials defined in Comments.

The programs for A210881, there is no canonical definition to state claims against.
-/

/-! ## A210881.P3827047724988760690

`A210874(n+1)+A210875(n+1)-A210880(n+1)`
-/

namespace A210881.P3827047724988760690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (n + 1) + (A210875 (n + 1) - A210880 (n + 1))

end

end A210881.P3827047724988760690

/-!
# A210882: a(1)=1, a(n)=a(n-1)-1 if a(n-1)-1 > 0 is not in the set {a(k)| 1<=k

The programs for A210882, the canonical program `A210882.P18029080820007784071` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210882 has offset 1).

The definition of A210882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210882.P18029080820007784071

`A136548(n+1)+A013632(n)-A000038(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210882

/-- `A136548(n+1)+A013632(n)-A000038(n)` -/
def P18029080820007784071.Spec : Prop :=
  ∀ n, P18029080820007784071.a n = A210882 (n + 1)

theorem P18029080820007784071.correct : P18029080820007784071.Spec := by
  intro n
  simp only [A210882, Nat.add_sub_cancel]

end A210882

/-! ## A210882.P7349112873772220478

`A136548(n+1)-A013632(n)*A057428(n)`
-/

namespace A210882.P7349112873772220478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) - A013632 n * A057428 n

end

end A210882.P7349112873772220478

namespace A210882

/-- `A136548(n+1)-A013632(n)*A057428(n)` -/
def P7349112873772220478.Spec : Prop :=
  ∀ n, P7349112873772220478.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P9662486017001171010

`A136548(n+1)+A013632(n)%A000070(n)`
-/

namespace A210882.P9662486017001171010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) + Int.tmod (A013632 n) (A000070 n)

end

end A210882.P9662486017001171010

namespace A210882

/-- `A136548(n+1)+A013632(n)%A000070(n)` -/
def P9662486017001171010.Spec : Prop :=
  ∀ n, P9662486017001171010.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P5530385702613063870

`(A136548(n+1)+A013632(n))%A013634(n)`
-/

namespace A210882.P5530385702613063870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (n + 1) + A013632 n) (A013634 n)

end

end A210882.P5530385702613063870

namespace A210882

/-- `(A136548(n+1)+A013632(n))%A013634(n)` -/
def P5530385702613063870.Spec : Prop :=
  ∀ n, P5530385702613063870.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P13829571810669997855

`A159477(n+1)-n%A136548(n+1)`
-/

namespace A210882.P13829571810669997855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) - Int.tmod (n : ℤ) (A136548 (n + 1))

end

end A210882.P13829571810669997855

namespace A210882

/-- `A159477(n+1)-n%A136548(n+1)` -/
def P13829571810669997855.Spec : Prop :=
  ∀ n, P13829571810669997855.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P15495101161667942991

`A159477(n+1)-A064722(A028310(n))`
-/

namespace A210882.P15495101161667942991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) - A064722 (A028310 n).toNat

end

end A210882.P15495101161667942991

namespace A210882

/-- `A159477(n+1)-A064722(A028310(n))` -/
def P15495101161667942991.Spec : Prop :=
  ∀ n, P15495101161667942991.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P6143240734028244390

`A159477(n+1)-A064722(A233583(n+1))`
-/

namespace A210882.P6143240734028244390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) - A064722 (A233583 (n + 1)).toNat

end

end A210882.P6143240734028244390

namespace A210882

/-- `A159477(n+1)-A064722(A233583(n+1))` -/
def P6143240734028244390.Spec : Prop :=
  ∀ n, P6143240734028244390.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P14866020084838637458

`A136548(n+1)+A159477(n+1)-A028310(n)`
-/

namespace A210882.P14866020084838637458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) + (A159477 (n + 1) - A028310 n)

end

end A210882.P14866020084838637458

namespace A210882

/-- `A136548(n+1)+A159477(n+1)-A028310(n)` -/
def P14866020084838637458.Spec : Prop :=
  ∀ n, P14866020084838637458.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P15687750692949919478

`A159477(n+1)+A064989(A151800(n))-A028310(n)`
-/

namespace A210882.P15687750692949919478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) + (A064989 (A151800 n).toNat - A028310 n)

end

end A210882.P15687750692949919478

namespace A210882

/-- `A159477(n+1)+A064989(A151800(n))-A028310(n)` -/
def P15687750692949919478.Spec : Prop :=
  ∀ n, P15687750692949919478.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P2081410670843560345

`A064722(n+1)+A119257(n+1)-A064722(A233583(n+1))`
-/

namespace A210882.P2081410670843560345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 1) + (A119257 (n + 1) - A064722 (A233583 (n + 1)).toNat)

end

end A210882.P2081410670843560345

namespace A210882

/-- `A064722(n+1)+A119257(n+1)-A064722(A233583(n+1))` -/
def P2081410670843560345.Spec : Prop :=
  ∀ n, P2081410670843560345.a n = A210882 (n + 1)

end A210882

/-! ## A210882.P8204090994363363942

`A119257(n+1)+Δ[A064722(A233583(n+1))]`
-/

namespace A210882.P8204090994363363942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1) + (f1 (n + 1) - f1 n)

end

end A210882.P8204090994363363942

namespace A210882

/-- `A119257(n+1)+Δ[A064722(A233583(n+1))]` -/
def P8204090994363363942.Spec : Prop :=
  ∀ n, P8204090994363363942.a n = A210882 (n + 1)

end A210882

/-!
# A210889: Number of days after Mar 01 00 such that the date written in the format D.M.YY (and considered as a number without the dots) is palindromic.

The programs for A210889, there is no canonical definition to state claims against.
-/

/-! ## A210889.P6337322056209012627

`A286956(A210891(n+1))`
-/

namespace A210889.P6337322056209012627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 (A210891 (n + 1)).toNat

end

end A210889.P6337322056209012627

/-! ## A210889.P16182323935605753216

`A002264(3*A210891(n+1))`
-/

namespace A210889.P16182323935605753216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A210891 (n + 1)).toNat

end

end A210889.P16182323935605753216

/-! ## A210889.P345837015986822063

`A051176(3*A210891(n+1))`
-/

namespace A210889.P345837015986822063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (3 * A210891 (n + 1)).toNat

end

end A210889.P345837015986822063

/-! ## A210889.P6408028949974884963

`A075861(3*A210891(n+1))`
-/

namespace A210889.P6408028949974884963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (3 * A210891 (n + 1)).toNat

end

end A210889.P6408028949974884963

/-! ## A210889.P10644797001879588563

`A135997(3*A210891(n+1))`
-/

namespace A210889.P10644797001879588563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (3 * A210891 (n + 1)).toNat

end

end A210889.P10644797001879588563

/-!
# A210890: Dates after Jan 01 00 in chronological order which are palindromic when they are written in the format D.M.YY. The terms are listed as numbers (without the dots).

The programs for A210890, there is no canonical definition to state claims against.
-/

/-! ## A210890.P3364123802045401746

`A210892(n+1)%A031652(n+1)`
-/

namespace A210890.P3364123802045401746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210892 (n + 1)) (A031652 (n + 1))

end

end A210890.P3364123802045401746

/-! ## A210890.P13480831291966822975

`A210892(n+1)+A000035(12*n²)`
-/

namespace A210890.P13480831291966822975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210892 (n + 1) + A000035 (12 * n ^ 2)

end

end A210890.P13480831291966822975

/-! ## A210890.P4762788181964353895

`A210892(n+1)+val(∏{p}[A000032(n), #], 10)`
-/

namespace A210890.P4762788181964353895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210892 (n + 1) + (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 10 : ℤ)

end

end A210890.P4762788181964353895

/-! ## A210890.P6390576664626075144

`A210892(n+1)+A000122(A246343(n))`
-/

namespace A210890.P6390576664626075144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210892 (n + 1) + A000122 (A246343 n).toNat

end

end A210890.P6390576664626075144

/-! ## A210890.P11110420754946325042

`A369054(A354788(n))+A210892(n+1)`
-/

namespace A210890.P11110420754946325042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A354788 n).toNat + A210892 (n + 1)

end

end A210890.P11110420754946325042

/-!
# A210893: Dates after Jan 01 1000 in chronological order which are palindromic when they are written according to the format MMDDYYYY (American standard). Leading zeros of the terms are suppressed.

The programs for A210893, there is no canonical definition to state claims against.
-/

/-! ## A210893.P16223291125398988244

`A210886(eq[A322337(2*n+1), A322393(n)])`
-/

namespace A210893.P16223291125398988244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210886 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210893.P16223291125398988244

/-!
# A210896: Number of n X n 0..2 symmetric matrices with every element equal to zero or one horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210896, there is no canonical definition to state claims against.
-/

/-! ## A210896.P2469340550082080566

`ceil(A211035(n+1)/2)`
-/

namespace A210896.P2469340550082080566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211035 (n + 1) : ℚ) / 2⌉

end

end A210896.P2469340550082080566

/-! ## A210896.P12347586897448374464

`A211035(n+1)/A000122(n²)`
-/

namespace A210896.P12347586897448374464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211035 (n + 1) : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A210896.P12347586897448374464

/-! ## A210896.P8630143727679932314

`(A211035(n+1)+A151934(n))/2`
-/

namespace A210896.P8630143727679932314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211035 (n + 1) + A151934 n : ℚ) / 2

end

end A210896.P8630143727679932314

/-! ## A210896.P2527821367168787786

`A211035(n+1)/A014963(A000079(n))`
-/

namespace A210896.P2527821367168787786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211035 (n + 1) : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A210896.P2527821367168787786

/-!
# A210897: Number of (2n)X(2n) 0..2 symmetric matrices with every element equal to two horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210897, there is no canonical definition to state claims against.
-/

/-! ## A210897.P15103162469175116753

`ceil(A211036(n+1)/2)`
-/

namespace A210897.P15103162469175116753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211036 (n + 1) : ℚ) / 2⌉

end

end A210897.P15103162469175116753

/-! ## A210897.P7464777028161311618

`(A211036(n+1)+A010894(n))/2`
-/

namespace A210897.P7464777028161311618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211036 (n + 1) + A010894 (n + 21) : ℚ) / 2

end

end A210897.P7464777028161311618

/-! ## A210897.P10554948400104875727

`(A211036(n+1)+A151934(n))/2`
-/

namespace A210897.P10554948400104875727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211036 (n + 1) + A151934 n : ℚ) / 2

end

end A210897.P10554948400104875727

/-! ## A210897.P229286474300850350

`(A211036(n+1)/2)^(A000040(n+1)%2)`
-/

namespace A210897.P229286474300850350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A211036 (n + 1) : ℚ) / 2) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A210897.P229286474300850350

/-!
# A210898: Number of n X n 0..2 symmetric matrices with every element equal to zero or two horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210898, there is no canonical definition to state claims against.
-/

/-! ## A210898.P16611783388649985902

`ceil(A211037(n+1)/2)`
-/

namespace A210898.P16611783388649985902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211037 (n + 1) : ℚ) / 2⌉

end

end A210898.P16611783388649985902

/-! ## A210898.P10471208338371868201

`round(A211037(n+1)/2*A007318(∑[n]))`
-/

namespace A210898.P10471208338371868201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211037 (n + 1) : ℚ) / 2 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A210898.P10471208338371868201

/-! ## A210898.P15778002282836931041

`round(A211037(n+1)/2)%A197769(n+1)`
-/

namespace A210898.P15778002282836931041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A211037 (n + 1) : ℚ) / 2)) (A197769 (n + 1))

end

end A210898.P15778002282836931041

/-! ## A210898.P9750092832074125805

`round(A211037(n+1)/2*A014963(4*n+2))`
-/

namespace A210898.P9750092832074125805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211037 (n + 1) : ℚ) / 2 * (A014963 (4 * n + 2) : ℚ))

end

end A210898.P9750092832074125805

/-!
# A210899: Number of n X n 0..2 symmetric matrices with every element equal to one or two horizontal and vertical neighbors, and new values 0..2 introduced in lower triangle row major order.

The programs for A210899, there is no canonical definition to state claims against.
-/

/-! ## A210899.P13862097027231631353

`ceil(A211038(n+1)/2)`
-/

namespace A210899.P13862097027231631353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211038 (n + 1) : ℚ) / 2⌉

end

end A210899.P13862097027231631353

/-! ## A210899.P880336111624549980

`A211038(n+1)/A014963(A011782(n))`
-/

namespace A210899.P880336111624549980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211038 (n + 1) : ℚ) / (A014963 (A011782 n).toNat : ℚ)

end

end A210899.P880336111624549980

/-! ## A210899.P228876158629968739

`A211038(n+1)/A014963(A291778(n))`
-/

namespace A210899.P228876158629968739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211038 (n + 1) : ℚ) / (A014963 (A291778 n).toNat : ℚ)

end

end A210899.P228876158629968739

/-! ## A210899.P12419893220183957950

`A211038(n+1)/A000005(A326843(n))`
-/

namespace A210899.P12419893220183957950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211038 (n + 1) : ℚ) / (A000005 (A326843 n).toNat : ℚ)

end

end A210899.P12419893220183957950

/-! ## A210899.P5963345130206503668

`A211038(n+1)/A020639(A000061(n+1))`
-/

namespace A210899.P5963345130206503668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211038 (n + 1) : ℚ) / (A020639 (A000061 (n + 1)).toNat : ℚ)

end

end A210899.P5963345130206503668

