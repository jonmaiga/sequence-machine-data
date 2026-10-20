import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A248000: Number of length 5+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A248000, there is no canonical definition to state claims against.
-/

/-! ## A248000.P11578491631498076773

`A247995(A167499(n+3))`
-/

namespace A248000.P11578491631498076773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A167499 (n + 3)).toNat

end

end A248000.P11578491631498076773

/-! ## A248000.P15868753220145811707

`A247995(A155212(n)+13)`
-/

namespace A248000.P15868753220145811707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A155212 n + 13).toNat

end

end A248000.P15868753220145811707

/-! ## A248000.P10673499494536339701

`A247995(A056000(n)+15)`
-/

namespace A248000.P10673499494536339701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A056000 n + 15).toNat

end

end A248000.P10673499494536339701

/-! ## A248000.P15722058819041100314

`A247995(A000217(n+4)+5)`
-/

namespace A248000.P15722058819041100314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000217 (n + 4) + 5).toNat

end

end A248000.P15722058819041100314

/-! ## A248000.P5788733244030800389

`A247995(A046691(n+2)+9)`
-/

namespace A248000.P5788733244030800389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A046691 (n + 2) + 9).toNat

end

end A248000.P5788733244030800389

/-!
# A248001: Number of length 6+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A248001, there is no canonical definition to state claims against.
-/

/-! ## A248001.P14311658903898902821

`A247995(A166136(n+4))`
-/

namespace A248001.P14311658903898902821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A166136 (n + 4)).toNat

end

end A248001.P14311658903898902821

/-! ## A248001.P6412792443296595663

`A247995(A167614(n+4)+3)`
-/

namespace A248001.P6412792443296595663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A167614 (n + 4) + 3).toNat

end

end A248001.P6412792443296595663

/-! ## A248001.P7087413774284519799

`A247995(A000124(n+5)+5)`
-/

namespace A248001.P7087413774284519799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000124 (n + 5) + 5).toNat

end

end A248001.P7087413774284519799

/-! ## A248001.P10523280634051126260

`A247995(A000217(n+5)+6)`
-/

namespace A248001.P10523280634051126260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000217 (n + 5) + 6).toNat

end

end A248001.P10523280634051126260

/-! ## A248001.P15414162002364533928

`A247995(A152950(n+4)+A005843(n+6))`
-/

namespace A248001.P15414162002364533928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A152950 (n + 4) + A005843 (n + 6)).toNat

end

end A248001.P15414162002364533928

/-!
# A248002: Number of length 7+5 0..n arrays with no disjoint triples in any consecutive six terms having the same sum.

The programs for A248002, there is no canonical definition to state claims against.
-/

/-! ## A248002.P15090323311343205029

`A247995(A152950(n+7)+4)`
-/

namespace A248002.P15090323311343205029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A152950 (n + 7) + 4).toNat

end

end A248002.P15090323311343205029

/-! ## A248002.P14565937904150290034

`A247995(A000096(n+5)+8)`
-/

namespace A248002.P14565937904150290034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000096 (n + 5) + 8).toNat

end

end A248002.P14565937904150290034

/-! ## A248002.P14218769456539716143

`A247995(A000217(n+6)+7)`
-/

namespace A248002.P14218769456539716143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000217 (n + 6) + 7).toNat

end

end A248002.P14218769456539716143

/-! ## A248002.P7100043446118383341

`A247995(A000124(n+7)-(n+1))`
-/

namespace A248002.P7100043446118383341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A248002.P7100043446118383341

/-! ## A248002.P13507730852243851448

`A247995(A008574(n+6)+A000124(n+2))`
-/

namespace A248002.P13507730852243851448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (A008574 (n + 6) + A000124 (n + 2)).toNat

end

end A248002.P13507730852243851448

/-!
# A248003: a(n) = (sum of totatives of n ) / (2^(omega(n)-1)); a(n) = A023896(n) / A007875(n).

The programs for A248003, the canonical program `A248003.P1176382946806919218` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248003 has offset 1).

The definition of A248003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, A023896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248003.P1176382946806919218

`A023896(n+1)/A007875(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A248003

/-- `A023896(n+1)/A007875(n+1)` -/
def P1176382946806919218.Spec : Prop :=
  ∀ n, P1176382946806919218.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P1247932824131438511

`(n+1)*A000010(n+1)/A034444(n+1)`
-/

namespace A248003.P1247932824131438511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000010 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A248003.P1247932824131438511

namespace A248003

/-- `(n+1)*A000010(n+1)/A034444(n+1)` -/
def P1247932824131438511.Spec : Prop :=
  ∀ n, P1247932824131438511.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P414149923523610088

`(n+1)/2*A000010(n+1)/2^(A001221(n+1)-1)`
-/

namespace A248003.P414149923523610088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000010 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) - 1 : ℤ)

end

end A248003.P414149923523610088

namespace A248003

/-- `(n+1)/2*A000010(n+1)/2^(A001221(n+1)-1)` -/
def P414149923523610088.Spec : Prop :=
  ∀ n, P414149923523610088.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P8810755421240697001

`(n+1)/2*A070306(n+1)`
-/

namespace A248003.P8810755421240697001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A070306 (n + 1) : ℚ)

end

end A248003.P8810755421240697001

namespace A248003

/-- `(n+1)/2*A070306(n+1)` -/
def P8810755421240697001.Spec : Prop :=
  ∀ n, P8810755421240697001.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P13277492297586529156

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A000005(∏{p}[n+1, #])`
-/

namespace A248003.P13277492297586529156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / (A000005 (∏ p ∈ Nat.primeFactors (f3 n), p) : ℚ)

end

end A248003.P13277492297586529156

namespace A248003

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A000005(∏{p}[n+1, #])` -/
def P13277492297586529156.Spec : Prop :=
  ∀ n, P13277492297586529156.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P970539594856175746

`A003557(n+1)*A090780(n+1)`
-/

namespace A248003.P970539594856175746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A090780 (n + 1)

end

end A248003.P970539594856175746

namespace A248003

/-- `A003557(n+1)*A090780(n+1)` -/
def P970539594856175746.Spec : Prop :=
  ∀ n, P970539594856175746.a n = A248003 (n + 1)

end A248003

/-! ## A248003.P12147580732010075552

`A002618(n+1)/A034444(n+1)`
-/

namespace A248003.P12147580732010075552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A248003.P12147580732010075552

namespace A248003

/-- `A002618(n+1)/A034444(n+1)` -/
def P12147580732010075552.Spec : Prop :=
  ∀ n, P12147580732010075552.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P17291790091422127469

`A002618(n+1)/2^A001221(n+1)`
-/

namespace A248003.P17291790091422127469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A248003.P17291790091422127469

namespace A248003

/-- `A002618(n+1)/2^A001221(n+1)` -/
def P17291790091422127469.Spec : Prop :=
  ∀ n, P17291790091422127469.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P15452908913371290274

`A002618(n+1)/A000005(∏{p}[n+1, #])`
-/

namespace A248003.P15452908913371290274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A248003.P15452908913371290274

namespace A248003

/-- `A002618(n+1)/A000005(∏{p}[n+1, #])` -/
def P15452908913371290274.Spec : Prop :=
  ∀ n, P15452908913371290274.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P12514956768713899633

`A002618(n+1)/A303809(∏{p}[n+1, #])`
-/

namespace A248003.P12514956768713899633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A303809 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A248003.P12514956768713899633

namespace A248003

/-- `A002618(n+1)/A303809(∏{p}[n+1, #])` -/
def P12514956768713899633.Spec : Prop :=
  ∀ n, P12514956768713899633.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P10690081948712691236

`A002618(n+1)/∑{d}[n+1, abs(A008683(#))]`
-/

namespace A248003.P10690081948712691236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), |A008683 d| : ℤ) : ℚ)

end

end A248003.P10690081948712691236

namespace A248003

/-- `A002618(n+1)/∑{d}[n+1, abs(A008683(#))]` -/
def P10690081948712691236.Spec : Prop :=
  ∀ n, P10690081948712691236.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P2205785344499681454

`A002618(n+1)/∏{p}[n+1, A001221(#)+1]`
-/

namespace A248003.P2205785344499681454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (A001221 p + 1) : ℤ) : ℚ)

end

end A248003.P2205785344499681454

namespace A248003

/-- `A002618(n+1)/∏{p}[n+1, A001221(#)+1]` -/
def P2205785344499681454.Spec : Prop :=
  ∀ n, P2205785344499681454.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P10846014571572574167

`A002618(n+1)/A322362(∏{p}[n+1, 2%(#+1)])`
-/

namespace A248003.P10846014571572574167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A322362 (∏ p ∈ Nat.primeFactors (f1 n), 2 % (p + 1)) : ℚ)

end

end A248003.P10846014571572574167

namespace A248003

/-- `A002618(n+1)/A322362(∏{p}[n+1, 2%(#+1)])` -/
def P10846014571572574167.Spec : Prop :=
  ∀ n, P10846014571572574167.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P14566841782035356352

`A002618(n+1)/A000005(A007947(n+1))`
-/

namespace A248003.P14566841782035356352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A000005 (A007947 (n + 1)).toNat : ℚ)

end

end A248003.P14566841782035356352

namespace A248003

/-- `A002618(n+1)/A000005(A007947(n+1))` -/
def P14566841782035356352.Spec : Prop :=
  ∀ n, P14566841782035356352.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P11828442506691659011

`A023896(n+1)/A000010(A034444(n+1))`
-/

namespace A248003.P11828442506691659011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A000010 (A034444 (n + 1)).toNat : ℚ)

end

end A248003.P11828442506691659011

namespace A248003

/-- `A023896(n+1)/A000010(A034444(n+1))` -/
def P11828442506691659011.Spec : Prop :=
  ∀ n, P11828442506691659011.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P15423410501446776766

`A090780(n+1)²/A090780(A007947(n+1))`
-/

namespace A248003.P15423410501446776766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090780 (n + 1) ^ 2 : ℚ) / (A090780 (A007947 (n + 1)).toNat : ℚ)

end

end A248003.P15423410501446776766

namespace A248003

/-- `A090780(n+1)²/A090780(A007947(n+1))` -/
def P15423410501446776766.Spec : Prop :=
  ∀ n, P15423410501446776766.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P2022952583026105227

`A090780(n+1)²/A090780(A204455(n+1))`
-/

namespace A248003.P2022952583026105227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090780 (n + 1) ^ 2 : ℚ) / (A090780 (A204455 (n + 1)).toNat : ℚ)

end

end A248003.P2022952583026105227

namespace A248003

/-- `A090780(n+1)²/A090780(A204455(n+1))` -/
def P2022952583026105227.Spec : Prop :=
  ∀ n, P2022952583026105227.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P4652635862402108747

`A002618(n+1)/2^A001222(∏{e}[n+1, A000040(#)])`
-/

namespace A248003.P4652635862402108747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat : ℤ)

end

end A248003.P4652635862402108747

namespace A248003

/-- `A002618(n+1)/2^A001222(∏{e}[n+1, A000040(#)])` -/
def P4652635862402108747.Spec : Prop :=
  ∀ n, P4652635862402108747.a n = (A248003 (n + 1) : ℚ)

end A248003

/-! ## A248003.P8856545660404202860

`A090780(A102631(n+1))`
-/

namespace A248003.P8856545660404202860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090780 (A102631 (n + 1)).toNat

end

end A248003.P8856545660404202860

namespace A248003

/-- `A090780(A102631(n+1))` -/
def P8856545660404202860.Spec : Prop :=
  ∀ n, P8856545660404202860.a n = A248003 (n + 1)

end A248003

/-! ## A248003.P14463776402577630137

`A070306((n+1)²)/2`
-/

namespace A248003.P14463776402577630137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070306 ((n + 1) ^ 2) : ℚ) / 2

end

end A248003.P14463776402577630137

namespace A248003

/-- `A070306((n+1)²)/2` -/
def P14463776402577630137.Spec : Prop :=
  ∀ n, P14463776402577630137.a n = (A248003 (n + 1) : ℚ)

end A248003

/-!
# A248005: Number of primes obtained in the first step of the long division of prime(n) by prime(i), i=2,...,n-1 (see example).

The programs for A248005, there is no canonical definition to state claims against.
-/

/-! ## A248005.P4605368595435240519

`A097849(A240064(n+1)+1)`
-/

namespace A248005.P4605368595435240519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (A240064 (n + 1) + 1).toNat

end

end A248005.P4605368595435240519

/-! ## A248005.P12163207300985327287

`or(A003849(n), A055642(A094170(n)))`
-/

namespace A248005.P12163207300985327287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 n) (A055642 (A094170 n).toNat)

end

end A248005.P12163207300985327287

/-! ## A248005.P10451986865295249516

`A083025(n+1)+A055642(A094170(n))`
-/

namespace A248005.P10451986865295249516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) + A055642 (A094170 n).toNat

end

end A248005.P10451986865295249516

/-! ## A248005.P12852104815856933407

`or(A003849(n), A055642(A167188(n+1)))`
-/

namespace A248005.P12852104815856933407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 n) (A055642 (A167188 (n + 1)).toNat)

end

end A248005.P12852104815856933407

/-! ## A248005.P8700601379696539755

`A083025(n+1)+A055642(A167188(n+1))`
-/

namespace A248005.P8700601379696539755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) + A055642 (A167188 (n + 1)).toNat

end

end A248005.P8700601379696539755

/-!
# A248010: Non-primatic permutable numbers: All permutations of the number's digits except the ones resulting in leading zeros are nonprimes.

The programs for A248010, there is no canonical definition to state claims against.
-/

/-! ## A248010.P8898345001070635331

`eq[0, A046810(n+1)]+1`
-/

namespace A248010.P8898345001070635331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A248010.P8898345001070635331

/-! ## A248010.P16239758667619767637

`record[gcd(A000027(n+1), A046810(n+1))]`
-/

namespace A248010.P16239758667619767637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A046810 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248010.P16239758667619767637

/-! ## A248010.P8873352507608704419

`record[(n+1)/A315470(A046810(n+1)²)]`
-/

namespace A248010.P8873352507608704419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A315470 (A046810 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248010.P8873352507608704419

/-! ## A248010.P16197470756776881784

`record[(n+1)/A177890(A046810(n+1)+1)]`
-/

namespace A248010.P16197470756776881784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A177890 (A046810 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248010.P16197470756776881784

/-! ## A248010.P4120336136879237326

`record[(n+1)/A315470(2*A046810(n+1))]`
-/

namespace A248010.P4120336136879237326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A315470 (2 * A046810 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248010.P4120336136879237326

/-! ## A248010.P17373808387829047964

`record[n+1-A177890(lcm(2, A046810(n+1)))]`
-/

namespace A248010.P17373808387829047964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A177890 (Int.lcm 2 (A046810 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248010.P17373808387829047964

/-!
# A248012: a(n)=p1^(p2^(p3^(p4^...)))... where p1

The programs for A248012, there is no canonical definition to state claims against.
-/

/-! ## A248012.P8604387886789516942

`A385644(∏{p}[n+2, #])`
-/

namespace A248012.P8604387886789516942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385644 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A248012.P8604387886789516942

/-! ## A248012.P12648162674308961004

`A385644(A007947(n+2))`
-/

namespace A248012.P12648162674308961004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385644 (A007947 (n + 2)).toNat

end

end A248012.P12648162674308961004

/-! ## A248012.P15531678707867574338

`A385644(A015052(n+2))`
-/

namespace A248012.P15531678707867574338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385644 (A015052 (n + 2)).toNat

end

end A248012.P15531678707867574338

/-! ## A248012.P9118659557530161673

`A385644(A015053(n+2))`
-/

namespace A248012.P9118659557530161673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385644 (A015053 (n + 2)).toNat

end

end A248012.P9118659557530161673

/-! ## A248012.P17812201247858398056

`A394671(∏{p}[n+2, #])`
-/

namespace A248012.P17812201247858398056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394671 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A248012.P17812201247858398056

/-!
# A248013: Numbers m such that A247796(m) = m.

The programs for A248013, there is no canonical definition to state claims against.
-/

/-! ## A248013.P9879222407817196595

`record[A247796(n)]`
-/

namespace A248013.P9879222407817196595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248013.P9879222407817196595

/-! ## A248013.P4693704254756076805

`A247796(eq[n, A247796(n)])`
-/

namespace A248013.P4693704254756076805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248013.P4693704254756076805

/-! ## A248013.P2973909242604827440

`lt[A136400(n), A247796(n)+1]`
-/

namespace A248013.P2973909242604827440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248013.P2973909242604827440

/-! ## A248013.P3464330295831260901

`lt[A226134(n)-1, A247796(n)]`
-/

namespace A248013.P3464330295831260901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248013.P3464330295831260901

/-! ## A248013.P15219432940305647087

`A000196(A075517(n)²)`
-/

namespace A248013.P15219432940305647087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A075517 n ^ 2).toNat

end

end A248013.P15219432940305647087

/-! ## A248013.P10143665502969704111

`A118759(record[A098488(n)])`
-/

namespace A248013.P10143665502969704111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248013.P10143665502969704111

/-! ## A248013.P8329917795415639047

`eq[A055642(A007953(n)), A055642(n)]`
-/

namespace A248013.P8329917795415639047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248013.P8329917795415639047

/-! ## A248013.P2424138581599849955

`record[A098488(n)]%A029963(2*(n+1))`
-/

namespace A248013.P2424138581599849955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A029963 (2 * (n + 1)))

end

end A248013.P2424138581599849955

/-!
# A248014: Numbers m such that A247796(m) < m.

The programs for A248014, there is no canonical definition to state claims against.
-/

/-! ## A248014.P9092815612074644467

`comp[A248013(n+1)]`
-/

namespace A248014.P9092815612074644467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248014.P9092815612074644467

/-! ## A248014.P11138708642219998498

`lt[A247796(n), A226134(n)]`
-/

namespace A248014.P11138708642219998498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P11138708642219998498

/-! ## A248014.P16080186248152690521

`lt[A002620(A247796(n)), A002620(n)]`
-/

namespace A248014.P16080186248152690521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A247796 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P16080186248152690521

/-! ## A248014.P5683628308807488054

`lt[A247792(A247796(n)), A247792(n)]`
-/

namespace A248014.P5683628308807488054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 (A247796 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P5683628308807488054

/-! ## A248014.P12292478943451488741

`lt[A247796(n), A136400(n)]`
-/

namespace A248014.P12292478943451488741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P12292478943451488741

/-! ## A248014.P17347824769866203069

`lt[A247829(A247796(n)), A247829(n)]`
-/

namespace A248014.P17347824769866203069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A247796 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P17347824769866203069

/-! ## A248014.P9961768393161046520

`comp[A247796(n)]`
-/

namespace A248014.P9961768393161046520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248014.P9961768393161046520

/-! ## A248014.P10702964901267699877

`lt[A247796(n)², A247799(n)]`
-/

namespace A248014.P10702964901267699877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247796 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P10702964901267699877

/-! ## A248014.P3758953342017297915

`lt[A247832(A247796(n)), A247832(n)]`
-/

namespace A248014.P3758953342017297915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A247796 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248014.P3758953342017297915

/-!
# A248016: Sum over each antidiagonal of A248011.

The programs for A248016, there is no canonical definition to state claims against.
-/

/-! ## A248016.P2433359228203342501

`A101561(n)-A004736(A153372(n+1))`
-/

namespace A248016.P2433359228203342501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101561 n - A004736 (A153372 (n + 1)).toNat

end

end A248016.P2433359228203342501

/-! ## A248016.P4675407155088072043

`A257839(A236913(n)+A000389(2*(n+1)))`
-/

namespace A248016.P4675407155088072043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A236913 n + A000389 (2 * (n + 1))).toNat

end

end A248016.P4675407155088072043

/-!
# A248017: Table T(n,k), n>=1, k>=1, read by antidiagonals: T(n,k) = number of equivalence classes of ways of placing five 1 X 1 tiles in an n X k rectangle under all symmetry operations of the rectangle.

The programs for A248017, there is no canonical definition to state claims against.
-/

/-! ## A248017.P2717111722949147941

`A377597(n+1)-A145649(A101499(n))`
-/

namespace A248017.P2717111722949147941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377597 (n + 1) - A145649 (A101499 n).toNat

end

end A248017.P2717111722949147941

/-!
# A248020: Numbers which are coprime to the sum of their divisors, but are neither primes nor perfect powers.

The programs for A248020, the canonical program `A248020.P15350737857630933227` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248020 has offset 1).

The definition of A248020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248020.P15350737857630933227

`record[A052410(A095738(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A248020

/-- `record[A052410(A095738(n+1))]` -/
def P15350737857630933227.Spec : Prop :=
  ∀ n, P15350737857630933227.a n = A248020 (n + 1)

theorem P15350737857630933227.correct : P15350737857630933227.Spec := by
  intro n
  simp only [A248020, Nat.add_sub_cancel]

end A248020

/-! ## A248020.P13052439270284128165

`record[A052410(A003624(n+5))]`
-/

namespace A248020.P13052439270284128165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A003624 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248020.P13052439270284128165

namespace A248020

/-- `record[A052410(A003624(n+5))]` -/
def P13052439270284128165.Spec : Prop :=
  ∀ n, P13052439270284128165.a n = A248020 (n + 1)

end A248020

/-! ## A248020.P14459455517907655807

`filter[A106543(n+1), A325964(#)]`
-/

namespace A248020.P14459455517907655807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A248020.P14459455517907655807

namespace A248020

/-- `filter[A106543(n+1), A325964(#)]` -/
def P14459455517907655807.Spec : Prop :=
  ∀ n, P14459455517907655807.a n = A248020 (n + 1)

end A248020

/-! ## A248020.P3421851573309558350

`filter[A106543(n+1), A355816(#)]`
-/

namespace A248020.P3421851573309558350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248020.P3421851573309558350

namespace A248020

/-- `filter[A106543(n+1), A355816(#)]` -/
def P3421851573309558350.Spec : Prop :=
  ∀ n, P3421851573309558350.a n = A248020 (n + 1)

end A248020

/-! ## A248020.P9893959020107594966

`∩[A003624(n+1), A106543(n+1)]`
-/

namespace A248020.P9893959020107594966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P9893959020107594966

namespace A248020

/-- `∩[A003624(n+1), A106543(n+1)]` -/
def P9893959020107594966.Spec : Prop :=
  ∀ n, (P9893959020107594966.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P11968991907881781054

`∩[A014567(n+1), A106543(n+1)]`
-/

namespace A248020.P11968991907881781054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P11968991907881781054

namespace A248020

/-- `∩[A014567(n+1), A106543(n+1)]` -/
def P11968991907881781054.Spec : Prop :=
  ∀ n, (P11968991907881781054.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P4617135344359778273

`∩[A095738(n+1), A106543(n+1)]`
-/

namespace A248020.P4617135344359778273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P4617135344359778273

namespace A248020

/-- `∩[A095738(n+1), A106543(n+1)]` -/
def P4617135344359778273.Spec : Prop :=
  ∀ n, (P4617135344359778273.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P17311694676604657884

`∩[A003624(n+1), A007916(n+1)]`
-/

namespace A248020.P17311694676604657884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P17311694676604657884

namespace A248020

/-- `∩[A003624(n+1), A007916(n+1)]` -/
def P17311694676604657884.Spec : Prop :=
  ∀ n, (P17311694676604657884.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P460580140368287214

`∩[A007916(n+1), A095738(n+1)]`
-/

namespace A248020.P460580140368287214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P460580140368287214

namespace A248020

/-- `∩[A007916(n+1), A095738(n+1)]` -/
def P460580140368287214.Spec : Prop :=
  ∀ n, (P460580140368287214.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P12574308711775714920

`∩[A003624(n+1), A175082(n+1)]`
-/

namespace A248020.P12574308711775714920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P12574308711775714920

namespace A248020

/-- `∩[A003624(n+1), A175082(n+1)]` -/
def P12574308711775714920.Spec : Prop :=
  ∀ n, (P12574308711775714920.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P8308109522476315699

`∩[A095738(n+1), A175082(n+1)]`
-/

namespace A248020.P8308109522476315699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P8308109522476315699

namespace A248020

/-- `∩[A095738(n+1), A175082(n+1)]` -/
def P8308109522476315699.Spec : Prop :=
  ∀ n, (P8308109522476315699.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P12741340915146677840

`∩[A094784(n+1), A095738(n+1)]`
-/

namespace A248020.P12741340915146677840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248020.P12741340915146677840

namespace A248020

/-- `∩[A094784(n+1), A095738(n+1)]` -/
def P12741340915146677840.Spec : Prop :=
  ∀ n, (P12741340915146677840.a n : ℤ) = A248020 (n + 1)

end A248020

/-! ## A248020.P15766994307741009460

`filter[A003624(n+1), A132350(#)]`
-/

namespace A248020.P15766994307741009460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A248020.P15766994307741009460

namespace A248020

/-- `filter[A003624(n+1), A132350(#)]` -/
def P15766994307741009460.Spec : Prop :=
  ∀ n, P15766994307741009460.a n = A248020 (n + 1)

end A248020

/-! ## A248020.P6684593212973672253

`filter[A095738(n+1), A132350(#)]`
-/

namespace A248020.P6684593212973672253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A248020.P6684593212973672253

namespace A248020

/-- `filter[A095738(n+1), A132350(#)]` -/
def P6684593212973672253.Spec : Prop :=
  ∀ n, P6684593212973672253.a n = A248020 (n + 1)

end A248020

/-! ## A248020.P3849086861275448857

`A113484(eq[A158052(n+1), A306682(n+1)])`
-/

namespace A248020.P3849086861275448857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A248020.P3849086861275448857

namespace A248020

/-- `A113484(eq[A158052(n+1), A306682(n+1)])` -/
def P3849086861275448857.Spec : Prop :=
  ∀ n, P3849086861275448857.a n = A248020 (n + 1)

end A248020

/-!
# A248021: Perfect powers which are not coprime to the sum of their divisors.

The programs for A248021, there is no canonical definition to state claims against.
-/

/-! ## A248021.P2505601903512894967

`∩[A075783(n+1), A344702(n+1)]`
-/

namespace A248021.P2505601903512894967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248021.P2505601903512894967

/-!
# A248022: Achilles numbers which are coprime to the sum of their divisors.

The programs for A248022, there is no canonical definition to state claims against.
-/

/-! ## A248022.P12122719985601837202

`filter[A052486(n+1), A355816(#)]`
-/

namespace A248022.P12122719985601837202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248022.P12122719985601837202

/-! ## A248022.P5394313296932584069

`filter[A370786(n+1), A355816(#)]`
-/

namespace A248022.P5394313296932584069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248022.P5394313296932584069

/-! ## A248022.P4489824451042768532

`filter[A386434(n+1), A355816(#)]`
-/

namespace A248022.P4489824451042768532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248022.P4489824451042768532

/-! ## A248022.P16746169942852975009

`filter[A387958(n+1), A355816(#)]`
-/

namespace A248022.P16746169942852975009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248022.P16746169942852975009

/-! ## A248022.P15828959421286677980

`filter[A052486(n+1), A325964(#)]`
-/

namespace A248022.P15828959421286677980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A248022.P15828959421286677980

/-! ## A248022.P210564183621669506

`filter[A386434(n+1), A325964(#)]`
-/

namespace A248022.P210564183621669506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A248022.P210564183621669506

/-! ## A248022.P9696096965790426298

`filter[A387958(n+1), A325964(#)]`
-/

namespace A248022.P9696096965790426298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A248022.P9696096965790426298

/-! ## A248022.P4448864068624251724

`filter[A393816(n+1), A325964(#)]`
-/

namespace A248022.P4448864068624251724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A248022.P4448864068624251724

/-! ## A248022.P16416516378552030448

`filter[A393941(n+1), A325964(#)]`
-/

namespace A248022.P16416516378552030448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A248022.P16416516378552030448

/-!
# A248023: Even numbers which are neither primes nor perfect powers and are coprime to the sum of their divisors.

The programs for A248023, the canonical program `A248023.P4567360771586854250` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248023 has offset 1).

The definition of A248023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248023.P5841295764828525386

`∩[A356382(n+1), A388984(n+1)]`
-/

namespace A248023.P5841295764828525386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248023.P5841295764828525386

namespace A248023

/-- `∩[A356382(n+1), A388984(n+1)]` -/
def P5841295764828525386.Spec : Prop :=
  ∀ n, (P5841295764828525386.a n : ℤ) = A248023 (n + 1)

end A248023

/-! ## A248023.P4567360771586854250

`filter[A001105(n+1), A355816(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A248023

/-- `filter[A001105(n+1), A355816(#)]` -/
def P4567360771586854250.Spec : Prop :=
  ∀ n, P4567360771586854250.a n = A248023 (n + 1)

theorem P4567360771586854250.correct : P4567360771586854250.Spec := by
  intro n
  simp only [A248023, Nat.add_sub_cancel]

end A248023

/-! ## A248023.P8436448569415069169

`filter[A176542(n+1), A355816(#)]`
-/

namespace A248023.P8436448569415069169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P8436448569415069169

namespace A248023

/-- `filter[A176542(n+1), A355816(#)]` -/
def P8436448569415069169.Spec : Prop :=
  ∀ n, P8436448569415069169.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P11748866203026015796

`filter[A176889(n+1), A355816(#)]`
-/

namespace A248023.P11748866203026015796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P11748866203026015796

namespace A248023

/-- `filter[A176889(n+1), A355816(#)]` -/
def P11748866203026015796.Spec : Prop :=
  ∀ n, P11748866203026015796.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P8225368231580663749

`filter[A184636(n+1), A355816(#)]`
-/

namespace A248023.P8225368231580663749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P8225368231580663749

namespace A248023

/-- `filter[A184636(n+1), A355816(#)]` -/
def P8225368231580663749.Spec : Prop :=
  ∀ n, P8225368231580663749.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P13227508698423796685

`filter[A245578(n+2), A355816(#)]`
-/

namespace A248023.P13227508698423796685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P13227508698423796685

namespace A248023

/-- `filter[A245578(n+2), A355816(#)]` -/
def P13227508698423796685.Spec : Prop :=
  ∀ n, P13227508698423796685.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P15820601026594251141

`filter[A256137(n+2), A355816(#)]`
-/

namespace A248023.P15820601026594251141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256137 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P15820601026594251141

namespace A248023

/-- `filter[A256137(n+2), A355816(#)]` -/
def P15820601026594251141.Spec : Prop :=
  ∀ n, P15820601026594251141.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P10849390494723080427

`filter[A053439(2*n+1), A355816(#)]`
-/

namespace A248023.P10849390494723080427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053439 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P10849390494723080427

namespace A248023

/-- `filter[A053439(2*n+1), A355816(#)]` -/
def P10849390494723080427.Spec : Prop :=
  ∀ n, P10849390494723080427.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P100139734971348227

`filter[A070935(2*(n+1)), A355816(#)]`
-/

namespace A248023.P100139734971348227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070935 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P100139734971348227

namespace A248023

/-- `filter[A070935(2*(n+1)), A355816(#)]` -/
def P100139734971348227.Spec : Prop :=
  ∀ n, P100139734971348227.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P6531537358214177913

`filter[A080476(2*(n+1)), A355816(#)]`
-/

namespace A248023.P6531537358214177913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P6531537358214177913

namespace A248023

/-- `filter[A080476(2*(n+1)), A355816(#)]` -/
def P6531537358214177913.Spec : Prop :=
  ∀ n, P6531537358214177913.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P3104457517072751714

`filter[A087327(2*(n+1)), A355816(#)]`
-/

namespace A248023.P3104457517072751714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087327 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P3104457517072751714

namespace A248023

/-- `filter[A087327(2*(n+1)), A355816(#)]` -/
def P3104457517072751714.Spec : Prop :=
  ∀ n, P3104457517072751714.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P4837707687751239808

`filter[A090937(2*n+1), A355816(#)]`
-/

namespace A248023.P4837707687751239808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090937 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P4837707687751239808

namespace A248023

/-- `filter[A090937(2*n+1), A355816(#)]` -/
def P4837707687751239808.Spec : Prop :=
  ∀ n, P4837707687751239808.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P8063852932066621252

`filter[A093005(2*(n+1)), A355816(#)]`
-/

namespace A248023.P8063852932066621252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P8063852932066621252

namespace A248023

/-- `filter[A093005(2*(n+1)), A355816(#)]` -/
def P8063852932066621252.Spec : Prop :=
  ∀ n, P8063852932066621252.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P2041316103887865642

`filter[A093353(2*n+1), A355816(#)]`
-/

namespace A248023.P2041316103887865642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P2041316103887865642

namespace A248023

/-- `filter[A093353(2*n+1), A355816(#)]` -/
def P2041316103887865642.Spec : Prop :=
  ∀ n, P2041316103887865642.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P13159666969912225157

`filter[A093907(2*n+1), A355816(#)]`
-/

namespace A248023.P13159666969912225157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P13159666969912225157

namespace A248023

/-- `filter[A093907(2*n+1), A355816(#)]` -/
def P13159666969912225157.Spec : Prop :=
  ∀ n, P13159666969912225157.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P4051520982138719627

`filter[A116471(2*(n+1)), A355816(#)]`
-/

namespace A248023.P4051520982138719627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116471 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P4051520982138719627

namespace A248023

/-- `filter[A116471(2*(n+1)), A355816(#)]` -/
def P4051520982138719627.Spec : Prop :=
  ∀ n, P4051520982138719627.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P17813440869099930960

`filter[A118000(2*n+1), A355816(#)]`
-/

namespace A248023.P17813440869099930960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118000 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P17813440869099930960

namespace A248023

/-- `filter[A118000(2*n+1), A355816(#)]` -/
def P17813440869099930960.Spec : Prop :=
  ∀ n, P17813440869099930960.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P4103705999024074796

`filter[A129202(2*n+1), A355816(#)]`
-/

namespace A248023.P4103705999024074796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P4103705999024074796

namespace A248023

/-- `filter[A129202(2*n+1), A355816(#)]` -/
def P4103705999024074796.Spec : Prop :=
  ∀ n, P4103705999024074796.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P13001533607806372490

`filter[A266074(2*n+1), A355816(#)]`
-/

namespace A248023.P13001533607806372490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266074 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P13001533607806372490

namespace A248023

/-- `filter[A266074(2*n+1), A355816(#)]` -/
def P13001533607806372490.Spec : Prop :=
  ∀ n, P13001533607806372490.a n = A248023 (n + 1)

end A248023

/-! ## A248023.P11708216802518405021

`filter[A266287(2*n+1), A355816(#)]`
-/

namespace A248023.P11708216802518405021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355816 (f1 j).toNat = 1) n)

end

end A248023.P11708216802518405021

namespace A248023

/-- `filter[A266287(2*n+1), A355816(#)]` -/
def P11708216802518405021.Spec : Prop :=
  ∀ n, P11708216802518405021.a n = A248023 (n + 1)

end A248023

/-!
# A248024: Lexicographically earliest permutation of the positive integers such that the first digit of a(n+1) divides a(n).

The programs for A248024, there is no canonical definition to state claims against.
-/

/-! ## A248024.P3423792564061320713

`A381081(n+1)%A153815(n+1)`
-/

namespace A248024.P3423792564061320713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381081 (n + 1)) (A153815 (n + 1))

end

end A248024.P3423792564061320713

/-! ## A248024.P8876268494992759320

`A381081(n+1)+A381036(A381058(n))`
-/

namespace A248024.P8876268494992759320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381081 (n + 1) + A381036 (A381058 n).toNat

end

end A248024.P8876268494992759320

/-! ## A248024.P12403433018494678882

`A381081(n+1)+A381036(A084835(n+1))`
-/

namespace A248024.P12403433018494678882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381081 (n + 1) + A381036 (A084835 (n + 1)).toNat

end

end A248024.P12403433018494678882

/-! ## A248024.P794903924332131453

`A381096(A057326(n+3))+A381081(n+1)`
-/

namespace A248024.P794903924332131453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381096 (A057326 (n + 3)).toNat + A381081 (n + 1)

end

end A248024.P794903924332131453

/-! ## A248024.P7158481858601906981

`A381081(n+1)%A002764(n)`
-/

namespace A248024.P7158481858601906981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381081 (n + 1)) (A002764 n)

end

end A248024.P7158481858601906981

/-!
# A248025: Lexicographically earliest permutation of the positive integers such that the first digit of a(n+1) is the digital root of a(n).

The programs for A248025, there is no canonical definition to state claims against.
-/

/-! ## A248025.P14201201370390047907

`A118759(A162501(record[A065883(n+1)]))`
-/

namespace A248025.P14201201370390047907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A162501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A248025.P14201201370390047907

/-! ## A248025.P17567376073425104199

`A162501(eq[A034523(n+1), A035444(n)])`
-/

namespace A248025.P17567376073425104199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162501 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A248025.P17567376073425104199

/-! ## A248025.P8539068850501642681

`A162501(record[A065883(n+1)-A034523(n+1)])`
-/

namespace A248025.P8539068850501642681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1) - A034523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A248025.P8539068850501642681

/-! ## A248025.P9344674983540232494

`A162501(record[A065883(n+1)])%A048428(n+1)`
-/

namespace A248025.P9344674983540232494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A048428 (n + 1))

end

end A248025.P9344674983540232494

/-! ## A248025.P1530535317895820652

`A162501(eq[A034526(n+1), A035444(n)])`
-/

namespace A248025.P1530535317895820652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162501 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A248025.P1530535317895820652

/-!
# A248027: Sum over each antidiagonal of A248017.

The programs for A248027, there is no canonical definition to state claims against.
-/

/-! ## A248027.P5334153936039617658

`A025429(A270233(n)%((10^n+8)/9))`
-/

namespace A248027.P5334153936039617658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (Int.tmod (A270233 n) (SequenceMachineLib.roundAway ((10 ^ n + 8 : ℚ) / 9))).toNat

end

end A248027.P5334153936039617658

/-! ## A248027.P16827034042088144663

`A160365(n+5)%A143568(comp[2*(n+1)])`
-/

namespace A248027.P16827034042088144663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160365 (n + 5)) (A143568 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A248027.P16827034042088144663

/-!
# A248028: a(n) = Sum_{k=0..n} |Stirling1(n, k)|*(n-k)! for n>=0.

The programs for A248028, there is no canonical definition to state claims against.
-/

/-! ## A248028.P10776277067883358393

`A255553(∑[A342110(n)])`
-/

namespace A248028.P10776277067883358393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255553 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248028.P10776277067883358393

/-! ## A248028.P5729898974170958416

`A033270(A261280(n)+2)`
-/

namespace A248028.P5729898974170958416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A261280 n + 2).toNat

end

end A248028.P5729898974170958416

/-!
# A248029: Least positive integer m such that m + n divides phi(m)*sigma(n), where phi(.) and sigma(.) are given by A000010 and A000203.

The programs for A248029, there is no canonical definition to state claims against.
-/

/-! ## A248029.P7984995956943736615

`A001065(n+2)%record[A324473(n+4)]`
-/

namespace A248029.P7984995956943736615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324473 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A248029.P7984995956943736615

/-! ## A248029.P11139823556770319252

`A001065(n+2)-A185284(A282252(n))`
-/

namespace A248029.P11139823556770319252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 2) - A185284 (A282252 n).toNat

end

end A248029.P11139823556770319252

/-! ## A248029.P12487198361596429464

`A173455(n+2)-A185284(A282252(n))`
-/

namespace A248029.P12487198361596429464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 2) - A185284 (A282252 n).toNat

end

end A248029.P12487198361596429464

/-! ## A248029.P17693166073323046532

`A001065(n+2)%A192590(A046260(n))`
-/

namespace A248029.P17693166073323046532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 2)) (A192590 (A046260 n).toNat)

end

end A248029.P17693166073323046532

/-! ## A248029.P11741173617978311188

`gcd(A001065(n+2), A092254(A291119(n)))`
-/

namespace A248029.P11741173617978311188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (n + 2)) (A092254 (A291119 n).toNat)

end

end A248029.P11741173617978311188

/-!
# A248034: a(n+1) gives the number of occurrences of the last digit of a(n) so far, up to and including a(n), with a(0)=0.

The programs for A248034, there is no canonical definition to state claims against.
-/

/-! ## A248034.P5303024184110668786

`A348647(A130123(n))*A358967(n)`
-/

namespace A248034.P5303024184110668786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348647 (A130123 n).toNat * A358967 n

end

end A248034.P5303024184110668786

/-! ## A248034.P9774055812208526620

`A358967(n)%A005117(A035312(n))`
-/

namespace A248034.P9774055812208526620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358967 n) (A005117 (A035312 n).toNat)

end

end A248034.P9774055812208526620

/-! ## A248034.P8550183280039810604

`A358967(n)+A000007(A007521(3*n+4))`
-/

namespace A248034.P8550183280039810604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358967 n + A000007 (A007521 (3 * n + 4)).toNat

end

end A248034.P8550183280039810604

/-! ## A248034.P17480467829783205894

`A001222(2^A358967(n))`
-/

namespace A248034.P17480467829783205894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A358967 n : ℤ))).toNat

end

end A248034.P17480467829783205894

/-! ## A248034.P13670359513376910541

`A000005(2^A358967(n))-1`
-/

namespace A248034.P13670359513376910541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A358967 n : ℤ))).toNat - 1

end

end A248034.P13670359513376910541

/-! ## A248034.P8470611767476694640

`A000120(A000225(A358967(n)))`
-/

namespace A248034.P8470611767476694640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000225 (A358967 n).toNat).toNat

end

end A248034.P8470611767476694640

/-!
# A248037: Numbers n such that the ratio of tripling steps to halving steps in the Collatz (3x+1) trajectory of n is greater than all previous ratios.

The programs for A248037, there is no canonical definition to state claims against.
-/

/-! ## A248037.P9689243741293973909

`A123481(A043315(n+1))`
-/

namespace A248037.P9689243741293973909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123481 (A043315 (n + 1)).toNat

end

end A248037.P9689243741293973909

/-! ## A248037.P5334320711904713365

`A123481(A106649(n)+1)`
-/

namespace A248037.P5334320711904713365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123481 (A106649 n + 1).toNat

end

end A248037.P5334320711904713365

/-! ## A248037.P6229285971492779133

`A123481(n+1)+A000007(A165563(n))`
-/

namespace A248037.P6229285971492779133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123481 (n + 1) + A000007 (A165563 n).toNat

end

end A248037.P6229285971492779133

/-! ## A248037.P12984328526553294278

`A123481(n+1)%A005897(A002878(n))`
-/

namespace A248037.P12984328526553294278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123481 (n + 1)) (A005897 (A002878 n).toNat)

end

end A248037.P12984328526553294278

/-! ## A248037.P969701959595896108

`A123481(n+1)+A000007(A020714(n+1))`
-/

namespace A248037.P969701959595896108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123481 (n + 1) + A000007 (A020714 (n + 1)).toNat

end

end A248037.P969701959595896108

/-!
# A248038: 3n concatenated with itself.

The programs for A248038, the canonical program `A248038.P16100474791484475395` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248038 has offset 1).

The definition of A248038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248038.P16100474791484475395

`A020338(3*(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248038

/-- `A020338(3*(n+1))` -/
def P16100474791484475395.Spec : Prop :=
  ∀ n, P16100474791484475395.a n = A248038 (n + 1)

theorem P16100474791484475395.correct : P16100474791484475395.Spec := by
  intro n
  simp only [A248038, Nat.add_sub_cancel]

end A248038

/-! ## A248038.P14765423562791263931

`A127423(3*(n+1))+1`
-/

namespace A248038.P14765423562791263931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (3 * (n + 1)) + 1

end

end A248038.P14765423562791263931

namespace A248038

/-- `A127423(3*(n+1))+1` -/
def P14765423562791263931.Spec : Prop :=
  ∀ n, P14765423562791263931.a n = A248038 (n + 1)

end A248038

/-! ## A248038.P179206251488848160

`A111708(3*n+2)+6*(n+1)`
-/

namespace A248038.P179206251488848160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 (3 * n + 2) + (6 * (n + 1) : ℤ)

end

end A248038.P179206251488848160

namespace A248038

/-- `A111708(3*n+2)+6*(n+1)` -/
def P179206251488848160.Spec : Prop :=
  ∀ n, P179206251488848160.a n = A248038 (n + 1)

end A248038

/-! ## A248038.P16133344559679423390

`record[A020338(A004483(n)+1)]`
-/

namespace A248038.P16133344559679423390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A004483 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248038.P16133344559679423390

namespace A248038

/-- `record[A020338(A004483(n)+1)]` -/
def P16133344559679423390.Spec : Prop :=
  ∀ n, P16133344559679423390.a n = A248038 (n + 1)

end A248038

/-! ## A248038.P7543180681595340629

`record[A020338(A264756(n+3))]`
-/

namespace A248038.P7543180681595340629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A264756 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248038.P7543180681595340629

namespace A248038

/-- `record[A020338(A264756(n+3))]` -/
def P7543180681595340629.Spec : Prop :=
  ∀ n, P7543180681595340629.a n = A248038 (n + 1)

end A248038

/-! ## A248038.P5304500231195328437

`record[A020338(dr(A338754(n+1))+n+1)]`
-/

namespace A248038.P5304500231195328437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (SequenceMachineLib.digitalRoot (A338754 (n + 1)) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248038.P5304500231195328437

namespace A248038

/-- `record[A020338(dr(A338754(n+1))+n+1)]` -/
def P5304500231195328437.Spec : Prop :=
  ∀ n, P5304500231195328437.a n = A248038 (n + 1)

end A248038

/-! ## A248038.P15107749235917825949

`A248378(6*n+3)+1`
-/

namespace A248038.P15107749235917825949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (6 * n + 3) + 1

end

end A248038.P15107749235917825949

namespace A248038

/-- `A248378(6*n+3)+1` -/
def P15107749235917825949.Spec : Prop :=
  ∀ n, P15107749235917825949.a n = A248038 (n + 1)

end A248038

/-!
# A248039: Numbers n such that n*A007954(n) contains the same distinct digits as n.

The programs for A248039, there is no canonical definition to state claims against.
-/

/-! ## A248039.P8934928542257071569

`A000042(A197805(2*n+1))%A117887(n+1)`
-/

namespace A248039.P8934928542257071569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (A197805 (2 * n + 1)).toNat) (A117887 (n + 1))

end

end A248039.P8934928542257071569

/-!
# A248040: Numbers n such that n*digsum(n) contains the same distinct digits as n.

The programs for A248040, there is no canonical definition to state claims against.
-/

/-! ## A248040.P16521541544505166124

`∩[A284375(n+1), A017173(n)]`
-/

namespace A248040.P16521541544505166124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248040.P16521541544505166124

/-! ## A248040.P1418520279101349624

`∩[A284375(n+1), A326833(n+1)]`
-/

namespace A248040.P1418520279101349624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248040.P1418520279101349624

/-!
# A248043: Inverse permutation to A248024.

The programs for A248043, there is no canonical definition to state claims against.
-/

/-! ## A248043.P8978236035709745025

`A257276(n+1)+A010054(A003242(n+4))`
-/

namespace A248043.P8978236035709745025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257276 (n + 1) + A010054 (A003242 (n + 4)).toNat

end

end A248043.P8978236035709745025

/-! ## A248043.P14611728817992831287

`A257276(A257275(n+1))+∑{digits}[n, and(8, #)/8]`
-/

namespace A248043.P14611728817992831287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257276 (A257275 (n + 1)).toNat : ℚ) + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.land 8 x : ℚ) / 8).sum

end

end A248043.P14611728817992831287

/-! ## A248043.P12462912927359203333

`A308995(n)+A257276(A257275(n+1))`
-/

namespace A248043.P12462912927359203333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308995 n + A257276 (A257275 (n + 1)).toNat

end

end A248043.P12462912927359203333

/-! ## A248043.P17626828699268615329

`A382425(A279568(n))+A257276(n+1)`
-/

namespace A248043.P17626828699268615329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382425 (A279568 n).toNat + A257276 (n + 1)

end

end A248043.P17626828699268615329

/-! ## A248043.P903012801225833722

`A257276(A257275(n+1))+A257265(A257251(n+1))`
-/

namespace A248043.P903012801225833722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257276 (A257275 (n + 1)).toNat + A257265 (A257251 (n + 1)).toNat

end

end A248043.P903012801225833722

/-!
# A248045: (2*(n-1))! * (2*n-1)! / (n * (n-1)!^3).

The programs for A248045, the canonical program `A248045.P16949698473323145720` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248045 has offset 1).

The definition of A248045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248045.P16949698473323145720

`(2*n)!*(2*(n+1)-1)!/((n+1)*n!^3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248045

/-- `(2*n)!*(2*(n+1)-1)!/((n+1)*n!^3)` -/
def P16949698473323145720.Spec : Prop :=
  ∀ n, P16949698473323145720.a n = (A248045 (n + 1) : ℚ)

end A248045

/-! ## A248045.P15215737191478401247

`C(2*n, n)*C(Δ[n²], n)*n!`
-/

namespace A248045.P15215737191478401247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat n * Nat.factorial n

end

end A248045.P15215737191478401247

namespace A248045

/-- `C(2*n, n)*C(Δ[n²], n)*n!` -/
def P15215737191478401247.Spec : Prop :=
  ∀ n, (P15215737191478401247.a n : ℤ) = A248045 (n + 1)

end A248045

/-! ## A248045.P14060604840674525785

`n!*C(2*n, n)*∏[4-2/(n+1)]/2`
-/

namespace A248045.P14060604840674525785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.choose (2 * n) n : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A248045.P14060604840674525785

namespace A248045

/-- `n!*C(2*n, n)*∏[4-2/(n+1)]/2` -/
def P14060604840674525785.Spec : Prop :=
  ∀ n, P14060604840674525785.a n = (A248045 (n + 1) : ℚ)

end A248045

/-! ## A248045.P3668782195609749402

`∏[4-2/(n+1)]/2*∏[floor(abs(4*n-ϕ))]`
-/

namespace A248045.P3668782195609749402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A248045.P3668782195609749402

namespace A248045

/-- `∏[4-2/(n+1)]/2*∏[floor(abs(4*n-ϕ))]` -/
def P3668782195609749402.Spec : Prop :=
  ∀ n, P3668782195609749402.a n = (A248045 (n + 1) : ℚ)

end A248045

/-! ## A248045.P6401686522100489715

`abs(∏[2-4*n]/2*A001700(n))`
-/

namespace A248045.P6401686522100489715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (4 * n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * (A001700 n : ℚ)|

end

end A248045.P6401686522100489715

namespace A248045

/-- `abs(∏[2-4*n]/2*A001700(n))` -/
def P6401686522100489715.Spec : Prop :=
  ∀ n, P6401686522100489715.a n = (A248045 (n + 1) : ℚ)

end A248045

/-!
# A248048: Numerator of u(n) where u(n) = (u(n-1) + u(n-2)) * (u(n-2) + u(n-3)) / u(n-4) with u(0) = -1, u(1) = u(2) = u(3) = 1.

The programs for A248048, the canonical program `A248048.P9971045442605197272` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248048 has offset 0).

The definition of A248048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248048.P9971045442605197272

`(a(n-1)+a(n-2))*(a(n-2)+a(n-3))/a(n-4)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248048

/-- `(a(n-1)+a(n-2))*(a(n-2)+a(n-3))/a(n-4)` -/
def P9971045442605197272.Spec : Prop :=
  ∀ n, P9971045442605197272.a n = (A248048 n : ℚ)

end A248048

/-!
# A248049: a(n) = (a(n-1) + a(n-2)) * (a(n-2) + a(n-3)) / a(n-4) with a(0) = 2, a(1) = a(2) = a(3) = 1.

The programs for A248049, the canonical program `A248049.P4620029399149233694` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248049 has offset 0).

The definition of A248049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248049.P4620029399149233694

`(a(n-1)+a(n-2))*(a(n-2)+a(n-3))/a(n-4)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248049

/-- `(a(n-1)+a(n-2))*(a(n-2)+a(n-3))/a(n-4)` -/
def P4620029399149233694.Spec : Prop :=
  ∀ n, P4620029399149233694.a n = (A248049 n : ℚ)

end A248049

/-! ## A248049.P4879040043055110778

`2^C((n+1)², 64)²*abs(2-n)!`
-/

namespace A248049.P4879040043055110778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose ((n + 1) ^ 2) 64 ^ 2 * Nat.factorial |2 - (n : ℤ)|.toNat

end

end A248049.P4879040043055110778

namespace A248049

/-- `2^C((n+1)², 64)²*abs(2-n)!` -/
def P4879040043055110778.Spec : Prop :=
  ∀ n, (P4879040043055110778.a n : ℤ) = A248049 n

end A248049

/-! ## A248049.P2892993833235702239

`∏{e}[or(1, A024062(n)+3*a(n-1)+1), #!]` with `a(0)=4, a(1)=2`
-/

namespace A248049.P2892993833235702239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  Int.lor 1 (A024062 n + (3 * f1 (n - 1) + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A248049.P2892993833235702239

namespace A248049

/-- `∏{e}[or(1, A024062(n)+3*a(n-1)+1), #!]` -/
def P2892993833235702239.Spec : Prop :=
  ∀ n, (P2892993833235702239.a n : ℤ) = A248049 n

end A248049

/-!
# A248050: Lexicographically earliest increasing sequence such that a(n) equals the sum of digits of the terms up to and including a(n).

The programs for A248050, there is no canonical definition to state claims against.
-/

/-! ## A248050.P13022395326370832361

`record[A008591(n)-A193581(A118759(n))]`
-/

namespace A248050.P13022395326370832361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n - A193581 (A118759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248050.P13022395326370832361

/-! ## A248050.P13193090250178779834

`record[A004185(n)%A065641(n+1)+8*n]`
-/

namespace A248050.P13193090250178779834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) (A065641 (n + 1)) + (8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248050.P13193090250178779834

/-! ## A248050.P10004186369620422861

`record[A008590(n)+A004185(n)%A065641(n+1)]`
-/

namespace A248050.P10004186369620422861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + Int.tmod (A004185 n) (A065641 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248050.P10004186369620422861

/-! ## A248050.P4294327408638735160

`record[A066568(A066568(n)%A180383(n+1))]`
-/

namespace A248050.P4294327408638735160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (Int.tmod (A066568 n) (A180383 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248050.P4294327408638735160

/-! ## A248050.P10891074748556643834

`record[A066568(A230099(n)+A087052(n))]`
-/

namespace A248050.P10891074748556643834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A230099 n + A087052 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248050.P10891074748556643834

/-!
# A248053: G.f.: Sum_{n>=0} x^n / (1-4*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * 2^k * x^k] * [Sum_{k=0..n} C(n,k)^2 * 4^k * x^k].

The programs for A248053, there is no canonical definition to state claims against.
-/

/-! ## A248053.P13409333171398067652

`A004273(or(n, A186266(n)))`
-/

namespace A248053.P13409333171398067652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.lor (n : ℤ) (A186266 n)).toNat

end

end A248053.P13409333171398067652

/-!
# A248055: G.f.: Sum_{n>=0} x^n / (1-4*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * 4^k * x^k].

The programs for A248055, there is no canonical definition to state claims against.
-/

/-! ## A248055.P16185100519980197314

`∑[A122797(∏[A276517(n+1)])]`
-/

namespace A248055.P16185100519980197314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276517 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248055.P16185100519980197314

/-!
# A248056: Positions of 0,0 in the Thue-Morse sequence (A010060).

The programs for A248056, the canonical program `A248056.P11690070156917874997` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248056 has offset 1).

The definition of A248056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091785, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248056.P13488339318884035260

`A157970(n+1)+1`
-/

namespace A248056.P13488339318884035260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157970 (n + 1) + 1

end

end A248056.P13488339318884035260

namespace A248056

/-- `A157970(n+1)+1` -/
def P13488339318884035260.Spec : Prop :=
  ∀ n, P13488339318884035260.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P11690070156917874997

`2*A091785(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248056

/-- `2*A091785(n+1)` -/
def P11690070156917874997.Spec : Prop :=
  ∀ n, P11690070156917874997.a n = A248056 (n + 1)

theorem P11690070156917874997.correct : P11690070156917874997.Spec := by
  intro n
  simp only [A248056, Nat.add_sub_cancel]

end A248056

/-! ## A248056.P16143309622480494225

`ceil(A233388(n+1)/2)`
-/

namespace A248056.P16143309622480494225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233388 (n + 1) : ℚ) / 2⌉

end

end A248056.P16143309622480494225

namespace A248056

/-- `ceil(A233388(n+1)/2)` -/
def P16143309622480494225.Spec : Prop :=
  ∀ n, P16143309622480494225.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P10928531494187716858

`2*(A285961(n+1)-(n+1))`
-/

namespace A248056.P10928531494187716858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285961 (n + 1) - (n + 1 : ℤ))

end

end A248056.P10928531494187716858

namespace A248056

/-- `2*(A285961(n+1)-(n+1))` -/
def P10928531494187716858.Spec : Prop :=
  ∀ n, P10928531494187716858.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P12485981055043070715

`2*(A104248(n+1)+A091855(n+1))`
-/

namespace A248056.P12485981055043070715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104248 (n + 1) + A091855 (n + 1))

end

end A248056.P12485981055043070715

namespace A248056

/-- `2*(A104248(n+1)+A091855(n+1))` -/
def P12485981055043070715.Spec : Prop :=
  ∀ n, P12485981055043070715.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P787394741790041443

`eq[5, A254655(n+1)]`
-/

namespace A248056.P787394741790041443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248056.P787394741790041443

namespace A248056

/-- `eq[5, A254655(n+1)]` -/
def P787394741790041443.Spec : Prop :=
  ∀ n, (P787394741790041443.a n : ℤ) = A248056 (n + 1)

end A248056

/-! ## A248056.P17202640902691179098

`filter[A125592(n+2), A217586(#)]`
-/

namespace A248056.P17202640902691179098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A248056.P17202640902691179098

namespace A248056

/-- `filter[A125592(n+2), A217586(#)]` -/
def P17202640902691179098.Spec : Prop :=
  ∀ n, P17202640902691179098.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P788718101537784619

`filter[A125592(n+2), A359832(#)]`
-/

namespace A248056.P788718101537784619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A248056.P788718101537784619

namespace A248056

/-- `filter[A125592(n+2), A359832(#)]` -/
def P788718101537784619.Spec : Prop :=
  ∀ n, P788718101537784619.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P16808618616009408890

`A036554(2*(n+1))`
-/

namespace A248056.P16808618616009408890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (2 * (n + 1))

end

end A248056.P16808618616009408890

namespace A248056

/-- `A036554(2*(n+1))` -/
def P16808618616009408890.Spec : Prop :=
  ∀ n, P16808618616009408890.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P6633087558255351008

`A079523(2*(n+1))+1`
-/

namespace A248056.P6633087558255351008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (2 * (n + 1)) + 1

end

end A248056.P6633087558255351008

namespace A248056

/-- `A079523(2*(n+1))+1` -/
def P6633087558255351008.Spec : Prop :=
  ∀ n, P6633087558255351008.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P14542211103976530802

`A072939(2*(n+1))-1`
-/

namespace A248056.P14542211103976530802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (2 * (n + 1)) - 1

end

end A248056.P14542211103976530802

namespace A248056

/-- `A072939(2*(n+1))-1` -/
def P14542211103976530802.Spec : Prop :=
  ∀ n, P14542211103976530802.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P18298716841326573226

`A162648(2*(n+1))+2`
-/

namespace A248056.P18298716841326573226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (2 * (n + 1)) + 2

end

end A248056.P18298716841326573226

namespace A248056

/-- `A162648(2*(n+1))+2` -/
def P18298716841326573226.Spec : Prop :=
  ∀ n, P18298716841326573226.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P9622162122626843688

`2*A003159(2*(n+1))`
-/

namespace A248056.P9622162122626843688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 (2 * (n + 1))

end

end A248056.P9622162122626843688

namespace A248056

/-- `2*A003159(2*(n+1))` -/
def P9622162122626843688.Spec : Prop :=
  ∀ n, P9622162122626843688.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P4850402709660198733

`A108269(2*(n+1))/2`
-/

namespace A248056.P4850402709660198733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 (2 * (n + 1)) : ℚ) / 2

end

end A248056.P4850402709660198733

namespace A248056

/-- `A108269(2*(n+1))/2` -/
def P4850402709660198733.Spec : Prop :=
  ∀ n, P4850402709660198733.a n = (A248056 (n + 1) : ℚ)

end A248056

/-! ## A248056.P4116800142250405657

`A234648(2*(n+1))/4`
-/

namespace A248056.P4116800142250405657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234648 (2 * (n + 1)) : ℚ) / 4

end

end A248056.P4116800142250405657

namespace A248056

/-- `A234648(2*(n+1))/4` -/
def P4116800142250405657.Spec : Prop :=
  ∀ n, P4116800142250405657.a n = (A248056 (n + 1) : ℚ)

end A248056

/-! ## A248056.P11157281571436575417

`filter[A036554(n+1), A127254(#)]`
-/

namespace A248056.P11157281571436575417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A248056.P11157281571436575417

namespace A248056

/-- `filter[A036554(n+1), A127254(#)]` -/
def P11157281571436575417.Spec : Prop :=
  ∀ n, P11157281571436575417.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P18121229971041746791

`filter[A036554(n+1), A254651(#)]`
-/

namespace A248056.P18121229971041746791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A248056.P18121229971041746791

namespace A248056

/-- `filter[A036554(n+1), A254651(#)]` -/
def P18121229971041746791.Spec : Prop :=
  ∀ n, P18121229971041746791.a n = A248056 (n + 1)

end A248056

/-! ## A248056.P15374039312891286905

`∩[A036554(n+1), A125592(n+1)]`
-/

namespace A248056.P15374039312891286905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248056.P15374039312891286905

namespace A248056

/-- `∩[A036554(n+1), A125592(n+1)]` -/
def P15374039312891286905.Spec : Prop :=
  ∀ n, (P15374039312891286905.a n : ℤ) = A248056 (n + 1)

end A248056

/-! ## A248056.P13786469156200249712

`A003157(2*(n+1))-A005843(n+1)`
-/

namespace A248056.P13786469156200249712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (2 * (n + 1)) - A005843 (n + 1)

end

end A248056.P13786469156200249712

namespace A248056

/-- `A003157(2*(n+1))-A005843(n+1)` -/
def P13786469156200249712.Spec : Prop :=
  ∀ n, P13786469156200249712.a n = A248056 (n + 1)

end A248056

/-!
# A248057: Positions of 1,1 in the Thue-Morse sequence (A010060).

The programs for A248057, the canonical program `A248057.P14508397276911672393` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248057 has offset 1).

The definition of A248057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157971, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A248057.P14508397276911672393

`A157971(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248057

/-- `A157971(n+1)+1` -/
def P14508397276911672393.Spec : Prop :=
  ∀ n, P14508397276911672393.a n = A248057 (n + 1)

theorem P14508397276911672393.correct : P14508397276911672393.Spec := by
  intro n
  simp only [A248057, Nat.add_sub_cancel]

end A248057

/-! ## A248057.P554440371414157447

`2*A091855(n+1)`
-/

namespace A248057.P554440371414157447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091855 (n + 1)

end

end A248057.P554440371414157447

namespace A248057

/-- `2*A091855(n+1)` -/
def P554440371414157447.Spec : Prop :=
  ∀ n, P554440371414157447.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P1882685249383362801

`2*(comp[xor(n+1, floor(n/2))]+1)`
-/

namespace A248057.P1882685249383362801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A248057.P1882685249383362801

namespace A248057

/-- `2*(comp[xor(n+1, floor(n/2))]+1)` -/
def P1882685249383362801.Spec : Prop :=
  ∀ n, (P1882685249383362801.a n : ℤ) = A248057 (n + 1)

end A248057

/-! ## A248057.P16400800599312567903

`2*comp[ceil(3*n/2)-and(n, 2*n)]`
-/

namespace A248057.P16400800599312567903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ - (Nat.land n (2 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248057.P16400800599312567903

namespace A248057

/-- `2*comp[ceil(3*n/2)-and(n, 2*n)]` -/
def P16400800599312567903.Spec : Prop :=
  ∀ n, (P16400800599312567903.a n : ℤ) = A248057 (n + 1)

end A248057

/-! ## A248057.P10249755709052133415

`2*(A285959(n+1)-(n+1))`
-/

namespace A248057.P10249755709052133415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285959 (n + 1) - (n + 1 : ℤ))

end

end A248057.P10249755709052133415

namespace A248057

/-- `2*(A285959(n+1)-(n+1))` -/
def P10249755709052133415.Spec : Prop :=
  ∀ n, P10249755709052133415.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P11236061754940638531

`eq[0, A127254(n)]`
-/

namespace A248057.P11236061754940638531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248057.P11236061754940638531

namespace A248057

/-- `eq[0, A127254(n)]` -/
def P11236061754940638531.Spec : Prop :=
  ∀ n, (P11236061754940638531.a n : ℤ) = A248057 (n + 1)

end A248057

/-! ## A248057.P11535042536490912467

`eq[5, A254378(n+1)]`
-/

namespace A248057.P11535042536490912467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A248057.P11535042536490912467

namespace A248057

/-- `eq[5, A254378(n+1)]` -/
def P11535042536490912467.Spec : Prop :=
  ∀ n, (P11535042536490912467.a n : ℤ) = A248057 (n + 1)

end A248057

/-! ## A248057.P1183819539069067726

`filter[A128309(n+1), A359832(#)]`
-/

namespace A248057.P1183819539069067726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A248057.P1183819539069067726

namespace A248057

/-- `filter[A128309(n+1), A359832(#)]` -/
def P1183819539069067726.Spec : Prop :=
  ∀ n, P1183819539069067726.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P17219511410817436178

`A036554(Δ[n²])`
-/

namespace A248057.P17219511410817436178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A248057.P17219511410817436178

namespace A248057

/-- `A036554(Δ[n²])` -/
def P17219511410817436178.Spec : Prop :=
  ∀ n, P17219511410817436178.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P6640061551076347274

`A079523(Δ[n²])+1`
-/

namespace A248057.P6640061551076347274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A248057.P6640061551076347274

namespace A248057

/-- `A079523(Δ[n²])+1` -/
def P6640061551076347274.Spec : Prop :=
  ∀ n, P6640061551076347274.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P8652943770574998067

`A072939(Δ[n²])-1`
-/

namespace A248057.P8652943770574998067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A248057.P8652943770574998067

namespace A248057

/-- `A072939(Δ[n²])-1` -/
def P8652943770574998067.Spec : Prop :=
  ∀ n, P8652943770574998067.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P4557070944763683783

`A162648(Δ[n²])+2`
-/

namespace A248057.P4557070944763683783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A248057.P4557070944763683783

namespace A248057

/-- `A162648(Δ[n²])+2` -/
def P4557070944763683783.Spec : Prop :=
  ∀ n, P4557070944763683783.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P3820452331052451651

`2*A003159(Δ[n²])`
-/

namespace A248057.P3820452331052451651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003159 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A248057.P3820452331052451651

namespace A248057

/-- `2*A003159(Δ[n²])` -/
def P3820452331052451651.Spec : Prop :=
  ∀ n, P3820452331052451651.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P1478642332495661328

`A108269(Δ[n²])/2`
-/

namespace A248057.P1478642332495661328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108269 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A248057.P1478642332495661328

namespace A248057

/-- `A108269(Δ[n²])/2` -/
def P1478642332495661328.Spec : Prop :=
  ∀ n, P1478642332495661328.a n = (A248057 (n + 1) : ℚ)

end A248057

/-! ## A248057.P4813403432070128408

`A171947(2*(n+1))-1`
-/

namespace A248057.P4813403432070128408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (2 * (n + 1)) - 1

end

end A248057.P4813403432070128408

namespace A248057

/-- `A171947(2*(n+1))-1` -/
def P4813403432070128408.Spec : Prop :=
  ∀ n, P4813403432070128408.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P3994570784622163826

`lcm(2, A036554(2*n+1))`
-/

namespace A248057.P3994570784622163826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A036554 (2 * n + 1))

end

end A248057.P3994570784622163826

namespace A248057

/-- `lcm(2, A036554(2*n+1))` -/
def P3994570784622163826.Spec : Prop :=
  ∀ n, (P3994570784622163826.a n : ℤ) = A248057 (n + 1)

end A248057

/-! ## A248057.P1360627288360480835

`A003158(2*n+1)-2*n`
-/

namespace A248057.P1360627288360480835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003158 (2 * n + 1) - (2 * n : ℤ)

end

end A248057.P1360627288360480835

namespace A248057

/-- `A003158(2*n+1)-2*n` -/
def P1360627288360480835.Spec : Prop :=
  ∀ n, P1360627288360480835.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P6077511917704733892

`A003156(2*n+1)+2*n+1`
-/

namespace A248057.P6077511917704733892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A248057.P6077511917704733892

namespace A248057

/-- `A003156(2*n+1)+2*n+1` -/
def P6077511917704733892.Spec : Prop :=
  ∀ n, P6077511917704733892.a n = A248057 (n + 1)

end A248057

/-! ## A248057.P5471766200719646906

`A003157(2*n+1)-(2*n+1)`
-/

namespace A248057.P5471766200719646906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A248057.P5471766200719646906

namespace A248057

/-- `A003157(2*n+1)-(2*n+1)` -/
def P5471766200719646906.Spec : Prop :=
  ∀ n, P5471766200719646906.a n = A248057 (n + 1)

end A248057

/-!
# A248060: Sums over successive antidiagonals of A248059.

The programs for A248060, there is no canonical definition to state claims against.
-/

/-! ## A248060.P4666895353883790051

`A355017(A281371(n)+2)`
-/

namespace A248060.P4666895353883790051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355017 (A281371 n + 2).toNat

end

end A248060.P4666895353883790051

/-! ## A248060.P3180137907860351985

`A225738(A000204(n+1))%A113130(n)`
-/

namespace A248060.P3180137907860351985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225738 ((A000204 (n + 1)).toNat + 10)) (A113130 n)

end

end A248060.P3180137907860351985

/-!
# A248062: Number of length n+5 0..2 arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248062, there is no canonical definition to state claims against.
-/

/-! ## A248062.P4684263873025684488

`A248068(∑[n+2])`
-/

namespace A248062.P4684263873025684488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248062.P4684263873025684488

/-! ## A248062.P9943158996835992136

`record[A248068(A000096(A028920(n)))]`
-/

namespace A248062.P9943158996835992136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248062.P9943158996835992136

/-! ## A248062.P7358486703014008523

`record[A248068(A000096(A065648(n)))]`
-/

namespace A248062.P7358486703014008523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248062.P7358486703014008523

/-! ## A248062.P4688289978547805503

`record[A248068(A000096(A133310(n)))]`
-/

namespace A248062.P4688289978547805503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248062.P4688289978547805503

/-! ## A248062.P13018452643201556384

`record[A248068(A000096(A330393(n)))]`
-/

namespace A248062.P13018452643201556384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (A330393 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248062.P13018452643201556384

/-!
# A248063: Number of length n+5 0..3 arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248063, there is no canonical definition to state claims against.
-/

/-! ## A248063.P3991522288262475009

`A248068(∑[n+3]+1)`
-/

namespace A248063.P3991522288262475009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248063.P3991522288262475009

/-! ## A248063.P6430155592874529288

`lcm(2, A248068(A034856(n+2)))`
-/

namespace A248063.P6430155592874529288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248068 (A034856 (n + 2)).toNat)

end

end A248063.P6430155592874529288

/-! ## A248063.P513756418114194237

`lcm((2-C(2, n))!, A248068(A052905(n)+3))`
-/

namespace A248063.P513756418114194237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (2 - (Nat.choose 2 n : ℤ)).toNat : ℤ) (A248068 (A052905 n + 3).toNat)

end

end A248063.P513756418114194237

/-! ## A248063.P2802049035267160221

`A248068(A141214(n)+1)+A000007(n+1)`
-/

namespace A248063.P2802049035267160221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A141214 n + 1).toNat + A000007 (n + 1)

end

end A248063.P2802049035267160221

/-!
# A248064: Number of length n+5 0..4 arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248064, there is no canonical definition to state claims against.
-/

/-! ## A248064.P6332263825809693405

`A248068(A141214(n+1))`
-/

namespace A248064.P6332263825809693405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A141214 (n + 1)).toNat

end

end A248064.P6332263825809693405

/-! ## A248064.P6707717856269141699

`A248068(A155212(n)+5)`
-/

namespace A248064.P6707717856269141699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A155212 n + 5).toNat

end

end A248064.P6707717856269141699

/-! ## A248064.P15789031259421702699

`A248068(A052905(n+1)+2)`
-/

namespace A248064.P15789031259421702699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A052905 (n + 1) + 2).toNat

end

end A248064.P15789031259421702699

/-! ## A248064.P9229232122259919270

`A248068(A000096(n+2)+n+2)`
-/

namespace A248064.P9229232122259919270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A248064.P9229232122259919270

/-! ## A248064.P9634787063460154298

`A248068(A167614(n+1)+2*n+1)`
-/

namespace A248064.P9634787063460154298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A248064.P9634787063460154298

/-!
# A248065: Number of length n+5 0..5 arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248065, there is no canonical definition to state claims against.
-/

/-! ## A248065.P12415855656672015771

`A248068(A046691(n+3))`
-/

namespace A248065.P12415855656672015771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A046691 (n + 3)).toNat

end

end A248065.P12415855656672015771

/-! ## A248065.P9442957368100340348

`A248068(Δ[A023545(n+1)])`
-/

namespace A248065.P9442957368100340348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (f1 (n + 1) - f1 n).toNat

end

end A248065.P9442957368100340348

/-! ## A248065.P14292185400529042620

`A248068(Δ[A111396(n)]-1)`
-/

namespace A248065.P14292185400529042620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (f1 (n + 1) - f1 n - 1).toNat

end

end A248065.P14292185400529042620

/-! ## A248065.P3666279184289047869

`A248068(∑[A020710(n)]+6)`
-/

namespace A248065.P3666279184289047869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A248065.P3666279184289047869

/-! ## A248065.P8542294870796268691

`A248068(A167499(n+4)-9)`
-/

namespace A248065.P8542294870796268691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167499 (n + 4) - 9).toNat

end

end A248065.P8542294870796268691

/-!
# A248066: Number of length n+5 0..6 arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248066, there is no canonical definition to state claims against.
-/

/-! ## A248066.P8596249578604669931

`A248068(A052905(n+3))`
-/

namespace A248066.P8596249578604669931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A052905 (n + 3)).toNat

end

end A248066.P8596249578604669931

/-! ## A248066.P341782895887490421

`A248068(A056119(n)+16)`
-/

namespace A248066.P341782895887490421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A056119 n + 16).toNat

end

end A248066.P341782895887490421

/-! ## A248066.P11734713687664869082

`A248068(A000217(n+6)-5)`
-/

namespace A248066.P11734713687664869082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000217 (n + 6) - 5).toNat

end

end A248066.P11734713687664869082

/-! ## A248066.P9845313689765620261

`A248068(A000124(n+6)-6)`
-/

namespace A248066.P9845313689765620261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000124 (n + 6) - 6).toNat

end

end A248066.P9845313689765620261

/-! ## A248066.P8855894690105369773

`A248068(Δ[A023545(n+2)]-1)`
-/

namespace A248066.P8855894690105369773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (f1 (n + 1) - f1 n - 1).toNat

end

end A248066.P8855894690105369773

/-!
# A248067: Number of length n+5 0..7 arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248067, there is no canonical definition to state claims against.
-/

/-! ## A248067.P9807766155126162204

`A248068(A055999(n+4))`
-/

namespace A248067.P9807766155126162204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A055999 (n + 4)).toNat

end

end A248067.P9807766155126162204

/-! ## A248067.P11128618869823133168

`A248068(A000096(n+6)-5)`
-/

namespace A248067.P11128618869823133168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (n + 6) - 5).toNat

end

end A248067.P11128618869823133168

/-! ## A248067.P2159506261498840577

`A248068(A000217(n+6)+n+1)`
-/

namespace A248067.P2159506261498840577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A248067.P2159506261498840577

/-! ## A248067.P1660863820293460658

`A248068(A167499(n+4)+2*(n+1))`
-/

namespace A248067.P1660863820293460658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167499 (n + 4) + (2 * (n + 1) : ℤ)).toNat

end

end A248067.P1660863820293460658

/-! ## A248067.P16381075192473909053

`A248068(A000326(n+11)%A000096(n+11))`
-/

namespace A248067.P16381075192473909053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (Int.tmod (A000326 (n + 11)) (A000096 (n + 11))).toNat

end

end A248067.P16381075192473909053

/-!
# A248069: Number of length 1+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248069, there is no canonical definition to state claims against.
-/

/-! ## A248069.P4123897959832996669

`A001014(n+2)-A247996(n+1)`
-/

namespace A248069.P4123897959832996669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 2) - A247996 (n + 1)

end

end A248069.P4123897959832996669

/-! ## A248069.P14832588125465915590

`A248068(∑[n]+1)`
-/

namespace A248069.P14832588125465915590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248069.P14832588125465915590

/-! ## A248069.P14723453918725805219

`record[A248068(n+1)/A008459(n)]`
-/

namespace A248069.P14723453918725805219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248068 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248069.P14723453918725805219

/-! ## A248069.P2111349160382075719

`record[A248068(n+1)/A009766(n)]`
-/

namespace A248069.P2111349160382075719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248068 (n + 1) : ℚ) / (A009766 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248069.P2111349160382075719

/-! ## A248069.P6869672752711362461

`record[A248068(n+1)/A008292(n+1)]`
-/

namespace A248069.P6869672752711362461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248068 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248069.P6869672752711362461

/-!
# A248070: Number of length 2+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248070, there is no canonical definition to state claims against.
-/

/-! ## A248070.P1681165220268909638

`A248068(∑[n+1]+2)`
-/

namespace A248070.P1681165220268909638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248070.P1681165220268909638

/-! ## A248070.P9466082775131280824

`record[A248068(n+1)*A326822(n)]`
-/

namespace A248070.P9466082775131280824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248070.P9466082775131280824

/-! ## A248070.P17702839506620470800

`record[root(A248068(n+1), A130270(n+1))]`
-/

namespace A248070.P17702839506620470800
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248068 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248070.P17702839506620470800

/-! ## A248070.P1055117770487372859

`record[root(A248068(n+1), A237448(n+1))]`
-/

namespace A248070.P1055117770487372859
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248068 (n + 1) : ℝ) ^ (1 / (A237448 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248070.P1055117770487372859

/-! ## A248070.P775040692878430340

`A348033(2*n+3)+A248068(A000096(n)+3)`
-/

namespace A248070.P775040692878430340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (2 * n + 3) + A248068 (A000096 n + 3).toNat

end

end A248070.P775040692878430340

/-!
# A248071: Number of length 3+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248071, there is no canonical definition to state claims against.
-/

/-! ## A248071.P1514327920582638079

`A248068(∑[n+2]+4)`
-/

namespace A248071.P1514327920582638079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248071.P1514327920582638079

/-! ## A248071.P10956851180505267992

`A139553(n)*A248068(A167614(n+1))`
-/

namespace A248071.P10956851180505267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A248068 (A167614 (n + 1)).toNat

end

end A248071.P10956851180505267992

/-! ## A248071.P8483203869698614411

`char[A064707(n)]*A248068(A167614(n+1))`
-/

namespace A248071.P8483203869698614411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248068 (A167614 (n + 1)).toNat

end

end A248071.P8483203869698614411

/-! ## A248071.P7572818970665581356

`A033999(2*n)*A248068(A167614(n+1))`
-/

namespace A248071.P7572818970665581356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A248068 (A167614 (n + 1)).toNat

end

end A248071.P7572818970665581356

/-! ## A248071.P10830386296450362405

`A248068(A167614(n+1))%A248064(n+1)`
-/

namespace A248071.P10830386296450362405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248068 (A167614 (n + 1)).toNat) (A248064 (n + 1))

end

end A248071.P10830386296450362405

/-!
# A248072: Number of length 4+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248072, there is no canonical definition to state claims against.
-/

/-! ## A248072.P4134332900280870538

`A248068(A141214(n)+7)`
-/

namespace A248072.P4134332900280870538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A141214 n + 7).toNat

end

end A248072.P4134332900280870538

/-! ## A248072.P13387928499248732910

`A248068(A052905(n)+9)`
-/

namespace A248072.P13387928499248732910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A052905 n + 9).toNat

end

end A248072.P13387928499248732910

/-! ## A248072.P13008935390921988855

`A248068(A055999(n)+10)`
-/

namespace A248072.P13008935390921988855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A055999 n + 10).toNat

end

end A248072.P13008935390921988855

/-! ## A248072.P16734733402078858855

`A248068(A167614(n+2)+1)`
-/

namespace A248072.P16734733402078858855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167614 (n + 2) + 1).toNat

end

end A248072.P16734733402078858855

/-! ## A248072.P11453645434668903699

`A248068(A166136(n+2)-2)`
-/

namespace A248072.P11453645434668903699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A166136 (n + 2) - 2).toNat

end

end A248072.P11453645434668903699

/-!
# A248073: Number of length 5+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248073, there is no canonical definition to state claims against.
-/

/-! ## A248073.P10968113772687438588

`A248068(A167499(n+3))`
-/

namespace A248073.P10968113772687438588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167499 (n + 3)).toNat

end

end A248073.P10968113772687438588

/-! ## A248073.P14425940692999337727

`A248068(A155212(n)+13)`
-/

namespace A248073.P14425940692999337727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A155212 n + 13).toNat

end

end A248073.P14425940692999337727

/-! ## A248073.P2780682854831799198

`A248068(A000124(n+4)+4)`
-/

namespace A248073.P2780682854831799198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000124 (n + 4) + 4).toNat

end

end A248073.P2780682854831799198

/-! ## A248073.P15183590676978202736

`A248068(A000217(n+4)+5)`
-/

namespace A248073.P15183590676978202736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000217 (n + 4) + 5).toNat

end

end A248073.P15183590676978202736

/-! ## A248073.P18230735775951330251

`A248068(A167614(n+5)-(2*n+9))`
-/

namespace A248073.P18230735775951330251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167614 (n + 5) - (2 * n + 9 : ℤ)).toNat

end

end A248073.P18230735775951330251

/-!
# A248074: Number of length 6+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248074, there is no canonical definition to state claims against.
-/

/-! ## A248074.P9921907620006918923

`A248068(A166136(n+4))`
-/

namespace A248074.P9921907620006918923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A166136 (n + 4)).toNat

end

end A248074.P9921907620006918923

/-! ## A248074.P12852892203131546645

`A248068(∑[A020710(n)]+16)`
-/

namespace A248074.P12852892203131546645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A248074.P12852892203131546645

/-! ## A248074.P16169456500084267960

`A248068(A167499(n+4)+1)`
-/

namespace A248074.P16169456500084267960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167499 (n + 4) + 1).toNat

end

end A248074.P16169456500084267960

/-! ## A248074.P12754916932822387312

`A248068(A000124(n+5)+5)`
-/

namespace A248074.P12754916932822387312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000124 (n + 5) + 5).toNat

end

end A248074.P12754916932822387312

/-! ## A248074.P339657117659563390

`A248068(A000217(n+5)+6)`
-/

namespace A248074.P339657117659563390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000217 (n + 5) + 6).toNat

end

end A248074.P339657117659563390

/-!
# A248075: Number of length 7+5 0..n arrays with some disjoint triples in each consecutive six terms having the same sum.

The programs for A248075, there is no canonical definition to state claims against.
-/

/-! ## A248075.P5200580172840810752

`A248068(A056119(n)+28)`
-/

namespace A248075.P5200580172840810752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A056119 n + 28).toNat

end

end A248075.P5200580172840810752

/-! ## A248075.P15629784074833784367

`A248068(A167499(n+5)+2)`
-/

namespace A248075.P15629784074833784367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A167499 (n + 5) + 2).toNat

end

end A248075.P15629784074833784367

/-! ## A248075.P1816010663435177128

`A248068(A000217(n+6)+7)`
-/

namespace A248075.P1816010663435177128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000217 (n + 6) + 7).toNat

end

end A248075.P1816010663435177128

/-! ## A248075.P16333680312081038763

`A248068(A046691(n+6)-A004277(n+2))`
-/

namespace A248075.P16333680312081038763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A046691 (n + 6) - A004277 (n + 2)).toNat

end

end A248075.P16333680312081038763

/-! ## A248075.P6993211802944163508

`A248068(A000096(n+9)-A016825(n+6))`
-/

namespace A248075.P6993211802944163508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248068 (A000096 (n + 9) - A016825 (n + 6)).toNat

end

end A248075.P6993211802944163508

/-!
# A248076: Partial sums of the sum of the 5th powers of the divisors of n: Sum_{i=1..n} sigma_5(i).

The programs for A248076, the canonical program `A248076.P13847461762608899525` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248076 has offset 1).

The definition of A248076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248076.P13847461762608899525

`∑[∑{d}[n+1, #^5]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248076

/-- `∑[∑{d}[n+1, #^5]]` -/
def P13847461762608899525.Spec : Prop :=
  ∀ n, (P13847461762608899525.a n : ℤ) = A248076 (n + 1)

theorem P13847461762608899525.correct : P13847461762608899525.Spec := by
  intro n
  simp only [A248076, Nat.add_sub_cancel]

end A248076

/-! ## A248076.P16503135619709763925

`∑{d}[n+1, #^5]+a(n-1)` with `a(0)=1`
-/

namespace A248076.P16503135619709763925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 5 + a (n - 1)

end

end A248076.P16503135619709763925

namespace A248076

/-- `∑{d}[n+1, #^5]+a(n-1)` -/
def P16503135619709763925.Spec : Prop :=
  ∀ n, (P16503135619709763925.a n : ℤ) = A248076 (n + 1)

end A248076

/-! ## A248076.P5120581089205678060

`∑[A001160(n+1)]`
-/

namespace A248076.P5120581089205678060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248076.P5120581089205678060

namespace A248076

/-- `∑[A001160(n+1)]` -/
def P5120581089205678060.Spec : Prop :=
  ∀ n, P5120581089205678060.a n = A248076 (n + 1)

end A248076

/-! ## A248076.P7493940207321803418

`∑[A282050(n+1)/(n+1)]`
-/

namespace A248076.P7493940207321803418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282050 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248076.P7493940207321803418

namespace A248076

/-- `∑[A282050(n+1)/(n+1)]` -/
def P7493940207321803418.Spec : Prop :=
  ∀ n, P7493940207321803418.a n = (A248076 (n + 1) : ℚ)

end A248076

/-! ## A248076.P18198591155541840326

`∑[A282751(n+1)/(n+1)²]`
-/

namespace A248076.P18198591155541840326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282751 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248076.P18198591155541840326

namespace A248076

/-- `∑[A282751(n+1)/(n+1)²]` -/
def P18198591155541840326.Spec : Prop :=
  ∀ n, P18198591155541840326.a n = (A248076 (n + 1) : ℚ)

end A248076

/-! ## A248076.P5359578281750975336

`A109974(eq[6, A002260(n+1)])+a(n-1)` with `a(0)=1`
-/

namespace A248076.P5359578281750975336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + a (n - 1)

end

end A248076.P5359578281750975336

namespace A248076

/-- `A109974(eq[6, A002260(n+1)])+a(n-1)` -/
def P5359578281750975336.Spec : Prop :=
  ∀ n, P5359578281750975336.a n = A248076 (n + 1)

end A248076

/-!
# A248078: a(1) = 1; a(n+1) = a(n) + product of digits of a(n) + sum of digits of a(n).

The programs for A248078, there is no canonical definition to state claims against.
-/

/-! ## A248078.P3588630644632676770

`A161351(a(n-1))` with `a(0)=1`
-/

namespace A248078.P3588630644632676770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161351 (a (n - 1)).toNat

end

end A248078.P3588630644632676770

/-! ## A248078.P16497798121009232783

`A061762(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A248078.P16497798121009232783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061762 (a (n - 1)).toNat + a (n - 1)

end

end A248078.P16497798121009232783

/-! ## A248078.P17554545858069667717

`2*a(n-1)-A249121(a(n-1))` with `a(0)=1`
-/

namespace A248078.P17554545858069667717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A249121 (a (n - 1)).toNat

end

end A248078.P17554545858069667717

/-! ## A248078.P16028249343839739019

`A062028(a(n-1))+A007954(a(n-1))` with `a(0)=1`
-/

namespace A248078.P16028249343839739019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (a (n - 1)).toNat + A007954 (a (n - 1)).toNat

end

end A248078.P16028249343839739019

/-! ## A248078.P11852938470411290081

`a(n-1)+A007954(a(n-1))+A007953(a(n-1))` with `a(0)=1`
-/

namespace A248078.P11852938470411290081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007954 (a (n - 1)).toNat + A007953 (a (n - 1)).toNat)

end

end A248078.P11852938470411290081

/-!
# A248083: Subsequence of lesser of 2 terms of A095301 that are 2 apart.

The programs for A248083, there is no canonical definition to state claims against.
-/

/-! ## A248083.P2421599685134372803

`∩[A095301(n+1), A095301(n+3)-2]`
-/

namespace A248083.P2421599685134372803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095301 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248083.P2421599685134372803

/-!
# A248085: Initial prime of 4 primes in arithmetic progression with difference 12.

The programs for A248085, there is no canonical definition to state claims against.
-/

/-! ## A248085.P3583808900479130402

`p?[A185022(n+1)-12]`
-/

namespace A248085.P3583808900479130402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185022 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248085.P3583808900479130402

/-! ## A248085.P13360822866434601369

`p?[A137796(n+1)-24]`
-/

namespace A248085.P13360822866434601369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248085.P13360822866434601369

/-! ## A248085.P17477661984229432022

`∩[A015917(n+1), A137796(n+1)-24]`
-/

namespace A248085.P17477661984229432022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1) - 24

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248085.P17477661984229432022

/-! ## A248085.P9203238371360411989

`∩[A156104(n+1), A185022(n+1)]`
-/

namespace A248085.P9203238371360411989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248085.P9203238371360411989

/-! ## A248085.P7027549655869880988

`∩[A008578(n+1), A137796(n+1)-24]`
-/

namespace A248085.P7027549655869880988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1) - 24

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248085.P7027549655869880988

/-!
# A248086: Sum of the eccentricities of all vertices in the Lucas cube Lambda(n).

The programs for A248086, the canonical program `A248086.P7756710170363644050` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248086 has offset 0).

The definition of A248086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248086.P7756710170363644050

`A130472(n)+A023607(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248086

/-- `A130472(n)+A023607(n)` -/
def P7756710170363644050.Spec : Prop :=
  ∀ n, P7756710170363644050.a n = A248086 n

theorem P7756710170363644050.correct : P7756710170363644050.Spec := by
  intro n
  simp only [A248086]

end A248086

/-! ## A248086.P16680515798532095663

`A023607(n)-A001057(n)`
-/

namespace A248086.P16680515798532095663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n - A001057 n

end

end A248086.P16680515798532095663

namespace A248086

/-- `A023607(n)-A001057(n)` -/
def P16680515798532095663.Spec : Prop :=
  ∀ n, P16680515798532095663.a n = A248086 n

end A248086

/-! ## A248086.P13279744618004771725

`A023607(n)+∑[A038608(n)]`
-/

namespace A248086.P13279744618004771725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248086.P13279744618004771725

namespace A248086

/-- `A023607(n)+∑[A038608(n)]` -/
def P13279744618004771725.Spec : Prop :=
  ∀ n, P13279744618004771725.a n = A248086 n

end A248086

/-! ## A248086.P16199657597835707051

`∑[A094588(n)+A038608(n)]`
-/

namespace A248086.P16199657597835707051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n + A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248086.P16199657597835707051

namespace A248086

/-- `∑[A094588(n)+A038608(n)]` -/
def P16199657597835707051.Spec : Prop :=
  ∀ n, P16199657597835707051.a n = A248086 n

end A248086

/-! ## A248086.P6739549666357375772

`∑[A094588(n)]-A001057(n)`
-/

namespace A248086.P6739549666357375772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001057 n

end

end A248086.P6739549666357375772

namespace A248086

/-- `∑[A094588(n)]-A001057(n)` -/
def P6739549666357375772.Spec : Prop :=
  ∀ n, P6739549666357375772.a n = A248086 n

end A248086

/-! ## A248086.P7594378791356389393

`n*∑[A212804(n)]-A001057(n)`
-/

namespace A248086.P7594378791356389393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A001057 n

end

end A248086.P7594378791356389393

namespace A248086

/-- `n*∑[A212804(n)]-A001057(n)` -/
def P7594378791356389393.Spec : Prop :=
  ∀ n, P7594378791356389393.a n = A248086 n

end A248086

/-! ## A248086.P7900905413598156743

`A071045(n)+n*A000071(n+1)`
-/

namespace A248086.P7900905413598156743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n + (n : ℤ) * A000071 (n + 1)

end

end A248086.P7900905413598156743

namespace A248086

/-- `A071045(n)+n*A000071(n+1)` -/
def P7900905413598156743.Spec : Prop :=
  ∀ n, P7900905413598156743.a n = A248086 n

end A248086

/-! ## A248086.P14393608312439688421

`n*A000045(n+1)-A001057(n)`
-/

namespace A248086.P14393608312439688421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 1) - A001057 n

end

end A248086.P14393608312439688421

namespace A248086

/-- `n*A000045(n+1)-A001057(n)` -/
def P14393608312439688421.Spec : Prop :=
  ∀ n, P14393608312439688421.a n = A248086 n

end A248086

/-! ## A248086.P3215111082379447059

`∑[A038608(n)]+n*A000045(n+1)`
-/

namespace A248086.P3215111082379447059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A000045 (n + 1)

end

end A248086.P3215111082379447059

namespace A248086

/-- `∑[A038608(n)]+n*A000045(n+1)` -/
def P3215111082379447059.Spec : Prop :=
  ∀ n, P3215111082379447059.a n = A248086 n

end A248086

/-! ## A248086.P4700058575417197027

`n*(A000071(n+1)+1)-A001057(n)`
-/

namespace A248086.P4700058575417197027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000071 (n + 1) + 1) - A001057 n

end

end A248086.P4700058575417197027

namespace A248086

/-- `n*(A000071(n+1)+1)-A001057(n)` -/
def P4700058575417197027.Spec : Prop :=
  ∀ n, P4700058575417197027.a n = A248086 n

end A248086

/-! ## A248086.P12520909822926639335

`n*A000045(n+1)-A242601(2*n)`
-/

namespace A248086.P12520909822926639335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (n + 1) - A242601 (2 * n)

end

end A248086.P12520909822926639335

namespace A248086

/-- `n*A000045(n+1)-A242601(2*n)` -/
def P12520909822926639335.Spec : Prop :=
  ∀ n, P12520909822926639335.a n = A248086 n

end A248086

/-!
# A248087: Number of n-derangements that have an odd number of 2-cycles.

The programs for A248087, there is no canonical definition to state claims against.
-/

/-! ## A248087.P3907252391848947755

`A000166(n)-A347106(n)`
-/

namespace A248087.P3907252391848947755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A347106 n

end

end A248087.P3907252391848947755

/-! ## A248087.P1211232693309710461

`abs(A182386(n))-A347106(n)`
-/

namespace A248087.P1211232693309710461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A347106 n

end

end A248087.P1211232693309710461

/-! ## A248087.P15236755805021616529

`A008290(∑[n])-A347106(n)`
-/

namespace A248087.P15236755805021616529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A347106 n

end

end A248087.P15236755805021616529

/-! ## A248087.P15343873372192756030

`A086764(A000217(n))-A347106(n)`
-/

namespace A248087.P15343873372192756030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A000217 n).toNat - A347106 n

end

end A248087.P15343873372192756030

/-! ## A248087.P12175309429290272861

`A156984(∑[n])-A347106(n)`
-/

namespace A248087.P12175309429290272861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156984 (∑ j ∈ Finset.range (n + 1), f1 j) - A347106 n

end

end A248087.P12175309429290272861

/-!
# A248088: a(n) = Sum_{k=0..floor(n/4)} binomial(n-3k, k)*(-3)^(3k)*4^(n-4k).

The programs for A248088, the canonical program `A248088.P6865009749964042384` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248088 has offset 0).

The definition of A248088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248088.P6865009749964042384

`(1+3/n)*a(n-1)+(3+6/n)*a(n-2)+(9+9/n)*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248088

/-- `(1+3/n)*a(n-1)+(3+6/n)*a(n-2)+(9+9/n)*a(n-3)` -/
def P6865009749964042384.Spec : Prop :=
  ∀ n, P6865009749964042384.a n = (A248088 n : ℚ)

end A248088

/-! ## A248088.P18438791795607249711

`A103770(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A248088.P18438791795607249711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103770 n + 3 * a (n - 1)

end

end A248088.P18438791795607249711

namespace A248088

/-- `A103770(n)+3*a(n-1)` -/
def P18438791795607249711.Spec : Prop :=
  ∀ n, P18438791795607249711.a n = A248088 n

end A248088

/-!
# A248089: a(n) = Sum_{k=0..floor(n/4)} binomial(n-k, 3k)*(-3)^(3k)*4^(n-4k).

The programs for A248089, there is no canonical definition to state claims against.
-/

/-! ## A248089.P2146606533108169994

`A000302(n)-A036419(A009207(n))`
-/

namespace A248089.P2146606533108169994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A036419 (A009207 n).toNat

end

end A248089.P2146606533108169994

/-! ## A248089.P9680485575428538203

`A008859(n)²-A036419(A009207(n))`
-/

namespace A248089.P9680485575428538203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n ^ 2 - A036419 (A009207 n).toNat

end

end A248089.P9680485575428538203

/-!
# A248091: Expansion of x^3*(1-2x-x^2-x^3+x^4+x^5)/((1+x)*(1-3x+x^2-x^3+3x^4)).

The programs for A248091, the canonical program `A248091.P9541410947390686698` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248091 has offset 0).

The definition of A248091 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^3-2x^4-x^5-x^6+x^7+x^8)/(1-2x-2x^2+2x^4+3x^5))` (program `A248091.P9541410947390686698`, by `A248091.P9541410947390686698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248091.P9541410947390686698

`ogf((x^3-2x^4-x^5-x^6+x^7+x^8)/(1-2x-2x^2+2x^4+3x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248091

/-- `ogf((x^3-2x^4-x^5-x^6+x^7+x^8)/(1-2x-2x^2+2x^4+3x^5))` -/
def P9541410947390686698.Spec : Prop :=
  ∀ n, P9541410947390686698.a n = A248091 n

theorem P9541410947390686698.correct : P9541410947390686698.Spec := by
  intro n
  simp only [A248091]

end A248091

/-! ## A248091.P6028362054211749285

`A168201(A087803(n+1)-A139432(n))`
-/

namespace A248091.P6028362054211749285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A087803 (n + 1) - A139432 n).toNat

end

end A248091.P6028362054211749285

namespace A248091

/-- `A168201(A087803(n+1)-A139432(n))` -/
def P6028362054211749285.Spec : Prop :=
  ∀ n, P6028362054211749285.a n = A248091 n

end A248091

/-! ## A248091.P7025580408605538727

`A033182(xor(3, A198683(n+1)))`
-/

namespace A248091.P7025580408605538727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.xor 3 (A198683 (n + 1))).toNat

end

end A248091.P7025580408605538727

namespace A248091

/-- `A033182(xor(3, A198683(n+1)))` -/
def P7025580408605538727.Spec : Prop :=
  ∀ n, P7025580408605538727.a n = A248091 n

end A248091

/-! ## A248091.P15351100426156843357

`A156849(A358921(n+1))%A321405(n)`
-/

namespace A248091.P15351100426156843357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156849 (A358921 (n + 1)).toNat) (A321405 n)

end

end A248091.P15351100426156843357

namespace A248091

/-- `A156849(A358921(n+1))%A321405(n)` -/
def P15351100426156843357.Spec : Prop :=
  ∀ n, P15351100426156843357.a n = A248091 n

end A248091

/-! ## A248091.P6181602791393352873

`A033182(A198683(n+1)+A147524(n+1))`
-/

namespace A248091.P6181602791393352873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A198683 (n + 1) + A147524 (n + 1)).toNat

end

end A248091.P6181602791393352873

namespace A248091

/-- `A033182(A198683(n+1)+A147524(n+1))` -/
def P6181602791393352873.Spec : Prop :=
  ∀ n, P6181602791393352873.a n = A248091 n

end A248091

/-!
# A248092: Triangle read by rows: T(n,k) is the largest inversion number of the n-permutations having k cycles.

The programs for A248092, there is no canonical definition to state claims against.
-/

/-! ## A248092.P2040896519846716018

`A005812(lcm(A025581(n), A148139(n)))`
-/

namespace A248092.P2040896519846716018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (Int.lcm (A025581 n) (A148139 n))

end

end A248092.P2040896519846716018

/-! ## A248092.P16950559157494293794

`A167866(lcm(A084860(n), A261780(n)))`
-/

namespace A248092.P16950559157494293794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (Int.lcm (A084860 n) (A261780 n))

end

end A248092.P16950559157494293794

/-! ## A248092.P10855405004823484212

`A167866(A084860(n)*A295028(n+1))`
-/

namespace A248092.P10855405004823484212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A084860 n * A295028 (n + 1)).toNat

end

end A248092.P10855405004823484212

/-! ## A248092.P10600275957881493247

`A167866(A084860(n)^A295028(n+1))`
-/

namespace A248092.P10600275957881493247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (SequenceMachineLib.roundAway ((A084860 n : ℚ) ^ (A295028 (n + 1) : ℤ))).toNat

end

end A248092.P10600275957881493247

/-! ## A248092.P3116145185413068533

`A065770(A284507(n+1)^A261780(n))`
-/

namespace A248092.P3116145185413068533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (SequenceMachineLib.roundAway ((A284507 (n + 1) : ℚ) ^ (A261780 n : ℤ))).toNat

end

end A248092.P3116145185413068533

/-!
# A248094: The hyper-Wiener index of the hexagonal triangle T_n, defined in the He et al. reference.

The programs for A248094, the canonical program `A248094.P16153391290935946176` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248094 has offset 0).

The definition of A248094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248094.P16153391290935946176

`n*(66+407*n+670*n²+425*n^3+104*n^4+8*n^5)/40`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248094

/-- `n*(66+407*n+670*n²+425*n^3+104*n^4+8*n^5)/40` -/
def P16153391290935946176.Spec : Prop :=
  ∀ n, P16153391290935946176.a n = (A248094 n : ℚ)

end A248094

/-!
# A248096: Number of ordered trees with n edges such that non-leaf vertices at even (odd) level have an odd (even) number of children.

The programs for A248096, there is no canonical definition to state claims against.
-/

/-! ## A248096.P3130466563311730122

`A024327(A115593(n+3)+A104429(n))`
-/

namespace A248096.P3130466563311730122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A115593 (n + 3) + A104429 n).toNat

end

end A248096.P3130466563311730122

/-!
# A248098: a(n) = 1 + a(n-1) + a(n-2) + a(n-3) if n>=4; a(1) = a(2) = a(3) = 1.

The programs for A248098, the canonical program `A248098.P4725209609576629143` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248098 has offset 1).

The definition of A248098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+a(n-2)+a(n-3)` (program `A248098.P4725209609576629143`, by `A248098.P4725209609576629143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248098.P4725209609576629143

`1+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A248098

/-- `1+a(n-1)+a(n-2)+a(n-3)` -/
def P4725209609576629143.Spec : Prop :=
  ∀ n, (P4725209609576629143.a n : ℤ) = A248098 (n + 1)

theorem P4725209609576629143.correct : P4725209609576629143.Spec := by
  intro n
  simp only [A248098, Nat.add_sub_cancel]

end A248098

/-! ## A248098.P2220494767077783420

`ogf((1-x-x^2+2x^3)/(1-2x+x^4))`
-/

namespace A248098.P2220494767077783420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 2] [1, -2, 0, 0, 1] n

end

end A248098.P2220494767077783420

namespace A248098

/-- `ogf((1-x-x^2+2x^3)/(1-2x+x^4))` -/
def P2220494767077783420.Spec : Prop :=
  ∀ n, P2220494767077783420.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P649736378021815843

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A248098.P649736378021815843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A248098.P649736378021815843

namespace A248098

/-- `2*a(n-1)-a(n-4)` -/
def P649736378021815843.Spec : Prop :=
  ∀ n, P649736378021815843.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P1305687375208139119

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A248098.P1305687375208139119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A248098.P1305687375208139119

namespace A248098

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P1305687375208139119.Spec : Prop :=
  ∀ n, P1305687375208139119.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P9077496702279911823

`floor(a(n-1)-(a(n-4)-a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A248098.P9077496702279911823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A248098.P9077496702279911823

namespace A248098

/-- `floor(a(n-1)-(a(n-4)-a(n-1)))` -/
def P9077496702279911823.Spec : Prop :=
  ∀ n, P9077496702279911823.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P17253195833511167505

`3*A192804(n)-2`
-/

namespace A248098.P17253195833511167505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192804 n - 2

end

end A248098.P17253195833511167505

namespace A248098

/-- `3*A192804(n)-2` -/
def P17253195833511167505.Spec : Prop :=
  ∀ n, P17253195833511167505.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P14157003517624818962

`3*floor(A000213(n)/2)+1`
-/

namespace A248098.P14157003517624818962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(A000213 n : ℚ) / 2⌋ + 1

end

end A248098.P14157003517624818962

namespace A248098

/-- `3*floor(A000213(n)/2)+1` -/
def P14157003517624818962.Spec : Prop :=
  ∀ n, P14157003517624818962.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P294044892783536874

`A081172(n)+∑[A000073(n)]`
-/

namespace A248098.P294044892783536874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248098.P294044892783536874

namespace A248098

/-- `A081172(n)+∑[A000073(n)]` -/
def P294044892783536874.Spec : Prop :=
  ∀ n, P294044892783536874.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P7405038082345998090

`A000213(n)+A192804(n)-1`
-/

namespace A248098.P7405038082345998090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A192804 n - 1)

end

end A248098.P7405038082345998090

namespace A248098

/-- `A000213(n)+A192804(n)-1` -/
def P7405038082345998090.Spec : Prop :=
  ∀ n, P7405038082345998090.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P7748174867105062579

`∑[A000073(n)]+A000213(n)-A000073(n)`
-/

namespace A248098.P7748174867105062579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000213 n - A000073 n)

end

end A248098.P7748174867105062579

namespace A248098

/-- `∑[A000073(n)]+A000213(n)-A000073(n)` -/
def P7748174867105062579.Spec : Prop :=
  ∀ n, P7748174867105062579.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P16585645985955135659

`A081172(n)+∑[A000213(n)-A081172(n)]`
-/

namespace A248098.P16585645985955135659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248098.P16585645985955135659

namespace A248098

/-- `A081172(n)+∑[A000213(n)-A081172(n)]` -/
def P16585645985955135659.Spec : Prop :=
  ∀ n, P16585645985955135659.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P134386100549132600

`A008937(n)+A081172(n)-A000073(n+1)`
-/

namespace A248098.P134386100549132600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + (A081172 n - A000073 (n + 1))

end

end A248098.P134386100549132600

namespace A248098

/-- `A008937(n)+A081172(n)-A000073(n+1)` -/
def P134386100549132600.Spec : Prop :=
  ∀ n, P134386100549132600.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P14039597800886298884

`A202012(n)-A354784(n)`
-/

namespace A248098.P14039597800886298884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - A354784 n

end

end A248098.P14039597800886298884

namespace A248098

/-- `A202012(n)-A354784(n)` -/
def P14039597800886298884.Spec : Prop :=
  ∀ n, P14039597800886298884.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P5786574126964210538

`A202012(n)-Δ[A000213(n)]`
-/

namespace A248098.P5786574126964210538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - (f1 (n + 1) - f1 n)

end

end A248098.P5786574126964210538

namespace A248098

/-- `A202012(n)-Δ[A000213(n)]` -/
def P5786574126964210538.Spec : Prop :=
  ∀ n, P5786574126964210538.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P5092249266534232546

`A202012(n)-2*A000073(n)`
-/

namespace A248098.P5092249266534232546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - 2 * A000073 n

end

end A248098.P5092249266534232546

namespace A248098

/-- `A202012(n)-2*A000073(n)` -/
def P5092249266534232546.Spec : Prop :=
  ∀ n, P5092249266534232546.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P7140439727955626019

`A213967(n+1)-A001590(n+2)`
-/

namespace A248098.P7140439727955626019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213967 (n + 1) - A001590 (n + 2)

end

end A248098.P7140439727955626019

namespace A248098

/-- `A213967(n+1)-A001590(n+2)` -/
def P7140439727955626019.Spec : Prop :=
  ∀ n, P7140439727955626019.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P9829591879570913656

`A000213(n)+A202012(n)-A000213(n+1)`
-/

namespace A248098.P9829591879570913656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n + (A202012 n - A000213 (n + 1))

end

end A248098.P9829591879570913656

namespace A248098

/-- `A000213(n)+A202012(n)-A000213(n+1)` -/
def P9829591879570913656.Spec : Prop :=
  ∀ n, P9829591879570913656.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P2027048429929126467

`A202012(n)-Δ[A001590(n+1)+A001590(n)]`
-/

namespace A248098.P2027048429929126467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1) + A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - (f1 (n + 1) - f1 n)

end

end A248098.P2027048429929126467

namespace A248098

/-- `A202012(n)-Δ[A001590(n+1)+A001590(n)]` -/
def P2027048429929126467.Spec : Prop :=
  ∀ n, P2027048429929126467.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P15823047200512884337

`A202012(n)-Δ[A000073(n+2)-A000073(n)]`
-/

namespace A248098.P15823047200512884337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) - A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - (f1 (n + 1) - f1 n)

end

end A248098.P15823047200512884337

namespace A248098

/-- `A202012(n)-Δ[A000073(n+2)-A000073(n)]` -/
def P15823047200512884337.Spec : Prop :=
  ∀ n, P15823047200512884337.a n = A248098 (n + 1)

end A248098

/-! ## A248098.P15639536762971844240

`A202012(n)-Δ[A112476(n+2)-A112476(n)]`
-/

namespace A248098.P15639536762971844240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (n + 2) - A112476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n - (f1 (n + 1) - f1 n)

end

end A248098.P15639536762971844240

namespace A248098

/-- `A202012(n)-Δ[A112476(n+2)-A112476(n)]` -/
def P15639536762971844240.Spec : Prop :=
  ∀ n, P15639536762971844240.a n = A248098 (n + 1)

end A248098

/-!
# A248099: 

The programs for A248099, there is no canonical definition to state claims against.
-/

/-! ## A248099.P6843754285921744965

`Δ[a(n-1)+a(n-1)^n]` with `a(0)=1`
-/

namespace A248099.P6843754285921744965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A248099.P6843754285921744965

