import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C012
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

/-!
# A369900: a(n) is twice the sum of the first n binary digits of e minus n.

The programs for A369900, there is no canonical definition to state claims against.
-/

/-! ## A369900.P17764208855534967289

`a(n-1)+2*A004593(n+1)-1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A369900.P17764208855534967289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (n - 1) + 2 * A004593 (n + 1) - 1

end

end A369900.P17764208855534967289

/-!
# A369901: Proth numbers h*2^k+1, with odd h < 2^k, ordered first by k then by h.

The programs for A369901, there is no canonical definition to state claims against.
-/

/-! ## A369901.P1187708793710438097

`A080075(A120241(n+1))`
-/

namespace A369901.P1187708793710438097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (A120241 (n + 1)).toNat

end

end A369901.P1187708793710438097

/-! ## A369901.P11122845287227959946

`A387016(A001855(n+2))`
-/

namespace A369901.P11122845287227959946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387016 (A001855 (n + 2)).toNat

end

end A369901.P11122845287227959946

/-! ## A369901.P10319263703309604771

`A387016(A083652(n+1)-1)`
-/

namespace A369901.P10319263703309604771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387016 (A083652 (n + 1) - 1).toNat

end

end A369901.P10319263703309604771

/-! ## A369901.P10744672969258584106

`A053641(A053642(2*n+3)*A053644(2*n+3))`
-/

namespace A369901.P10744672969258584106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053641 (A053642 (2 * n + 3) * A053644 (2 * n + 3)).toNat

end

end A369901.P10744672969258584106

/-! ## A369901.P5215341804903180696

`A062050(A053644(2*n+3)*A233583(2*(n+2)))`
-/

namespace A369901.P5215341804903180696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A053644 (2 * n + 3) * A233583 (2 * (n + 2))).toNat

end

end A369901.P5215341804903180696

/-!
# A369902: Number of isomorphism classes of elliptic curves over the finite field of order prime(n) whose trace of Frobenius is zero.

The programs for A369902, there is no canonical definition to state claims against.
-/

/-! ## A369902.P17999577443734832173

`A006374(A000040(1+n))`
-/

namespace A369902.P17999577443734832173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A000040 (1 + n)).toNat

end

end A369902.P17999577443734832173

/-! ## A369902.P5459236673714731670

`A006374(A006005(n+1))`
-/

namespace A369902.P5459236673714731670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A006005 (n + 1)).toNat

end

end A369902.P5459236673714731670

/-! ## A369902.P12137129645628702299

`A006371(A100484(n+1))`
-/

namespace A369902.P12137129645628702299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A100484 (n + 1)).toNat

end

end A369902.P12137129645628702299

/-! ## A369902.P13574311638644938975

`A006374(A216886(n+1))`
-/

namespace A369902.P13574311638644938975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A216886 (n + 1)).toNat

end

end A369902.P13574311638644938975

/-! ## A369902.P17121303408467213936

`A006371(A001747(n+2))`
-/

namespace A369902.P17121303408467213936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A001747 (n + 2)).toNat

end

end A369902.P17121303408467213936

/-! ## A369902.P10271998006524834430

`A006374(A008578(n+2))`
-/

namespace A369902.P10271998006524834430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A008578 (n + 2)).toNat

end

end A369902.P10271998006524834430

/-! ## A369902.P7641984700884701030

`A006374(A075643(n+2))`
-/

namespace A369902.P7641984700884701030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A075643 (n + 2)).toNat

end

end A369902.P7641984700884701030

/-! ## A369902.P4007359421012389718

`A006371(A077017(n+2))`
-/

namespace A369902.P4007359421012389718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A077017 (n + 2)).toNat

end

end A369902.P4007359421012389718

/-! ## A369902.P7616802615370295222

`A006374(A182986(n+2))`
-/

namespace A369902.P7616802615370295222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A182986 (n + 2)).toNat

end

end A369902.P7616802615370295222

/-! ## A369902.P17430810954495293677

`A006374(A324050(n+2))`
-/

namespace A369902.P17430810954495293677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A324050 (n + 2)).toNat

end

end A369902.P17430810954495293677

/-!
# A369903: a(n) = Sum_{p|n, p prime} n^sigma(n/p).

The programs for A369903, there is no canonical definition to state claims against.
-/

/-! ## A369903.P5354277653361535164

`(n+1)*A255852(A302831(n))`
-/

namespace A369903.P5354277653361535164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A255852 (A302831 n).toNat

end

end A369903.P5354277653361535164

/-! ## A369903.P16297362041992313072

`(n+1)*A255852(A035506(n²))`
-/

namespace A369903.P16297362041992313072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A255852 (A035506 (n ^ 2)).toNat

end

end A369903.P16297362041992313072

/-!
# A369904: a(n) = n * Sum_{p|n, p prime} sigma(n/p) / p.

The programs for A369904, the canonical program `A369904.P7842773644825472258` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369904 has offset 1).

The definition of A369904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369904.P7842773644825472258

`∑{d}[n+1, #*A322078((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369904

/-- `∑{d}[n+1, #*A322078((n+1)/#)]` -/
def P7842773644825472258.Spec : Prop :=
  ∀ n, P7842773644825472258.a n = A369904 (n + 1)

theorem P7842773644825472258.correct : P7842773644825472258.Spec := by
  intro n
  simp only [A369904, Nat.add_sub_cancel]

end A369904

/-! ## A369904.P4346323162108633986

`∑{d}[n+1, A001221(#)*A069097((n+1)/#)]`
-/

namespace A369904.P4346323162108633986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P4346323162108633986

namespace A369904

/-- `∑{d}[n+1, A001221(#)*A069097((n+1)/#)]` -/
def P4346323162108633986.Spec : Prop :=
  ∀ n, P4346323162108633986.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P16928264805603556390

`∑{d}[n+1, A010051(#)*A064987((n+1)/#)]`
-/

namespace A369904.P16928264805603556390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A064987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P16928264805603556390

namespace A369904

/-- `∑{d}[n+1, A010051(#)*A064987((n+1)/#)]` -/
def P16928264805603556390.Spec : Prop :=
  ∀ n, P16928264805603556390.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P4619464427617950715

`∑{d}[n+1, A001157(#)*A117494((n+1)/#)]`
-/

namespace A369904.P4619464427617950715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P4619464427617950715

namespace A369904

/-- `∑{d}[n+1, A001157(#)*A117494((n+1)/#)]` -/
def P4619464427617950715.Spec : Prop :=
  ∀ n, P4619464427617950715.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P12667930961074961521

`∑{d}[n+1, A001001(#)*A143519((n+1)/#)]`
-/

namespace A369904.P12667930961074961521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P12667930961074961521

namespace A369904

/-- `∑{d}[n+1, A001001(#)*A143519((n+1)/#)]` -/
def P12667930961074961521.Spec : Prop :=
  ∀ n, P12667930961074961521.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P14308387788597676161

`∑{d}[n+1, A007434(#)*A323599((n+1)/#)]`
-/

namespace A369904.P14308387788597676161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P14308387788597676161

namespace A369904

/-- `∑{d}[n+1, A007434(#)*A323599((n+1)/#)]` -/
def P14308387788597676161.Spec : Prop :=
  ∀ n, P14308387788597676161.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P8354133890887532768

`∑{d}[n+1, A002618(#)*A369894((n+1)/#)]`
-/

namespace A369904.P8354133890887532768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P8354133890887532768

namespace A369904

/-- `∑{d}[n+1, A002618(#)*A369894((n+1)/#)]` -/
def P8354133890887532768.Spec : Prop :=
  ∀ n, P8354133890887532768.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P15622263447595917237

`∑{d}[n+1, A062799(#)*A341772((n+1)/#)]`
-/

namespace A369904.P15622263447595917237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P15622263447595917237

namespace A369904

/-- `∑{d}[n+1, A062799(#)*A341772((n+1)/#)]` -/
def P15622263447595917237.Spec : Prop :=
  ∀ n, P15622263447595917237.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P671718846223367058

`∑{d}[n+1, A057660(#)*A347134((n+1)/#)]`
-/

namespace A369904.P671718846223367058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A347134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P671718846223367058

namespace A369904

/-- `∑{d}[n+1, A057660(#)*A347134((n+1)/#)]` -/
def P671718846223367058.Spec : Prop :=
  ∀ n, P671718846223367058.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P14638503179540780413

`∑{d}[n+1, A038040(#)*A369779((n+1)/#)]`
-/

namespace A369904.P14638503179540780413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A369779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P14638503179540780413

namespace A369904

/-- `∑{d}[n+1, A038040(#)*A369779((n+1)/#)]` -/
def P14638503179540780413.Spec : Prop :=
  ∀ n, P14638503179540780413.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P11937566719616510724

`∑{d}[n+1, A321322(#)*A323600((n+1)/#)]`
-/

namespace A369904.P11937566719616510724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A323600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P11937566719616510724

namespace A369904

/-- `∑{d}[n+1, A321322(#)*A323600((n+1)/#)]` -/
def P11937566719616510724.Spec : Prop :=
  ∀ n, P11937566719616510724.a n = A369904 (n + 1)

end A369904

/-! ## A369904.P14802456384826079080

`∑{d}[n+1, A351600(#)*A369865((n+1)/#)]`
-/

namespace A369904.P14802456384826079080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351600 d * A369865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P14802456384826079080

namespace A369904

/-- `∑{d}[n+1, A351600(#)*A369865((n+1)/#)]` -/
def P14802456384826079080.Spec : Prop :=
  ∀ n, P14802456384826079080.a n = A369904 (n + 1)

end A369904

/-!
# A369906: Sum of the permanents of all 2 X 2 submatrices in the n X n Pascal matrix.

The programs for A369906, there is no canonical definition to state claims against.
-/

/-! ## A369906.P6151681432792754654

`A369559(A133263(n))%A145165(n)`
-/

namespace A369906.P6151681432792754654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369559 (A133263 n).toNat) (A145165 n)

end

end A369906.P6151681432792754654

/-! ## A369906.P1069318718025576949

`A333256(2^n)-(2^n-1)`
-/

namespace A369906.P1069318718025576949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (2 ^ n) - ((2 ^ n : ℤ) - 1)

end

end A369906.P1069318718025576949

/-!
# A369907: a(n) = n * Sum_{p|n, p prime} omega(n/p) / p.

The programs for A369907, the canonical program `A369907.P5930433476128637546` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369907 has offset 1).

The definition of A369907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369907.P10377423612144702294

`∑{d}[n+1, A008472(#)*A117494((n+1)/#)]`
-/

namespace A369907.P10377423612144702294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P10377423612144702294

namespace A369907

/-- `∑{d}[n+1, A008472(#)*A117494((n+1)/#)]` -/
def P10377423612144702294.Spec : Prop :=
  ∀ n, P10377423612144702294.a n = A369907 (n + 1)

end A369907

/-! ## A369907.P6535817141058636215

`∑{d}[n+1, A061397(#)*A069359((n+1)/#)]`
-/

namespace A369907.P6535817141058636215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P6535817141058636215

namespace A369907

/-- `∑{d}[n+1, A061397(#)*A069359((n+1)/#)]` -/
def P6535817141058636215.Spec : Prop :=
  ∀ n, P6535817141058636215.a n = A369907 (n + 1)

end A369907

/-! ## A369907.P5930433476128637546

`∑{d}[n+1, A010051(#)*A328260((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369907

/-- `∑{d}[n+1, A010051(#)*A328260((n+1)/#)]` -/
def P5930433476128637546.Spec : Prop :=
  ∀ n, P5930433476128637546.a n = A369907 (n + 1)

theorem P5930433476128637546.correct : P5930433476128637546.Spec := by
  intro n
  simp only [A369907, Nat.add_sub_cancel]

end A369907

/-! ## A369907.P6737242246135604819

`∑{d}[n+1, A001221(#)*A347104((n+1)/#)]`
-/

namespace A369907.P6737242246135604819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A347104 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P6737242246135604819

namespace A369907

/-- `∑{d}[n+1, A001221(#)*A347104((n+1)/#)]` -/
def P6737242246135604819.Spec : Prop :=
  ∀ n, P6737242246135604819.a n = A369907 (n + 1)

end A369907

/-! ## A369907.P6520337956826940218

`∑{d}[n+1, A000010(#)*A369744((n+1)/#)]`
-/

namespace A369907.P6520337956826940218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A369744 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P6520337956826940218

namespace A369907

/-- `∑{d}[n+1, A000010(#)*A369744((n+1)/#)]` -/
def P6520337956826940218.Spec : Prop :=
  ∀ n, P6520337956826940218.a n = A369907 (n + 1)

end A369907

/-! ## A369907.P15755473825390915947

`∑{d}[n+1, A137851(#)*A323599((n+1)/#)]`
-/

namespace A369907.P15755473825390915947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137851 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P15755473825390915947

namespace A369907

/-- `∑{d}[n+1, A137851(#)*A323599((n+1)/#)]` -/
def P15755473825390915947.Spec : Prop :=
  ∀ n, P15755473825390915947.a n = A369907 (n + 1)

end A369907

/-! ## A369907.P13931181485387521695

`∑{d}[n+1, A143519(#)*A329354((n+1)/#)]`
-/

namespace A369907.P13931181485387521695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A329354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P13931181485387521695

namespace A369907

/-- `∑{d}[n+1, A143519(#)*A329354((n+1)/#)]` -/
def P13931181485387521695.Spec : Prop :=
  ∀ n, P13931181485387521695.a n = A369907 (n + 1)

end A369907

/-!
# A369908: a(n) = Sum_{p|n, p prime} n^Omega(n/p).

The programs for A369908, the canonical program `A369908.P6626200675664716707` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369908 has offset 1).

The definition of A369908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369908.P6626200675664716707

`(n+1)^(∑{e}[n+1, #]-1)*∑{p}[n+1, gcd(n, #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369908

/-- `(n+1)^(∑{e}[n+1, #]-1)*∑{p}[n+1, gcd(n, #)]` -/
def P6626200675664716707.Spec : Prop :=
  ∀ n, P6626200675664716707.a n = (A369908 (n + 1) : ℚ)

end A369908

/-! ## A369908.P5010070827762312750

`(n+1)^(∑{e}[n+1, #]-1)*A001221(n+1)`
-/

namespace A369908.P5010070827762312750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ) * (A001221 (n + 1) : ℚ)

end

end A369908.P5010070827762312750

namespace A369908

/-- `(n+1)^(∑{e}[n+1, #]-1)*A001221(n+1)` -/
def P5010070827762312750.Spec : Prop :=
  ∀ n, P5010070827762312750.a n = (A369908 (n + 1) : ℚ)

end A369908

/-! ## A369908.P16368506621143910994

`(n+1)^(∑{e}[n+1, #]-1)*A001222(∏{p}[n+1, #])`
-/

namespace A369908.P16368506621143910994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ) * (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A369908.P16368506621143910994

namespace A369908

/-- `(n+1)^(∑{e}[n+1, #]-1)*A001222(∏{p}[n+1, #])` -/
def P16368506621143910994.Spec : Prop :=
  ∀ n, P16368506621143910994.a n = (A369908 (n + 1) : ℚ)

end A369908

/-! ## A369908.P8165945003313755345

`(n+1)^(∑{e}[n+1, #]-1)*A362611(∏{p}[n+1, #])`
-/

namespace A369908.P8165945003313755345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ) * (A362611 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A369908.P8165945003313755345

namespace A369908

/-- `(n+1)^(∑{e}[n+1, #]-1)*A362611(∏{p}[n+1, #])` -/
def P8165945003313755345.Spec : Prop :=
  ∀ n, P8165945003313755345.a n = (A369908 (n + 1) : ℚ)

end A369908

/-! ## A369908.P17114600106304020735

`A001221(n+1)*A072195(n+1)`
-/

namespace A369908.P17114600106304020735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A072195 (n + 1)

end

end A369908.P17114600106304020735

namespace A369908

/-- `A001221(n+1)*A072195(n+1)` -/
def P17114600106304020735.Spec : Prop :=
  ∀ n, P17114600106304020735.a n = A369908 (n + 1)

end A369908

/-! ## A369908.P3092208616863281298

`A072195(n+1)*A353835(A007947(n+1))`
-/

namespace A369908.P3092208616863281298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072195 (n + 1) * A353835 (A007947 (n + 1)).toNat

end

end A369908.P3092208616863281298

namespace A369908

/-- `A072195(n+1)*A353835(A007947(n+1))` -/
def P3092208616863281298.Spec : Prop :=
  ∀ n, P3092208616863281298.a n = A369908 (n + 1)

end A369908

/-!
# A369909: a(n) = n * Sum_{p|n, p prime} Omega(n/p) / p.

The programs for A369909, the canonical program `A369909.P1517418894271741417` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369909 has offset 1).

The definition of A369909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369909.P7050897479098177497

`∑{p}[n+1, ceil(n/#)]*A070824(2^∑{e}[n+1, #])`
-/

namespace A369909.P7050897479098177497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉) * A070824 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A369909.P7050897479098177497

namespace A369909

/-- `∑{p}[n+1, ceil(n/#)]*A070824(2^∑{e}[n+1, #])` -/
def P7050897479098177497.Spec : Prop :=
  ∀ n, P7050897479098177497.a n = A369909 (n + 1)

end A369909

/-! ## A369909.P13510452763470674233

`(n+1)*∑{p}[n+1, 1/#]*(A001222(n+1)-1)`
-/

namespace A369909.P13510452763470674233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)) * (A001222 (n + 1) - 1 : ℚ)

end

end A369909.P13510452763470674233

namespace A369909

/-- `(n+1)*∑{p}[n+1, 1/#]*(A001222(n+1)-1)` -/
def P13510452763470674233.Spec : Prop :=
  ∀ n, P13510452763470674233.a n = (A369909 (n + 1) : ℚ)

end A369909

/-! ## A369909.P8055826567601603912

`(n+1)*∑{p}[n+1, 1/#]*A046660(2^∑{e}[1+n, #])`
-/

namespace A369909.P8055826567601603912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)) * (A046660 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) : ℚ)

end

end A369909.P8055826567601603912

namespace A369909

/-- `(n+1)*∑{p}[n+1, 1/#]*A046660(2^∑{e}[1+n, #])` -/
def P8055826567601603912.Spec : Prop :=
  ∀ n, P8055826567601603912.a n = (A369909 (n + 1) : ℚ)

end A369909

/-! ## A369909.P11848143878214293103

`(n+1)*∑{p}[n+1, 1/#]*A334201(2^∑{e}[1+n, #])`
-/

namespace A369909.P11848143878214293103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)) * (A334201 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) : ℚ)

end

end A369909.P11848143878214293103

namespace A369909

/-- `(n+1)*∑{p}[n+1, 1/#]*A334201(2^∑{e}[1+n, #])` -/
def P11848143878214293103.Spec : Prop :=
  ∀ n, P11848143878214293103.a n = (A369909 (n + 1) : ℚ)

end A369909

/-! ## A369909.P650371974468516930

`A069359(n+1)*A252736(n+1)`
-/

namespace A369909.P650371974468516930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) * A252736 (n + 1)

end

end A369909.P650371974468516930

namespace A369909

/-- `A069359(n+1)*A252736(n+1)` -/
def P650371974468516930.Spec : Prop :=
  ∀ n, P650371974468516930.a n = A369909 (n + 1)

end A369909

/-! ## A369909.P18162399860186224227

`(A001222(n+1)-1)*A069359(n+1)`
-/

namespace A369909.P18162399860186224227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) - 1) * A069359 (n + 1)

end

end A369909.P18162399860186224227

namespace A369909

/-- `(A001222(n+1)-1)*A069359(n+1)` -/
def P18162399860186224227.Spec : Prop :=
  ∀ n, P18162399860186224227.a n = A369909 (n + 1)

end A369909

/-! ## A369909.P1517418894271741417

`∑{d}[n+1, A010051(#)*A066959((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369909

/-- `∑{d}[n+1, A010051(#)*A066959((n+1)/#)]` -/
def P1517418894271741417.Spec : Prop :=
  ∀ n, P1517418894271741417.a n = A369909 (n + 1)

theorem P1517418894271741417.correct : P1517418894271741417.Spec := by
  intro n
  simp only [A369909, Nat.add_sub_cancel]

end A369909

/-! ## A369909.P13608686750529790529

`∑{d}[n+1, A023889(#)*A117494((n+1)/#)]`
-/

namespace A369909.P13608686750529790529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023889 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369909.P13608686750529790529

namespace A369909

/-- `∑{d}[n+1, A023889(#)*A117494((n+1)/#)]` -/
def P13608686750529790529.Spec : Prop :=
  ∀ n, P13608686750529790529.a n = A369909 (n + 1)

end A369909

/-!
# A369910: Number of pairs (p,q) of partitions of n such that the set of parts in q is a proper subset of the set of parts in p.

The programs for A369910, there is no canonical definition to state claims against.
-/

/-! ## A369910.P1184873680362232679

`A369704(n)-A369695(n)`
-/

namespace A369910.P1184873680362232679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369704 n - A369695 n

end

end A369910.P1184873680362232679

/-! ## A369910.P634324368236060873

`A369707(n)-2*A369697(n)`
-/

namespace A369910.P634324368236060873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369707 n - 2 * A369697 n

end

end A369910.P634324368236060873

/-! ## A369910.P7251105130491007525

`A325106(A110448(n))`
-/

namespace A369910.P7251105130491007525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A110448 n).toNat

end

end A369910.P7251105130491007525

/-! ## A369910.P5774369194772370127

`A249099(A080567(n+1))%A253014(n+1)`
-/

namespace A369910.P5774369194772370127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249099 (A080567 (n + 1)).toNat) (A253014 (n + 1))

end

end A369910.P5774369194772370127

/-!
# A369911: a(n) = Sum_{p|n, p prime} p * sopf(n/p).

The programs for A369911, the canonical program `A369911.P8672809720645014539` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369911 has offset 1).

The definition of A369911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369911.P8672809720645014539

`∑{d}[n+1, A061397(#)*A008472((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369911

/-- `∑{d}[n+1, A061397(#)*A008472((n+1)/#)]` -/
def P8672809720645014539.Spec : Prop :=
  ∀ n, P8672809720645014539.a n = A369911 (n + 1)

theorem P8672809720645014539.correct : P8672809720645014539.Spec := by
  intro n
  simp only [A369911, Nat.add_sub_cancel]

end A369911

/-! ## A369911.P13575185408632898444

`∑{d}[n+1, #*A230595(#)]`
-/

namespace A369911.P13575185408632898444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A230595 d

end

end A369911.P13575185408632898444

namespace A369911

/-- `∑{d}[n+1, #*A230595(#)]` -/
def P13575185408632898444.Spec : Prop :=
  ∀ n, P13575185408632898444.a n = A369911 (n + 1)

end A369911

/-! ## A369911.P2245449888389967897

`∑{d}[n+1, A008472(#)*A061397((n+1)/#)]`
-/

namespace A369911.P2245449888389967897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369911.P2245449888389967897

namespace A369911

/-- `∑{d}[n+1, A008472(#)*A061397((n+1)/#)]` -/
def P2245449888389967897.Spec : Prop :=
  ∀ n, P2245449888389967897.a n = A369911 (n + 1)

end A369911

/-! ## A369911.P17073946310754732101

`∑{d}[n+1, A008683(#)*A349712((n+1)/#)]`
-/

namespace A369911.P17073946310754732101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369911.P17073946310754732101

namespace A369911

/-- `∑{d}[n+1, A008683(#)*A349712((n+1)/#)]` -/
def P17073946310754732101.Spec : Prop :=
  ∀ n, P17073946310754732101.a n = A369911 (n + 1)

end A369911

/-! ## A369911.P11374327331023507626

`∑{d}[n+1, A137851(#)*A319131((n+1)/#)]`
-/

namespace A369911.P11374327331023507626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137851 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369911.P11374327331023507626

namespace A369911

/-- `∑{d}[n+1, A137851(#)*A319131((n+1)/#)]` -/
def P11374327331023507626.Spec : Prop :=
  ∀ n, P11374327331023507626.a n = A369911 (n + 1)

end A369911

/-! ## A369911.P16239537673769092524

`A076290(A007947(n+1))+A076290(n+1)`
-/

namespace A369911.P16239537673769092524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (A007947 (n + 1)).toNat + A076290 (n + 1)

end

end A369911.P16239537673769092524

namespace A369911

/-- `A076290(A007947(n+1))+A076290(n+1)` -/
def P16239537673769092524.Spec : Prop :=
  ∀ n, P16239537673769092524.a n = A369911 (n + 1)

end A369911

/-!
# A369913: a(n) = Sum_{p|n, p prime} n^sopf(n/p).

The programs for A369913, there is no canonical definition to state claims against.
-/

/-! ## A369913.P18286078952267748149

`A255852(A302831(n))`
-/

namespace A369913.P18286078952267748149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 (A302831 n).toNat

end

end A369913.P18286078952267748149

/-! ## A369913.P10069622806228231305

`A255852(A035506(n²))`
-/

namespace A369913.P10069622806228231305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 (A035506 (n ^ 2)).toNat

end

end A369913.P10069622806228231305

/-!
# A369914: a(n) = n * Sum_{p|n, p prime} sopf(n/p) / p.

The programs for A369914, the canonical program `A369914.P9923414443239536090` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369914 has offset 1).

The definition of A369914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369914.P13989403260435799334

`∑{d}[n+1, A005063(#)*A117494((n+1)/#)]`
-/

namespace A369914.P13989403260435799334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005063 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369914.P13989403260435799334

namespace A369914

/-- `∑{d}[n+1, A005063(#)*A117494((n+1)/#)]` -/
def P13989403260435799334.Spec : Prop :=
  ∀ n, P13989403260435799334.a n = A369914 (n + 1)

end A369914

/-! ## A369914.P9923414443239536090

`∑{d}[n+1, A143519(#)*A344578((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369914

/-- `∑{d}[n+1, A143519(#)*A344578((n+1)/#)]` -/
def P9923414443239536090.Spec : Prop :=
  ∀ n, P9923414443239536090.a n = A369914 (n + 1)

theorem P9923414443239536090.correct : P9923414443239536090.Spec := by
  intro n
  simp only [A369914, Nat.add_sub_cancel]

end A369914

/-!
# A369915: a(n) = Sum_{p|n, p prime} lcm(p, n/p) / p.

The programs for A369915, the canonical program `A369915.P6789470802173067047` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369915 has offset 1).

The definition of A369915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369915.P6789470802173067047

`∑{p}[n+1, (n+1)/gcd(n+1, #²)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369915

/-- `∑{p}[n+1, (n+1)/gcd(n+1, #²)]` -/
def P6789470802173067047.Spec : Prop :=
  ∀ n, P6789470802173067047.a n = (A369915 (n + 1) : ℚ)

end A369915

/-! ## A369915.P17024106754941941442

`∑{p}[n+1, lcm(#, ((n+1)/#)²)]/(n+1)`
-/

namespace A369915.P17024106754941941442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Int.lcm (p : ℤ) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A369915.P17024106754941941442

namespace A369915

/-- `∑{p}[n+1, lcm(#, ((n+1)/#)²)]/(n+1)` -/
def P17024106754941941442.Spec : Prop :=
  ∀ n, P17024106754941941442.a n = (A369915 (n + 1) : ℚ)

end A369915

/-! ## A369915.P7174967590841000380

`A345306(n+1)/(n+1)`
-/

namespace A369915.P7174967590841000380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345306 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A369915.P7174967590841000380

namespace A369915

/-- `A345306(n+1)/(n+1)` -/
def P7174967590841000380.Spec : Prop :=
  ∀ n, P7174967590841000380.a n = (A369915 (n + 1) : ℚ)

end A369915

/-! ## A369915.P13667281224433273465

`A082343(n+1)-A051516(A139490(n+1))`
-/

namespace A369915.P13667281224433273465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (n + 1) - A051516 (A139490 (n + 1)).toNat

end

end A369915.P13667281224433273465

namespace A369915

/-- `A082343(n+1)-A051516(A139490(n+1))` -/
def P13667281224433273465.Spec : Prop :=
  ∀ n, P13667281224433273465.a n = A369915 (n + 1)

end A369915

/-! ## A369915.P6490751959820404657

`A001222(A335454(n)^A066504(n+1))`
-/

namespace A369915.P6490751959820404657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A335454 n : ℚ) ^ (A066504 (n + 1) : ℤ))).toNat

end

end A369915.P6490751959820404657

namespace A369915

/-- `A001222(A335454(n)^A066504(n+1))` -/
def P6490751959820404657.Spec : Prop :=
  ∀ n, P6490751959820404657.a n = A369915 (n + 1)

end A369915

/-!
# A369916: Number of partitions of n into two arithmetic numbers.

The programs for A369916, there is no canonical definition to state claims against.
-/

/-! ## A369916.P15786421429274788096

`a(A102683(A072706(2*(n+2))))+a(n-2)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A369916.P15786421429274788096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a (A102683 (A072706 (2 * (n + 2))).toNat).toNat + a (n - 2)

end

end A369916.P15786421429274788096

/-! ## A369916.P16375945327503342610

`A338649(n+1)+A000007(A126869(n))`
-/

namespace A369916.P16375945327503342610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (n + 1) + A000007 (A126869 n).toNat

end

end A369916.P16375945327503342610

/-! ## A369916.P630181946798418125

`A037830(A079102(n))+n%2`
-/

namespace A369916.P630181946798418125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A079102 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A369916.P630181946798418125

/-! ## A369916.P17092049766881318415

`floor((2+A325249(A000695(n+1)))/4)`
-/

namespace A369916.P17092049766881318415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + A325249 (A000695 (n + 1)).toNat : ℚ) / 4⌋

end

end A369916.P17092049766881318415

/-! ## A369916.P18361164002845046300

`A338649(n+1)+A010060(A000225(n))`
-/

namespace A369916.P18361164002845046300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (n + 1) + A010060 (A000225 n).toNat

end

end A369916.P18361164002845046300

/-!
# A369917: Number of partitions of n into two distinct arithmetic numbers.

The programs for A369917, there is no canonical definition to state claims against.
-/

/-! ## A369917.P9613726058183971794

`A333815(A076737(n+1))`
-/

namespace A369917.P9613726058183971794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333815 (A076737 (n + 1)).toNat

end

end A369917.P9613726058183971794

/-! ## A369917.P14220636813142464901

`A356229(A000051(n)+1)-1`
-/

namespace A369917.P14220636813142464901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356229 (A000051 n + 1).toNat - 1

end

end A369917.P14220636813142464901

/-! ## A369917.P8598514882006704304

`A001221(A060013(n+3))-1`
-/

namespace A369917.P8598514882006704304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060013 (n + 3)).toNat - 1

end

end A369917.P8598514882006704304

/-! ## A369917.P6902311955887899516

`A073490(∏{p}[A000051(n)+1, #])`
-/

namespace A369917.P6902311955887899516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369917.P6902311955887899516

/-! ## A369917.P10209805076668317991

`A001221(A052548(n))-gcd(2, ∏{p}[n, #])`
-/

namespace A369917.P10209805076668317991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052548 n).toNat - (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A369917.P10209805076668317991

/-!
# A369919: Triangular array read by rows. T(n,k) is the number of labeled posets on [n] of rank at most one with exactly k elements of positive indegree, n >= 0, 0 <= k <= max{0,n-1}.

The programs for A369919, there is no canonical definition to state claims against.
-/

/-! ## A369919.P8583646095277090494

`A124776(lt[A124757(n), 3])`
-/

namespace A369919.P8583646095277090494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124776 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A369919.P8583646095277090494

/-! ## A369919.P6299674993584094543

`A124776(lt[A282388(n), A052222(n+1)])`
-/

namespace A369919.P6299674993584094543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124776 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369919.P6299674993584094543

/-! ## A369919.P18377342440236411673

`A124776(lt[A282388(n), A124786(n+1)])`
-/

namespace A369919.P18377342440236411673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124776 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369919.P18377342440236411673

/-! ## A369919.P17435871656306330886

`A124776(lt[A282388(n), A124792(n+1)])`
-/

namespace A369919.P17435871656306330886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124776 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369919.P17435871656306330886

/-! ## A369919.P17820324724396145388

`A124776(lt[A235343(2*(n+2)), A124773(n)])`
-/

namespace A369919.P17820324724396145388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235343 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124776 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369919.P17820324724396145388

/-!
# A369921: Number of cover relations summed over the rank-1 labeled posets on [n].

The programs for A369921, there is no canonical definition to state claims against.
-/

/-! ## A369921.P16131225648004086056

`A004526(A000142(n)*A299162(n))`
-/

namespace A369921.P16131225648004086056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000142 n * A299162 n).toNat

end

end A369921.P16131225648004086056

/-! ## A369921.P11489241018629381334

`A142150(A000142(n)*A377099(n))`
-/

namespace A369921.P11489241018629381334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A000142 n * A377099 n).toNat

end

end A369921.P11489241018629381334

/-!
# A369922: a(n) = 8*n^3 - 6*n - 1.

The programs for A369922, the canonical program `A369922.P11658645378781673811` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369922 has offset 0).

The definition of A369922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n^3-6*n-1` (program `A369922.P11658645378781673811`, by `A369922.P11658645378781673811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369922.P11658645378781673811

`8*n^3-6*n-1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369922

/-- `8*n^3-6*n-1` -/
def P11658645378781673811.Spec : Prop :=
  ∀ n, P11658645378781673811.a n = A369922 n

theorem P11658645378781673811.correct : P11658645378781673811.Spec := by
  intro n
  simp only [A369922]

end A369922

/-! ## A369922.P16701889252069247568

`ogf((-1+5x+41x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A369922.P16701889252069247568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, 41, 3] [1, -4, 6, -4, 1] n

end

end A369922.P16701889252069247568

namespace A369922

/-- `ogf((-1+5x+41x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16701889252069247568.Spec : Prop :=
  ∀ n, P16701889252069247568.a n = A369922 n

end A369922

/-! ## A369922.P7766644096175167579

`A242853(n)/(A242850(n)+A000466(n))`
-/

namespace A369922.P7766644096175167579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242853 n : ℚ) / (A242850 n + A000466 n : ℚ)

end

end A369922.P7766644096175167579

namespace A369922

/-- `A242853(n)/(A242850(n)+A000466(n))` -/
def P7766644096175167579.Spec : Prop :=
  ∀ n, P7766644096175167579.a n = (A369922 n : ℚ)

end A369922

/-! ## A369922.P17136502487000136356

`A060747(A144129(n))`
-/

namespace A369922.P17136502487000136356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A144129 n).toNat

end

end A369922.P17136502487000136356

namespace A369922

/-- `A060747(A144129(n))` -/
def P17136502487000136356.Spec : Prop :=
  ∀ n, P17136502487000136356.a n = A369922 n

end A369922

/-! ## A369922.P11754823327609631662

`A014107(A280089(n))/A280089(n)`
-/

namespace A369922.P11754823327609631662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014107 (A280089 n).toNat : ℚ) / (A280089 n : ℚ)

end

end A369922.P11754823327609631662

namespace A369922

/-- `A014107(A280089(n))/A280089(n)` -/
def P11754823327609631662.Spec : Prop :=
  ∀ n, P11754823327609631662.a n = (A369922 n : ℚ)

end A369922

/-!
# A369923: Array read by antidiagonals: A(n,k) is the number of permutations of n copies of 1..k with values introduced in order and without cyclically adjacent elements equal.

The programs for A369923, there is no canonical definition to state claims against.
-/

/-! ## A369923.P15927880817781062016

`A102705(A092921(n)*A381512(n))`
-/

namespace A369923.P15927880817781062016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A092921 n * A381512 n).toNat

end

end A369923.P15927880817781062016

/-! ## A369923.P16682036907979920946

`A350470(A216182(n))%A216182(n)`
-/

namespace A369923.P16682036907979920946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350470 (A216182 n).toNat) (A216182 n)

end

end A369923.P16682036907979920946

/-! ## A369923.P8074740422744563120

`or(A370773(n)², A185284(3*(n+1)))`
-/

namespace A369923.P8074740422744563120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A370773 n ^ 2) (A185284 (3 * (n + 1)))

end

end A369923.P8074740422744563120

/-! ## A369923.P14605017191115470239

`A091570(A088676(n+1)^A294042(n))`
-/

namespace A369923.P14605017191115470239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (SequenceMachineLib.roundAway ((A088676 (n + 1) : ℚ) ^ (A294042 n : ℤ))).toNat

end

end A369923.P14605017191115470239

/-! ## A369923.P15643758322569653328

`A034856(A173779(n))%A220621(n+1)`
-/

namespace A369923.P15643758322569653328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (A173779 n).toNat) (A220621 (n + 1))

end

end A369923.P15643758322569653328

/-!
# A369924: Number of uniform words of length n with adjacent elements unequal using an infinite alphabet up to permutations of the alphabet.

The programs for A369924, there is no canonical definition to state claims against.
-/

/-! ## A369924.P2392330016950885963

`A121289(A221547(n))`
-/

namespace A369924.P2392330016950885963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (A221547 n).toNat

end

end A369924.P2392330016950885963

/-! ## A369924.P14590685833203968009

`A360587(A000628(n))`
-/

namespace A369924.P14590685833203968009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360587 (A000628 n).toNat

end

end A369924.P14590685833203968009

/-! ## A369924.P7348576650667510766

`A162190(A128902(n+1))`
-/

namespace A369924.P7348576650667510766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162190 (A128902 (n + 1)).toNat

end

end A369924.P7348576650667510766

/-! ## A369924.P17967707829758487521

`A323524(A058770(n+1))`
-/

namespace A369924.P17967707829758487521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323524 (A058770 (n + 1)).toNat

end

end A369924.P17967707829758487521

/-! ## A369924.P6157331010109071537

`A053534(A056458(n+2))`
-/

namespace A369924.P6157331010109071537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 (A056458 (n + 2)).toNat

end

end A369924.P6157331010109071537

/-!
# A369925: Number of uniform circular words of length n with adjacent elements unequal using an infinite alphabet up to permutations of the alphabet.

The programs for A369925, there is no canonical definition to state claims against.
-/

/-! ## A369925.P17607502231611418980

`A186726(A057163(n)+2*n)`
-/

namespace A369925.P17607502231611418980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 (A057163 n + (2 * n : ℤ)).toNat

end

end A369925.P17607502231611418980

/-! ## A369925.P12946550242939386667

`A186726(A057163(n)+n+n)`
-/

namespace A369925.P12946550242939386667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 (A057163 n + (n : ℤ) + (n : ℤ)).toNat

end

end A369925.P12946550242939386667

/-! ## A369925.P16191646833266661236

`A334954(A088327(n))-A161831(n+1)`
-/

namespace A369925.P16191646833266661236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A088327 n).toNat - A161831 (n + 1)

end

end A369925.P16191646833266661236

/-! ## A369925.P13402956499298466841

`A243148(A369289(n+4)+A106303(n+1))`
-/

namespace A369925.P13402956499298466841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A369289 (n + 4) + A106303 (n + 1)).toNat

end

end A369925.P13402956499298466841

/-! ## A369925.P6609543948445085914

`A000700(xor(A123564(n+1), A123602(n+1)))`
-/

namespace A369925.P6609543948445085914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.xor (A123564 (n + 1)) (A123602 (n + 1 + 23))).toNat

end

end A369925.P6609543948445085914

/-!
# A369927: Triangle read by rows: T(n,k) is the number of non-isomorphic set multipartitions (multisets of sets) of weight n with k parts and no singletons or endpoints, 0 <= k <= floor(n/2).

The programs for A369927, there is no canonical definition to state claims against.
-/

/-! ## A369927.P9644573992592443229

`and(A008555(n+1), A140256(A250120(n)))`
-/

namespace A369927.P9644573992592443229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008555 (n + 1)) (A140256 (A250120 n).toNat)

end

end A369927.P9644573992592443229

/-! ## A369927.P16579819678463761990

`and(A140256(A250120(n)), A145288(n+1))`
-/

namespace A369927.P16579819678463761990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140256 (A250120 n).toNat) (A145288 (n + 1))

end

end A369927.P16579819678463761990

/-! ## A369927.P387706089518173809

`and(A140256(A250120(n)), A180762(n+1))`
-/

namespace A369927.P387706089518173809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140256 (A250120 n).toNat) (A180762 (n + 1))

end

end A369927.P387706089518173809

/-! ## A369927.P8868894986477267869

`and(A140256(A250120(n)), A345930(n+1))`
-/

namespace A369927.P8868894986477267869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140256 (A250120 n).toNat) (A345930 (n + 1))

end

end A369927.P8868894986477267869

/-!
# A369928: Triangle read by rows: T(n,k) is the number of simple graphs on n labeled vertices with k edges and without endpoints, n >= 0, 0 <= k <= n*(n-1)/2.

The programs for A369928, there is no canonical definition to state claims against.
-/

/-! ## A369928.P209044159656449638

`C(A300776(n+1), A330961(A351293(n)))`
-/

namespace A369928.P209044159656449638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A300776 (n + 1)).toNat (A330961 (A351293 n).toNat).toNat

end

end A369928.P209044159656449638

/-!
# A369929: Array read by antidiagonals: T(n,k) is the number of achiral noncrossing partitions composed of n blocks of size k.

The programs for A369929, there is no canonical definition to state claims against.
-/

/-! ## A369929.P8057286630064329333

`2*A303929(n)-A303694(n)`
-/

namespace A369929.P8057286630064329333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303929 n - A303694 n

end

end A369929.P8057286630064329333

/-! ## A369929.P8813572737894813643

`and(A055624(n+1), A303694(n))`
-/

namespace A369929.P8813572737894813643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055624 (n + 1)) (A303694 n)

end

end A369929.P8813572737894813643

/-! ## A369929.P913052393115161904

`A303694(n)%A182742(3*n+1)²`
-/

namespace A369929.P913052393115161904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303694 n) (A182742 (3 * n + 1) ^ 2)

end

end A369929.P913052393115161904

/-! ## A369929.P16833088089318990075

`and(A253249(A268448(n+1)), A303694(n))`
-/

namespace A369929.P16833088089318990075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253249 (A268448 (n + 1)).toNat) (A303694 n)

end

end A369929.P16833088089318990075

/-! ## A369929.P509161298303161515

`and(A217494(A064573(3*n+5)), A303694(n))`
-/

namespace A369929.P509161298303161515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217494 (A064573 (3 * n + 5)).toNat) (A303694 n)

end

end A369929.P509161298303161515

/-!
# A369930: Number of achiral noncrossing partitions composed of n blocks of size 4.

The programs for A369930, the canonical program `A369930.P9255884940020075983` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369930 has offset 0).

The definition of A369930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369930.P9255884940020075983

`A369592(A004273(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369930

/-- `A369592(A004273(n))` -/
def P9255884940020075983.Spec : Prop :=
  ∀ n, P9255884940020075983.a n = A369930 n

theorem P9255884940020075983.correct : P9255884940020075983.Spec := by
  intro n
  simp only [A369930]

end A369930

/-! ## A369930.P4550870089782744411

`A369592(A163985(n))`
-/

namespace A369930.P4550870089782744411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (A163985 n).toNat

end

end A369930.P4550870089782744411

namespace A369930

/-- `A369592(A163985(n))` -/
def P4550870089782744411.Spec : Prop :=
  ∀ n, P4550870089782744411.a n = A369930 n

end A369930

/-! ## A369930.P12298446209936358123

`A369592(A004274(n+1))`
-/

namespace A369930.P12298446209936358123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (A004274 (n + 1)).toNat

end

end A369930.P12298446209936358123

namespace A369930

/-- `A369592(A004274(n+1))` -/
def P12298446209936358123.Spec : Prop :=
  ∀ n, P12298446209936358123.a n = A369930 n

end A369930

/-! ## A369930.P14478587215501513483

`A369592(A004280(n+1))`
-/

namespace A369930.P14478587215501513483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (A004280 (n + 1)).toNat

end

end A369930.P14478587215501513483

namespace A369930

/-- `A369592(A004280(n+1))` -/
def P14478587215501513483.Spec : Prop :=
  ∀ n, P14478587215501513483.a n = A369930 n

end A369930

/-! ## A369930.P7392918441685045761

`A047100(A397976(n))`
-/

namespace A369930.P7392918441685045761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A397976 n).toNat

end

end A369930.P7392918441685045761

namespace A369930

/-- `A047100(A397976(n))` -/
def P7392918441685045761.Spec : Prop :=
  ∀ n, P7392918441685045761.a n = A369930 n

end A369930

/-! ## A369930.P10974570335469666671

`A047100(A038707(2*n))`
-/

namespace A369930.P10974570335469666671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A038707 (2 * n)).toNat

end

end A369930.P10974570335469666671

namespace A369930

/-- `A047100(A038707(2*n))` -/
def P10974570335469666671.Spec : Prop :=
  ∀ n, P10974570335469666671.a n = A369930 n

end A369930

/-!
# A369932: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs with n edges and k vertices and without endpoints or isolated vertices.

The programs for A369932, there is no canonical definition to state claims against.
-/

/-! ## A369932.P13895769616562486930

`A124760(A113129(n)*A347397(n+2))`
-/

namespace A369932.P13895769616562486930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A113129 n * A347397 (n + 2)).toNat

end

end A369932.P13895769616562486930

/-! ## A369932.P9398582959273792447

`A333381(A238279(n+1))*A342557(n+1)`
-/

namespace A369932.P9398582959273792447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A238279 (n + 1)).toNat * A342557 (n + 1)

end

end A369932.P9398582959273792447

/-! ## A369932.P12625502400559640476

`(A014081(A320955(3*n))+1)*A342557(n+1)`
-/

namespace A369932.P12625502400559640476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014081 (A320955 (3 * n)).toNat + 1) * A342557 (n + 1)

end

end A369932.P12625502400559640476

/-! ## A369932.P14157724512199812781

`A335106(A369321(n))`
-/

namespace A369932.P14157724512199812781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335106 (A369321 n).toNat

end

end A369932.P14157724512199812781

/-! ## A369932.P1020390271938443904

`A051903(A328208(n+1)^A342557(n+1))`
-/

namespace A369932.P1020390271938443904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A328208 (n + 1) : ℚ) ^ (A342557 (n + 1) : ℤ))).toNat

end

end A369932.P1020390271938443904

/-!
# A369933: The maximal exponent in the prime factorization of the exponentially 2^n numbers (A138302).

The programs for A369933, the canonical program `A369933.P7451183302863307938` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369933 has offset 1).

The definition of A369933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A138302, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369933.P7451183302863307938

`A051903(A138302(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369933

/-- `A051903(A138302(n+1))` -/
def P7451183302863307938.Spec : Prop :=
  ∀ n, P7451183302863307938.a n = A369933 (n + 1)

theorem P7451183302863307938.correct : P7451183302863307938.Spec := by
  intro n
  simp only [A369933, Nat.add_sub_cancel]

end A369933

/-! ## A369933.P12390361034077817897

`A051903(sqrt(A369567(n+1)))`
-/

namespace A369933.P12390361034077817897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway (Real.sqrt (A369567 (n + 1) : ℝ))).toNat

end

end A369933.P12390361034077817897

namespace A369933

/-- `A051903(sqrt(A369567(n+1)))` -/
def P12390361034077817897.Spec : Prop :=
  ∀ n, P12390361034077817897.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P18328060497838085337

`A051903(record[A270418(1+n)])`
-/

namespace A369933.P18328060497838085337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369933.P18328060497838085337

namespace A369933

/-- `A051903(record[A270418(1+n)])` -/
def P18328060497838085337.Spec : Prop :=
  ∀ n, P18328060497838085337.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P1235626464139619921

`A051903(record[A365296(n+1)])`
-/

namespace A369933.P1235626464139619921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369933.P1235626464139619921

namespace A369933

/-- `A051903(record[A365296(n+1)])` -/
def P1235626464139619921.Spec : Prop :=
  ∀ n, P1235626464139619921.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P13832169305717066619

`A368781(record[A353897(n+1)])`
-/

namespace A369933.P13832169305717066619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369933.P13832169305717066619

namespace A369933

/-- `A368781(record[A353897(n+1)])` -/
def P13832169305717066619.Spec : Prop :=
  ∀ n, P13832169305717066619.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P875820015958709795

`A368781(A138302(2*n+1-n))`
-/

namespace A369933.P875820015958709795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (A138302 (2 * n + 1 - n)).toNat

end

end A369933.P875820015958709795

namespace A369933

/-- `A368781(A138302(2*n+1-n))` -/
def P875820015958709795.Spec : Prop :=
  ∀ n, P875820015958709795.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P12762823258777883658

`A368781(A138302(n+1)%A027865(n))`
-/

namespace A369933.P12762823258777883658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (Int.tmod (A138302 (n + 1)) (A027865 n)).toNat

end

end A369933.P12762823258777883658

namespace A369933

/-- `A368781(A138302(n+1)%A027865(n))` -/
def P12762823258777883658.Spec : Prop :=
  ∀ n, P12762823258777883658.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P5830681296197321471

`A051903(A270428(n+1))%A201235(n+1)`
-/

namespace A369933.P5830681296197321471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A270428 (n + 1)).toNat) (A201235 (n + 1))

end

end A369933.P5830681296197321471

namespace A369933

/-- `A051903(A270428(n+1))%A201235(n+1)` -/
def P5830681296197321471.Spec : Prop :=
  ∀ n, P5830681296197321471.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P13071374898888780685

`A375359(A354180(n+1))`
-/

namespace A369933.P13071374898888780685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A354180 (n + 1)).toNat

end

end A369933.P13071374898888780685

namespace A369933

/-- `A375359(A354180(n+1))` -/
def P13071374898888780685.Spec : Prop :=
  ∀ n, P13071374898888780685.a n = A369933 (n + 1)

end A369933

/-! ## A369933.P5881457291228353500

`A375359(A367802(n+1))`
-/

namespace A369933.P5881457291228353500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A367802 (n + 1)).toNat

end

end A369933.P5881457291228353500

namespace A369933

/-- `A375359(A367802(n+1))` -/
def P5881457291228353500.Spec : Prop :=
  ∀ n, P5881457291228353500.a n = A369933 (n + 1)

end A369933

/-!
# A369934: a(n) = log_2(A369933(n)).

The programs for A369934, the canonical program `A369934.P13862989399101401455` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369934 has offset 2).

The definition of A369934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369934.P13862989399101401455

`log2(A369933(n+2))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A369934

/-- `log2(A369933(n+2))` -/
def P13862989399101401455.Spec : Prop :=
  ∀ n, P13862989399101401455.a n = (A369934 (n + 2) : ℝ)

end A369934

/-! ## A369934.P5147520502276734309

`A051903(A051903(A138302(n+2)))`
-/

namespace A369934.P5147520502276734309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A051903 (A138302 (n + 2)).toNat).toNat

end

end A369934.P5147520502276734309

namespace A369934

/-- `A051903(A051903(A138302(n+2)))` -/
def P5147520502276734309.Spec : Prop :=
  ∀ n, P5147520502276734309.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P14067522254783807192

`A392281(A138302(n+2))`
-/

namespace A369934.P14067522254783807192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392281 (A138302 (n + 2)).toNat

end

end A369934.P14067522254783807192

namespace A369934

/-- `A392281(A138302(n+2))` -/
def P14067522254783807192.Spec : Prop :=
  ∀ n, P14067522254783807192.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P12144205845014013390

`A007814((2*n+1)*A369933(n+2))`
-/

namespace A369934.P12144205845014013390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((2 * n + 1 : ℤ) * A369933 (n + 2)).toNat

end

end A369934.P12144205845014013390

namespace A369934

/-- `A007814((2*n+1)*A369933(n+2))` -/
def P12144205845014013390.Spec : Prop :=
  ∀ n, P12144205845014013390.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P16258749071695453498

`and(A027180(n), A374328(n+1))`
-/

namespace A369934.P16258749071695453498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A374328 (n + 1))

end

end A369934.P16258749071695453498

namespace A369934

/-- `and(A027180(n), A374328(n+1))` -/
def P16258749071695453498.Spec : Prop :=
  ∀ n, P16258749071695453498.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P6601446315976130647

`and(A198275(n), A374328(n+1))`
-/

namespace A369934.P6601446315976130647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A374328 (n + 1))

end

end A369934.P6601446315976130647

namespace A369934

/-- `and(A198275(n), A374328(n+1))` -/
def P6601446315976130647.Spec : Prop :=
  ∀ n, P6601446315976130647.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P15811492372376593625

`and(A171389(n), A374328(n+1))`
-/

namespace A369934.P15811492372376593625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A374328 (n + 1))

end

end A369934.P15811492372376593625

namespace A369934

/-- `and(A171389(n), A374328(n+1))` -/
def P15811492372376593625.Spec : Prop :=
  ∀ n, P15811492372376593625.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P12274254417973438799

`and(A198276(n), A374328(n+1))`
-/

namespace A369934.P12274254417973438799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A374328 (n + 1))

end

end A369934.P12274254417973438799

namespace A369934

/-- `and(A198276(n), A374328(n+1))` -/
def P12274254417973438799.Spec : Prop :=
  ∀ n, P12274254417973438799.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P15206997918128674538

`and(A291557(n), A374328(n+1))`
-/

namespace A369934.P15206997918128674538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A374328 (n + 1))

end

end A369934.P15206997918128674538

namespace A369934

/-- `and(A291557(n), A374328(n+1))` -/
def P15206997918128674538.Spec : Prop :=
  ∀ n, P15206997918128674538.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P1953951671272398659

`and(A304387(n), A374328(n+1))`
-/

namespace A369934.P1953951671272398659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304387 n) (A374328 (n + 1))

end

end A369934.P1953951671272398659

namespace A369934

/-- `and(A304387(n), A374328(n+1))` -/
def P1953951671272398659.Spec : Prop :=
  ∀ n, P1953951671272398659.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P4551034204519356216

`and(A196655(n), A374328(n+1))`
-/

namespace A369934.P4551034204519356216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196655 n) (A374328 (n + 1))

end

end A369934.P4551034204519356216

namespace A369934

/-- `and(A196655(n), A374328(n+1))` -/
def P4551034204519356216.Spec : Prop :=
  ∀ n, P4551034204519356216.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P8340631563704386234

`and(A026917(n), A374328(n+1))`
-/

namespace A369934.P8340631563704386234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A374328 (n + 1))

end

end A369934.P8340631563704386234

namespace A369934

/-- `and(A026917(n), A374328(n+1))` -/
def P8340631563704386234.Spec : Prop :=
  ∀ n, P8340631563704386234.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P3303515239046906622

`and(A304172(n), A374328(n+1))`
-/

namespace A369934.P3303515239046906622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304172 n) (A374328 (n + 1))

end

end A369934.P3303515239046906622

namespace A369934

/-- `and(A304172(n), A374328(n+1))` -/
def P3303515239046906622.Spec : Prop :=
  ∀ n, P3303515239046906622.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P9544755372747749095

`and(A304613(n), A374328(n+1))`
-/

namespace A369934.P9544755372747749095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304613 n) (A374328 (n + 1))

end

end A369934.P9544755372747749095

namespace A369934

/-- `and(A304613(n), A374328(n+1))` -/
def P9544755372747749095.Spec : Prop :=
  ∀ n, P9544755372747749095.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P15643872828097187649

`and(A047859(n), A374328(n+1))`
-/

namespace A369934.P15643872828097187649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047859 n) (A374328 (n + 1))

end

end A369934.P15643872828097187649

namespace A369934

/-- `and(A047859(n), A374328(n+1))` -/
def P15643872828097187649.Spec : Prop :=
  ∀ n, P15643872828097187649.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P7172612219806947971

`and(A048467(n), A374328(n+1))`
-/

namespace A369934.P7172612219806947971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048467 n) (A374328 (n + 1))

end

end A369934.P7172612219806947971

namespace A369934

/-- `and(A048467(n), A374328(n+1))` -/
def P7172612219806947971.Spec : Prop :=
  ∀ n, P7172612219806947971.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P10537297742485987758

`and(A087522(n), A374328(n+1))`
-/

namespace A369934.P10537297742485987758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A374328 (n + 1))

end

end A369934.P10537297742485987758

namespace A369934

/-- `and(A087522(n), A374328(n+1))` -/
def P10537297742485987758.Spec : Prop :=
  ∀ n, P10537297742485987758.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P434832740719420453

`and(A127582(n), A374328(n+1))`
-/

namespace A369934.P434832740719420453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A374328 (n + 1))

end

end A369934.P434832740719420453

namespace A369934

/-- `and(A127582(n), A374328(n+1))` -/
def P434832740719420453.Spec : Prop :=
  ∀ n, P434832740719420453.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P14576696109477999326

`and(A178965(n), A374328(n+1))`
-/

namespace A369934.P14576696109477999326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178965 n) (A374328 (n + 1))

end

end A369934.P14576696109477999326

namespace A369934

/-- `and(A178965(n), A374328(n+1))` -/
def P14576696109477999326.Spec : Prop :=
  ∀ n, P14576696109477999326.a n = A369934 (n + 2)

end A369934

/-! ## A369934.P3424774550994971301

`and(A195858(n), A374328(n+1))`
-/

namespace A369934.P3424774550994971301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195858 n) (A374328 (n + 1))

end

end A369934.P3424774550994971301

namespace A369934

/-- `and(A195858(n), A374328(n+1))` -/
def P3424774550994971301.Spec : Prop :=
  ∀ n, P3424774550994971301.a n = A369934 (n + 2)

end A369934

/-!
# A369935: The maximal exponent in the prime factorization of the numbers whose all exponents are squares (A197680).

The programs for A369935, the canonical program `A369935.P16814839049346386395` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369935 has offset 1).

The definition of A369935 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A197680, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369935.P13847131688495846961

`A369936(n+1)²`
-/

namespace A369935.P13847131688495846961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369936 (n + 1) ^ 2

end

end A369935.P13847131688495846961

namespace A369935

/-- `A369936(n+1)²` -/
def P13847131688495846961.Spec : Prop :=
  ∀ n, P13847131688495846961.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P16814839049346386395

`A051903(A197680(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369935

/-- `A051903(A197680(n+1))` -/
def P16814839049346386395.Spec : Prop :=
  ∀ n, P16814839049346386395.a n = A369935 (n + 1)

theorem P16814839049346386395.correct : P16814839049346386395.Spec := by
  intro n
  simp only [A369935, Nat.add_sub_cancel]

end A369935

/-! ## A369935.P10876462876100348307

`A386472(A197680(2*n+1-n))`
-/

namespace A369935.P10876462876100348307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386472 (A197680 (2 * n + 1 - n)).toNat

end

end A369935.P10876462876100348307

namespace A369935

/-- `A386472(A197680(2*n+1-n))` -/
def P10876462876100348307.Spec : Prop :=
  ∀ n, P10876462876100348307.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P11371346604476165338

`A368474(n+1)%record[A048784(n)]`
-/

namespace A369935.P11371346604476165338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368474 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A369935.P11371346604476165338

namespace A369935

/-- `A368474(n+1)%record[A048784(n)]` -/
def P11371346604476165338.Spec : Prop :=
  ∀ n, P11371346604476165338.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P6139977595780394200

`A368474(n+1)%A001875(n)`
-/

namespace A369935.P6139977595780394200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368474 (n + 1)) (A001875 n)

end

end A369935.P6139977595780394200

namespace A369935

/-- `A368474(n+1)%A001875(n)` -/
def P6139977595780394200.Spec : Prop :=
  ∀ n, P6139977595780394200.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P5489096975240518467

`A368474(n+1)%A000029(n)`
-/

namespace A369935.P5489096975240518467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368474 (n + 1)) (A000029 n)

end

end A369935.P5489096975240518467

namespace A369935

/-- `A368474(n+1)%A000029(n)` -/
def P5489096975240518467.Spec : Prop :=
  ∀ n, P5489096975240518467.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P2680791586669055216

`and(A000225(n), A368474(n+1))`
-/

namespace A369935.P2680791586669055216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A368474 (n + 1))

end

end A369935.P2680791586669055216

namespace A369935

/-- `and(A000225(n), A368474(n+1))` -/
def P2680791586669055216.Spec : Prop :=
  ∀ n, P2680791586669055216.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P12099202934870482222

`and(A153894(n), A368474(n+1))`
-/

namespace A369935.P12099202934870482222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A368474 (n + 1))

end

end A369935.P12099202934870482222

namespace A369935

/-- `and(A153894(n), A368474(n+1))` -/
def P12099202934870482222.Spec : Prop :=
  ∀ n, P12099202934870482222.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P682718458908201840

`and(A156127(n), A368474(n+1))`
-/

namespace A369935.P682718458908201840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156127 n) (A368474 (n + 1))

end

end A369935.P682718458908201840

namespace A369935

/-- `and(A156127(n), A368474(n+1))` -/
def P682718458908201840.Spec : Prop :=
  ∀ n, P682718458908201840.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P17914665090185061387

`and(A198275(n), A368474(n+1))`
-/

namespace A369935.P17914665090185061387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A368474 (n + 1))

end

end A369935.P17914665090185061387

namespace A369935

/-- `and(A198275(n), A368474(n+1))` -/
def P17914665090185061387.Spec : Prop :=
  ∀ n, P17914665090185061387.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P1805093591318577703

`and(A156203(n+1), A368474(n+1))`
-/

namespace A369935.P1805093591318577703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156203 (n + 1)) (A368474 (n + 1))

end

end A369935.P1805093591318577703

namespace A369935

/-- `and(A156203(n+1), A368474(n+1))` -/
def P1805093591318577703.Spec : Prop :=
  ∀ n, P1805093591318577703.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P3704634864714911380

`and(A171389(n), A368474(n+1))`
-/

namespace A369935.P3704634864714911380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A368474 (n + 1))

end

end A369935.P3704634864714911380

namespace A369935

/-- `and(A171389(n), A368474(n+1))` -/
def P3704634864714911380.Spec : Prop :=
  ∀ n, P3704634864714911380.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P6674585238714042470

`and(A198276(n), A368474(n+1))`
-/

namespace A369935.P6674585238714042470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A368474 (n + 1))

end

end A369935.P6674585238714042470

namespace A369935

/-- `and(A198276(n), A368474(n+1))` -/
def P6674585238714042470.Spec : Prop :=
  ∀ n, P6674585238714042470.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P7334908248218577975

`and(A291557(n), A368474(n+1))`
-/

namespace A369935.P7334908248218577975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A368474 (n + 1))

end

end A369935.P7334908248218577975

namespace A369935

/-- `and(A291557(n), A368474(n+1))` -/
def P7334908248218577975.Spec : Prop :=
  ∀ n, P7334908248218577975.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P1326728156194521275

`and(A171390(n+1), A368474(n+1))`
-/

namespace A369935.P1326728156194521275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A368474 (n + 1))

end

end A369935.P1326728156194521275

namespace A369935

/-- `and(A171390(n+1), A368474(n+1))` -/
def P1326728156194521275.Spec : Prop :=
  ∀ n, P1326728156194521275.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P4566778493217946949

`and(A305160(n), A368474(n+1))`
-/

namespace A369935.P4566778493217946949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305160 n) (A368474 (n + 1))

end

end A369935.P4566778493217946949

namespace A369935

/-- `and(A305160(n), A368474(n+1))` -/
def P4566778493217946949.Spec : Prop :=
  ∀ n, P4566778493217946949.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P14378893901707144813

`and(A118883(n+1), A368474(n+1))`
-/

namespace A369935.P14378893901707144813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A368474 (n + 1))

end

end A369935.P14378893901707144813

namespace A369935

/-- `and(A118883(n+1), A368474(n+1))` -/
def P14378893901707144813.Spec : Prop :=
  ∀ n, P14378893901707144813.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P16772281868636632764

`and(A335843(n+1), A368474(n+1))`
-/

namespace A369935.P16772281868636632764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335843 (n + 1)) (A368474 (n + 1))

end

end A369935.P16772281868636632764

namespace A369935

/-- `and(A335843(n+1), A368474(n+1))` -/
def P16772281868636632764.Spec : Prop :=
  ∀ n, P16772281868636632764.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P12927177374105545168

`and(A127582(n), A368474(n+1))`
-/

namespace A369935.P12927177374105545168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A368474 (n + 1))

end

end A369935.P12927177374105545168

namespace A369935

/-- `and(A127582(n), A368474(n+1))` -/
def P12927177374105545168.Spec : Prop :=
  ∀ n, P12927177374105545168.a n = A369935 (n + 1)

end A369935

/-! ## A369935.P5530378034670443112

`and(A178965(n), A368474(n+1))`
-/

namespace A369935.P5530378034670443112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178965 n) (A368474 (n + 1))

end

end A369935.P5530378034670443112

namespace A369935

/-- `and(A178965(n), A368474(n+1))` -/
def P5530378034670443112.Spec : Prop :=
  ∀ n, P5530378034670443112.a n = A369935 (n + 1)

end A369935

/-!
# A369936: a(n) = sqrt(A369935(n)).

The programs for A369936, the canonical program `A369936.P10217003281748854646` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369936 has offset 1).

The definition of A369936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369936.P10217003281748854646

`sqrt(A369935(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A369936

/-- `sqrt(A369935(n+1))` -/
def P10217003281748854646.Spec : Prop :=
  ∀ n, P10217003281748854646.a n = (A369936 (n + 1) : ℝ)

end A369936

/-! ## A369936.P16581723923437780600

`A005811(A368474(n+1))%A132972(n)`
-/

namespace A369936.P16581723923437780600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (A368474 (n + 1)).toNat) (A132972 n)

end

end A369936.P16581723923437780600

namespace A369936

/-- `A005811(A368474(n+1))%A132972(n)` -/
def P16581723923437780600.Spec : Prop :=
  ∀ n, P16581723923437780600.a n = A369936 (n + 1)

end A369936

/-! ## A369936.P5563496480699212095

`A006530(A368474(n+1))%A006530(n+1)`
-/

namespace A369936.P5563496480699212095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A368474 (n + 1)).toNat) (A006530 (n + 1))

end

end A369936.P5563496480699212095

namespace A369936

/-- `A006530(A368474(n+1))%A006530(n+1)` -/
def P5563496480699212095.Spec : Prop :=
  ∀ n, P5563496480699212095.a n = A369936 (n + 1)

end A369936

/-! ## A369936.P6028627797319445280

`A037213(A368474(n+1)%A094535(n))`
-/

namespace A369936.P6028627797319445280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (Int.tmod (A368474 (n + 1)) (A094535 n)).toNat

end

end A369936.P6028627797319445280

namespace A369936

/-- `A037213(A368474(n+1)%A094535(n))` -/
def P6028627797319445280.Spec : Prop :=
  ∀ n, P6028627797319445280.a n = A369936 (n + 1)

end A369936

/-! ## A369936.P9205452567469980350

`gcd(A140960(n), A369935(n+1))`
-/

namespace A369936.P9205452567469980350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140960 n) (A369935 (n + 1))

end

end A369936.P9205452567469980350

namespace A369936

/-- `gcd(A140960(n), A369935(n+1))` -/
def P9205452567469980350.Spec : Prop :=
  ∀ n, (P9205452567469980350.a n : ℤ) = A369936 (n + 1)

end A369936

/-! ## A369936.P6310826869210909634

`gcd(A036800(n), A369935(n+1))`
-/

namespace A369936.P6310826869210909634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036800 n) (A369935 (n + 1))

end

end A369936.P6310826869210909634

namespace A369936

/-- `gcd(A036800(n), A369935(n+1))` -/
def P6310826869210909634.Spec : Prop :=
  ∀ n, (P6310826869210909634.a n : ℤ) = A369936 (n + 1)

end A369936

/-! ## A369936.P654724622545381624

`gcd(A007462(n), A369935(n+1))`
-/

namespace A369936.P654724622545381624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007462 n) (A369935 (n + 1))

end

end A369936.P654724622545381624

namespace A369936

/-- `gcd(A007462(n), A369935(n+1))` -/
def P654724622545381624.Spec : Prop :=
  ∀ n, (P654724622545381624.a n : ℤ) = A369936 (n + 1)

end A369936

/-! ## A369936.P14430111330637432834

`A326031(A369935(n+1)^A027750(n+1))`
-/

namespace A369936.P14430111330637432834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (SequenceMachineLib.roundAway ((A369935 (n + 1) : ℚ) ^ (A027750 (n + 1) : ℤ))).toNat

end

end A369936.P14430111330637432834

namespace A369936

/-- `A326031(A369935(n+1)^A027750(n+1))` -/
def P14430111330637432834.Spec : Prop :=
  ∀ n, P14430111330637432834.a n = A369936 (n + 1)

end A369936

/-! ## A369936.P16192739652064806662

`A007895(A369935(n+1)^A361132(2*n+1))`
-/

namespace A369936.P16192739652064806662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A369935 (n + 1) : ℚ) ^ (A361132 (2 * n + 1) : ℤ))).toNat

end

end A369936.P16192739652064806662

namespace A369936

/-- `A007895(A369935(n+1)^A361132(2*n+1))` -/
def P16192739652064806662.Spec : Prop :=
  ∀ n, P16192739652064806662.a n = A369936 (n + 1)

end A369936

/-!
# A369937: Numbers whose maximal exponent in their prime factorization is square.

The programs for A369937, the canonical program `A369937.P6430263138363579003` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369937 has offset 1).

The definition of A369937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369937.P6430263138363579003

`eq[1, A010052(A051903(n+1))]+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369937

/-- `eq[1, A010052(A051903(n+1))]+1` -/
def P6430263138363579003.Spec : Prop :=
  ∀ n, (P6430263138363579003.a n : ℤ) = A369937 (n + 1)

theorem P6430263138363579003.correct : P6430263138363579003.Spec := by
  intro n
  simp only [A369937, Nat.add_sub_cancel]

end A369937

/-!
# A369938: Numbers whose maximal exponent in their prime factorization is a power of 2.

The programs for A369938, the canonical program `A369938.P9208307940246870156` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369938 has offset 1).

The definition of A369938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369938.P9208307940246870156

`eq[1, A000120(A051903(n+1))]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369938

/-- `eq[1, A000120(A051903(n+1))]+1` -/
def P9208307940246870156.Spec : Prop :=
  ∀ n, (P9208307940246870156.a n : ℤ) = A369938 (n + 1)

theorem P9208307940246870156.correct : P9208307940246870156.Spec := by
  intro n
  simp only [A369938, Nat.add_sub_cancel]

end A369938

/-! ## A369938.P18064851861480735018

`lt[A055510(A051903(n+2)), 1]+2`
-/

namespace A369938.P18064851861480735018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055510 (A051903 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A369938.P18064851861480735018

namespace A369938

/-- `lt[A055510(A051903(n+2)), 1]+2` -/
def P18064851861480735018.Spec : Prop :=
  ∀ n, (P18064851861480735018.a n : ℤ) = A369938 (n + 1)

end A369938

/-! ## A369938.P4242715469814658124

`eq[A004594(A067095(2*(n+2))+1), A382291(n+1)]+1`
-/

namespace A369938.P4242715469814658124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004594 (A067095 (2 * (n + 2)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369938.P4242715469814658124

namespace A369938

/-- `eq[A004594(A067095(2*(n+2))+1), A382291(n+1)]+1` -/
def P4242715469814658124.Spec : Prop :=
  ∀ n, (P4242715469814658124.a n : ℤ) = A369938 (n + 1)

end A369938

/-! ## A369938.P6546364621586004784

`lt[A025790(n), A367168(A028310(n))]`
-/

namespace A369938.P6546364621586004784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369938.P6546364621586004784

namespace A369938

/-- `lt[A025790(n), A367168(A028310(n))]` -/
def P6546364621586004784.Spec : Prop :=
  ∀ n, (P6546364621586004784.a n : ℤ) = A369938 (n + 1)

end A369938

/-! ## A369938.P12693696716252862036

`and(A086827(n+2), A270428(n+2))`
-/

namespace A369938.P12693696716252862036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 2)) (A270428 (n + 2))

end

end A369938.P12693696716252862036

namespace A369938

/-- `and(A086827(n+2), A270428(n+2))` -/
def P12693696716252862036.Spec : Prop :=
  ∀ n, P12693696716252862036.a n = A369938 (n + 1)

end A369938

/-! ## A369938.P15929859974867793101

`A270428(n+2)+A000007(A353791(n+1))`
-/

namespace A369938.P15929859974867793101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 2) + A000007 (A353791 (n + 1)).toNat

end

end A369938.P15929859974867793101

namespace A369938

/-- `A270428(n+2)+A000007(A353791(n+1))` -/
def P15929859974867793101.Spec : Prop :=
  ∀ n, P15929859974867793101.a n = A369938 (n + 1)

end A369938

/-! ## A369938.P5782812943648656190

`A138302(A071974((n+2)²))`
-/

namespace A369938.P5782812943648656190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (A071974 ((n + 2) ^ 2)).toNat

end

end A369938.P5782812943648656190

namespace A369938

/-- `A138302(A071974((n+2)²))` -/
def P5782812943648656190.Spec : Prop :=
  ∀ n, P5782812943648656190.a n = A369938 (n + 1)

end A369938

/-! ## A369938.P14504983133536021466

`A000188(A354180(n+2))`
-/

namespace A369938.P14504983133536021466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A354180 (n + 2)).toNat

end

end A369938.P14504983133536021466

namespace A369938

/-- `A000188(A354180(n+2))` -/
def P14504983133536021466.Spec : Prop :=
  ∀ n, P14504983133536021466.a n = A369938 (n + 1)

end A369938

/-! ## A369938.P13969544287040896832

`A000188(A367802(n+2))`
-/

namespace A369938.P13969544287040896832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A367802 (n + 2)).toNat

end

end A369938.P13969544287040896832

namespace A369938

/-- `A000188(A367802(n+2))` -/
def P13969544287040896832.Spec : Prop :=
  ∀ n, P13969544287040896832.a n = A369938 (n + 1)

end A369938

/-! ## A369938.P11087431533795960526

`A000188(A369567(n+2))`
-/

namespace A369938.P11087431533795960526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A369567 (n + 2)).toNat

end

end A369938.P11087431533795960526

namespace A369938

/-- `A000188(A369567(n+2))` -/
def P11087431533795960526.Spec : Prop :=
  ∀ n, P11087431533795960526.a n = A369938 (n + 1)

end A369938

/-!
# A369939: Numbers whose maximal exponent in their prime factorization is a Fibonacci number.

The programs for A369939, the canonical program `A369939.P1009109779092640903` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369939 has offset 1).

The definition of A369939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369939.P3215883607224196601

`and(A115063(n+1), A375155(n+1))`
-/

namespace A369939.P3215883607224196601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115063 (n + 1)) (A375155 (n + 1))

end

end A369939.P3215883607224196601

namespace A369939

/-- `and(A115063(n+1), A375155(n+1))` -/
def P3215883607224196601.Spec : Prop :=
  ∀ n, P3215883607224196601.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P13538527458327457855

`A115063(n+1)%A004733(n)`
-/

namespace A369939.P13538527458327457855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115063 (n + 1)) (A004733 n)

end

end A369939.P13538527458327457855

namespace A369939

/-- `A115063(n+1)%A004733(n)` -/
def P13538527458327457855.Spec : Prop :=
  ∀ n, P13538527458327457855.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P14658179980248032850

`and(A003261(n+1), A115063(n+1))`
-/

namespace A369939.P14658179980248032850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A115063 (n + 1))

end

end A369939.P14658179980248032850

namespace A369939

/-- `and(A003261(n+1), A115063(n+1))` -/
def P14658179980248032850.Spec : Prop :=
  ∀ n, P14658179980248032850.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P4783474955455920669

`and(A115063(n+1), A163383(n+1))`
-/

namespace A369939.P4783474955455920669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115063 (n + 1)) (A163383 (n + 1))

end

end A369939.P4783474955455920669

namespace A369939

/-- `and(A115063(n+1), A163383(n+1))` -/
def P4783474955455920669.Spec : Prop :=
  ∀ n, P4783474955455920669.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P5686383365493372815

`and(A055580(n), A115063(n+1))`
-/

namespace A369939.P5686383365493372815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A115063 (n + 1))

end

end A369939.P5686383365493372815

namespace A369939

/-- `and(A055580(n), A115063(n+1))` -/
def P5686383365493372815.Spec : Prop :=
  ∀ n, P5686383365493372815.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P9724715683829894921

`and(A107392(n), A115063(n+1))`
-/

namespace A369939.P9724715683829894921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A115063 (n + 1))

end

end A369939.P9724715683829894921

namespace A369939

/-- `and(A107392(n), A115063(n+1))` -/
def P9724715683829894921.Spec : Prop :=
  ∀ n, P9724715683829894921.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P17819324733937681791

`and(A107464(n), A115063(n+1))`
-/

namespace A369939.P17819324733937681791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A115063 (n + 1))

end

end A369939.P17819324733937681791

namespace A369939

/-- `and(A107464(n), A115063(n+1))` -/
def P17819324733937681791.Spec : Prop :=
  ∀ n, P17819324733937681791.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P15208030230389165538

`and(A107953(n), A115063(n+1))`
-/

namespace A369939.P15208030230389165538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A115063 (n + 1))

end

end A369939.P15208030230389165538

namespace A369939

/-- `and(A107953(n), A115063(n+1))` -/
def P15208030230389165538.Spec : Prop :=
  ∀ n, P15208030230389165538.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P9138603151453498913

`and(A115063(n+1), A211386(n))`
-/

namespace A369939.P9138603151453498913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115063 (n + 1)) (A211386 n)

end

end A369939.P9138603151453498913

namespace A369939

/-- `and(A115063(n+1), A211386(n))` -/
def P9138603151453498913.Spec : Prop :=
  ∀ n, P9138603151453498913.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P3382734409506518544

`and(A107954(n), A115063(n+1))`
-/

namespace A369939.P3382734409506518544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A115063 (n + 1))

end

end A369939.P3382734409506518544

namespace A369939

/-- `and(A107954(n), A115063(n+1))` -/
def P3382734409506518544.Spec : Prop :=
  ∀ n, P3382734409506518544.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P1485171487310814035

`and(A107955(n), A115063(n+1))`
-/

namespace A369939.P1485171487310814035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A115063 (n + 1))

end

end A369939.P1485171487310814035

namespace A369939

/-- `and(A107955(n), A115063(n+1))` -/
def P1485171487310814035.Spec : Prop :=
  ∀ n, P1485171487310814035.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P1009109779092640903

`eq[1, A166918(A051903(n+1)!)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369939

/-- `eq[1, A166918(A051903(n+1)!)]+1` -/
def P1009109779092640903.Spec : Prop :=
  ∀ n, (P1009109779092640903.a n : ℤ) = A369939 (n + 1)

theorem P1009109779092640903.correct : P1009109779092640903.Spec := by
  intro n
  simp only [A369939, Nat.add_sub_cancel]

end A369939

/-! ## A369939.P17536653147220933419

`record[A073353(n+1)-A053166(A268385(n+1))]`
-/

namespace A369939.P17536653147220933419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A053166 (A268385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369939.P17536653147220933419

namespace A369939

/-- `record[A073353(n+1)-A053166(A268385(n+1))]` -/
def P17536653147220933419.Spec : Prop :=
  ∀ n, P17536653147220933419.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P16282814168611473979

`A115063(n+1)%A001550(n)`
-/

namespace A369939.P16282814168611473979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115063 (n + 1)) (A001550 n)

end

end A369939.P16282814168611473979

namespace A369939

/-- `A115063(n+1)%A001550(n)` -/
def P16282814168611473979.Spec : Prop :=
  ∀ n, P16282814168611473979.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P66920807939403896

`and(A018886(n+1), A115063(n+1))`
-/

namespace A369939.P66920807939403896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A115063 (n + 1))

end

end A369939.P66920807939403896

namespace A369939

/-- `and(A018886(n+1), A115063(n+1))` -/
def P66920807939403896.Spec : Prop :=
  ∀ n, P66920807939403896.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P14302499122170022864

`and(A115063(n+1), A164291(n+2))`
-/

namespace A369939.P14302499122170022864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115063 (n + 1)) (A164291 (n + 2))

end

end A369939.P14302499122170022864

namespace A369939

/-- `and(A115063(n+1), A164291(n+2))` -/
def P14302499122170022864.Spec : Prop :=
  ∀ n, P14302499122170022864.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P9622080397235625375

`and(A060160(n+1), A115063(n+1))`
-/

namespace A369939.P9622080397235625375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A115063 (n + 1))

end

end A369939.P9622080397235625375

namespace A369939

/-- `and(A060160(n+1), A115063(n+1))` -/
def P9622080397235625375.Spec : Prop :=
  ∀ n, P9622080397235625375.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P18298208142871414388

`A115063(n+1)%A000980(n)`
-/

namespace A369939.P18298208142871414388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115063 (n + 1)) (A000980 n)

end

end A369939.P18298208142871414388

namespace A369939

/-- `A115063(n+1)%A000980(n)` -/
def P18298208142871414388.Spec : Prop :=
  ∀ n, P18298208142871414388.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P15982684718846840395

`and(A115063(n+1), A381707(n+1))`
-/

namespace A369939.P15982684718846840395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115063 (n + 1)) (A381707 (n + 1))

end

end A369939.P15982684718846840395

namespace A369939

/-- `and(A115063(n+1), A381707(n+1))` -/
def P15982684718846840395.Spec : Prop :=
  ∀ n, P15982684718846840395.a n = A369939 (n + 1)

end A369939

/-! ## A369939.P7291022650475456486

`A390439(n+1)%A000217(A000217(2*(n+2)))`
-/

namespace A369939.P7291022650475456486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390439 (n + 1)) (A000217 (A000217 (2 * (n + 2))).toNat)

end

end A369939.P7291022650475456486

namespace A369939

/-- `A390439(n+1)%A000217(A000217(2*(n+2)))` -/
def P7291022650475456486.Spec : Prop :=
  ∀ n, P7291022650475456486.a n = A369939 (n + 1)

end A369939

/-!
# A369940: Expansion of 1/(1 - x^3/(1-9*x)^(1/3)).

The programs for A369940, there is no canonical definition to state claims against.
-/

/-! ## A369940.P2090479225850027688

`A179834((n-1)*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A369940.P2090479225850027688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A179834 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A369940.P2090479225850027688

/-! ## A369940.P16178608518671149665

`A351007(A289975(n))`
-/

namespace A369940.P16178608518671149665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (A289975 n).toNat

end

end A369940.P16178608518671149665

/-! ## A369940.P3471541928672180417

`xor(n, A156642(A335386(n+1)))`
-/

namespace A369940.P3471541928672180417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A156642 (A335386 (n + 1)).toNat)

end

end A369940.P3471541928672180417

/-!
# A369941: Expansion of e.g.f. exp(x^2/(2 * sqrt(1-2*x))).

The programs for A369941, there is no canonical definition to state claims against.
-/

/-! ## A369941.P412493156800708080

`A095259(2*a(n-1)-1)+11` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A369941.P412493156800708080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  A095259 (2 * a (n - 1) - 1).toNat + 11

end

end A369941.P412493156800708080

/-! ## A369941.P11931702625533020474

`A106609(2*A052887(n))`
-/

namespace A369941.P11931702625533020474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A052887 n).toNat

end

end A369941.P11931702625533020474

/-!
# A369942: a(n) is the number of distinct values of the determinant of an n X n Hankel matrix using the integers 1 to 2*n - 1.

The programs for A369942, there is no canonical definition to state claims against.
-/

/-! ## A369942.P10611903343345964558

`A322587(A385276(n)²)`
-/

namespace A369942.P10611903343345964558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322587 (A385276 n ^ 2).toNat

end

end A369942.P10611903343345964558

/-!
# A369943: a(n) is the number of distinct values of the permanent of an n X n Hankel matrix using the integers 1 to 2*n - 1.

The programs for A369943, there is no canonical definition to state claims against.
-/

/-! ## A369943.P1388473643748199804

`A321699(A108478(n))`
-/

namespace A369943.P1388473643748199804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321699 (A108478 n).toNat

end

end A369943.P1388473643748199804

/-!
# A369944: a(n) is the number of distinct values of the determinant of an n X n Hankel matrix using the integers 0 to 2*(n - 1).

The programs for A369944, there is no canonical definition to state claims against.
-/

/-! ## A369944.P18292210046274748907

`A330257(3*a(n-1)-a(n-2)-(-1)^n)` with `a(0)=1, a(1)=1`
-/

namespace A369944.P18292210046274748907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A330257 (3 * a (n - 1) - a (n - 2) - (-1) ^ n).toNat

end

end A369944.P18292210046274748907

/-!
# A369945: a(n) is the number of distinct values of the permanent of an n X n Hankel matrix using the integers 0 to 2*(n - 1).

The programs for A369945, there is no canonical definition to state claims against.
-/

/-! ## A369945.P6220307865660687192

`A038770(∏[A049163(n)])`
-/

namespace A369945.P6220307865660687192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038770 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369945.P6220307865660687192

/-!
# A369949: a(n) is the number of distinct values of the determinant of an n X n Hankel matrix using the first 2*n - 1 prime numbers.

The programs for A369949, there is no canonical definition to state claims against.
-/

/-! ## A369949.P5177564052353625413

`A008366(lcm(2^(n-1), a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A369949.P5177564052353625413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A008366 (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1)))

end

end A369949.P5177564052353625413

/-!
# A369951: Volumes of integer-sided cuboids in which either the surface area divides the volume or vice versa (assuming dimensionless unit of length).

The programs for A369951, there is no canonical definition to state claims against.
-/

/-! ## A369951.P10324589323408924595

`record[A079277(n+2)/A205497(n)]`
-/

namespace A369951.P10324589323408924595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079277 (n + 2) : ℚ) / (A205497 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369951.P10324589323408924595

/-! ## A369951.P6577673333049515980

`∪[A000079(n), A004185(A159740(n+2))]`
-/

namespace A369951.P6577673333049515980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A159740 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369951.P6577673333049515980

/-! ## A369951.P13607248086830778714

`A355880(A117563(n+1)+A000040(2*(n+2)))`
-/

namespace A369951.P13607248086830778714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A117563 (n + 1) + A000040 (2 * (n + 2))).toNat

end

end A369951.P13607248086830778714

/-!
# A369952: a(n) is the number of distinct values of the permanent of an n X n Hankel matrix using the first 2*n - 1 prime numbers.

The programs for A369952, there is no canonical definition to state claims against.
-/

/-! ## A369952.P14935130634897648221

`A049473((n+1)*A068045(3*(n+1)))`
-/

namespace A369952.P14935130634897648221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 ((n + 1 : ℤ) * A068045 (3 * (n + 1))).toNat

end

end A369952.P14935130634897648221

/-!
# A369953: a(n) is the least integer k such that the sum of the digits of k^2 is 9*n.

The programs for A369953, there is no canonical definition to state claims against.
-/

/-! ## A369953.P16870300090695649004

`A358702(A050625(n+2))`
-/

namespace A369953.P16870300090695649004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358702 (A050625 (n + 2)).toNat

end

end A369953.P16870300090695649004

/-! ## A369953.P920276666263364041

`A358702(3*A008486(n))`
-/

namespace A369953.P920276666263364041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358702 (3 * A008486 n).toNat

end

end A369953.P920276666263364041

/-!
# A369954: Numbers k that are neither squarefree nor prime powers and also coprime to 6.

The programs for A369954, the canonical program `A369954.P18236350028831961352` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369954 has offset 1).

The definition of A369954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2851 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369954.P18236350028831961352

`filter[A360769(n+1), A187074(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A369954

/-- `filter[A360769(n+1), A187074(#)]` -/
def P18236350028831961352.Spec : Prop :=
  ∀ n, P18236350028831961352.a n = A369954 (n + 1)

theorem P18236350028831961352.correct : P18236350028831961352.Spec := by
  intro n
  simp only [A369954, Nat.add_sub_cancel]

end A369954

/-! ## A369954.P709747061481113873

`filter[A360769(n+1), A359374(#)]`
-/

namespace A369954.P709747061481113873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A369954.P709747061481113873

namespace A369954

/-- `filter[A360769(n+1), A359374(#)]` -/
def P709747061481113873.Spec : Prop :=
  ∀ n, P709747061481113873.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P3290946655706750602

`filter[A360769(n+1), A373155(#)]`
-/

namespace A369954.P3290946655706750602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A369954.P3290946655706750602

namespace A369954

/-- `filter[A360769(n+1), A373155(#)]` -/
def P3290946655706750602.Spec : Prop :=
  ∀ n, P3290946655706750602.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P10320142121812172539

`filter[A360769(n+1), A373156(#)]`
-/

namespace A369954.P10320142121812172539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A369954.P10320142121812172539

namespace A369954

/-- `filter[A360769(n+1), A373156(#)]` -/
def P10320142121812172539.Spec : Prop :=
  ∀ n, P10320142121812172539.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P2674868603021925065

`filter[A360769(n+1), A374043(#)]`
-/

namespace A369954.P2674868603021925065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A369954.P2674868603021925065

namespace A369954

/-- `filter[A360769(n+1), A374043(#)]` -/
def P2674868603021925065.Spec : Prop :=
  ∀ n, P2674868603021925065.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P14796546330934656428

`filter[A360769(n+1), A320106(#)]`
-/

namespace A369954.P14796546330934656428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A369954.P14796546330934656428

namespace A369954

/-- `filter[A360769(n+1), A320106(#)]` -/
def P14796546330934656428.Spec : Prop :=
  ∀ n, P14796546330934656428.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P16187271000016045801

`filter[A360769(n+1), A354354(#)]`
-/

namespace A369954.P16187271000016045801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A369954.P16187271000016045801

namespace A369954

/-- `filter[A360769(n+1), A354354(#)]` -/
def P16187271000016045801.Spec : Prop :=
  ∀ n, P16187271000016045801.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P17289288908104688232

`filter[A369276(n+1), A354354(#)]`
-/

namespace A369954.P17289288908104688232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A369954.P17289288908104688232

namespace A369954

/-- `filter[A369276(n+1), A354354(#)]` -/
def P17289288908104688232.Spec : Prop :=
  ∀ n, P17289288908104688232.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P7301199175583432605

`filter[A038509(n+1), A355447(#)]`
-/

namespace A369954.P7301199175583432605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A369954.P7301199175583432605

namespace A369954

/-- `filter[A038509(n+1), A355447(#)]` -/
def P7301199175583432605.Spec : Prop :=
  ∀ n, P7301199175583432605.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P4332529941726552672

`∩[A038509(n+1), A360769(n+1)]`
-/

namespace A369954.P4332529941726552672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369954.P4332529941726552672

namespace A369954

/-- `∩[A038509(n+1), A360769(n+1)]` -/
def P4332529941726552672.Spec : Prop :=
  ∀ n, (P4332529941726552672.a n : ℤ) = A369954 (n + 1)

end A369954

/-! ## A369954.P5068259206651868015

`∩[A038509(n+1), A369276(n+1)]`
-/

namespace A369954.P5068259206651868015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369954.P5068259206651868015

namespace A369954

/-- `∩[A038509(n+1), A369276(n+1)]` -/
def P5068259206651868015.Spec : Prop :=
  ∀ n, (P5068259206651868015.a n : ℤ) = A369954 (n + 1)

end A369954

/-! ## A369954.P15096716040566875377

`filter[A360765(n+1), A354354(#)]`
-/

namespace A369954.P15096716040566875377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A369954.P15096716040566875377

namespace A369954

/-- `filter[A360765(n+1), A354354(#)]` -/
def P15096716040566875377.Spec : Prop :=
  ∀ n, P15096716040566875377.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P13009940537184087142

`∩[A038509(n+1), A360765(n+1)]`
-/

namespace A369954.P13009940537184087142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369954.P13009940537184087142

namespace A369954

/-- `∩[A038509(n+1), A360765(n+1)]` -/
def P13009940537184087142.Spec : Prop :=
  ∀ n, (P13009940537184087142.a n : ℤ) = A369954 (n + 1)

end A369954

/-! ## A369954.P9111141081352512839

`filter[A367455(n+1), A320106(#)]`
-/

namespace A369954.P9111141081352512839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A369954.P9111141081352512839

namespace A369954

/-- `filter[A367455(n+1), A320106(#)]` -/
def P9111141081352512839.Spec : Prop :=
  ∀ n, P9111141081352512839.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P5250072136462653456

`filter[A367455(n+1), A354354(#)]`
-/

namespace A369954.P5250072136462653456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A369954.P5250072136462653456

namespace A369954

/-- `filter[A367455(n+1), A354354(#)]` -/
def P5250072136462653456.Spec : Prop :=
  ∀ n, P5250072136462653456.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P2449735679402516330

`filter[A367455(n+1), A373156(#)]`
-/

namespace A369954.P2449735679402516330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A369954.P2449735679402516330

namespace A369954

/-- `filter[A367455(n+1), A373156(#)]` -/
def P2449735679402516330.Spec : Prop :=
  ∀ n, P2449735679402516330.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P1129756136043272118

`∩[A038509(n+1), A367455(n+1)]`
-/

namespace A369954.P1129756136043272118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369954.P1129756136043272118

namespace A369954

/-- `∩[A038509(n+1), A367455(n+1)]` -/
def P1129756136043272118.Spec : Prop :=
  ∀ n, (P1129756136043272118.a n : ℤ) = A369954 (n + 1)

end A369954

/-! ## A369954.P8575721369379020355

`∩[A090818(n+1), A360769(n+1)]`
-/

namespace A369954.P8575721369379020355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369954.P8575721369379020355

namespace A369954

/-- `∩[A090818(n+1), A360769(n+1)]` -/
def P8575721369379020355.Spec : Prop :=
  ∀ n, (P8575721369379020355.a n : ℤ) = A369954 (n + 1)

end A369954

/-! ## A369954.P14507845836461473004

`filter[A007310(n+1), A355447(#)]`
-/

namespace A369954.P14507845836461473004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A369954.P14507845836461473004

namespace A369954

/-- `filter[A007310(n+1), A355447(#)]` -/
def P14507845836461473004.Spec : Prop :=
  ∀ n, P14507845836461473004.a n = A369954 (n + 1)

end A369954

/-! ## A369954.P9370125438601947445

`filter[A038179(n+1), A355447(#)]`
-/

namespace A369954.P9370125438601947445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A369954.P9370125438601947445

namespace A369954

/-- `filter[A038179(n+1), A355447(#)]` -/
def P9370125438601947445.Spec : Prop :=
  ∀ n, P9370125438601947445.a n = A369954 (n + 1)

end A369954

/-!
# A369957: Primes p such that p - 3 and p + 3 are triprimes.

The programs for A369957, there is no canonical definition to state claims against.
-/

/-! ## A369957.P8772545296436620252

`p?[A105572(n+1)]`
-/

namespace A369957.P8772545296436620252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A369957.P8772545296436620252

/-! ## A369957.P15325703975247320039

`record[A020639(A105572(n+2))]`
-/

namespace A369957.P15325703975247320039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105572 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369957.P15325703975247320039

/-! ## A369957.P13558096865108060546

`filter[A105572(n+1), A010051(#)]`
-/

namespace A369957.P13558096865108060546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A369957.P13558096865108060546

/-! ## A369957.P13445561039938456683

`filter[A105572(n+1), A323152(#)]`
-/

namespace A369957.P13445561039938456683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A369957.P13445561039938456683

/-! ## A369957.P17112646147620072635

`filter[A105572(n+1), A323153(#)]`
-/

namespace A369957.P17112646147620072635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A369957.P17112646147620072635

/-! ## A369957.P4406400008751302780

`∩[A000040(n+1), A105572(n+1)]`
-/

namespace A369957.P4406400008751302780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P4406400008751302780

/-! ## A369957.P6382041676752478867

`∩[A001132(n+1), A105572(n+1)]`
-/

namespace A369957.P6382041676752478867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P6382041676752478867

/-! ## A369957.P516854533260358072

`∩[A004139(n+1), A105572(n+1)]`
-/

namespace A369957.P516854533260358072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P516854533260358072

/-! ## A369957.P16312308836889594451

`∩[A006005(n+1), A105572(n+1)]`
-/

namespace A369957.P16312308836889594451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P16312308836889594451

/-! ## A369957.P2018216169871128929

`∩[A008578(n+1), A105572(n+1)]`
-/

namespace A369957.P2018216169871128929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P2018216169871128929

/-! ## A369957.P6206087452445578434

`∩[A033946(n+1), A105572(n+1)]`
-/

namespace A369957.P6206087452445578434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P6206087452445578434

/-! ## A369957.P4485479016777087179

`∩[A038873(n+1), A105572(n+1)]`
-/

namespace A369957.P4485479016777087179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P4485479016777087179

/-! ## A369957.P3538785385425905272

`∩[A045319(n+1), A105572(n+1)]`
-/

namespace A369957.P3538785385425905272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P3538785385425905272

/-! ## A369957.P5709658660517607890

`∩[A045323(n+1), A105572(n+1)]`
-/

namespace A369957.P5709658660517607890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P5709658660517607890

/-! ## A369957.P16263433407377916790

`∩[A045344(n+1), A105572(n+1)]`
-/

namespace A369957.P16263433407377916790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P16263433407377916790

/-! ## A369957.P6244093901230641602

`∩[A045352(n+1), A105572(n+1)]`
-/

namespace A369957.P6244093901230641602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P6244093901230641602

/-! ## A369957.P11437061780032146695

`∩[A045419(n+1), A105572(n+1)]`
-/

namespace A369957.P11437061780032146695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P11437061780032146695

/-! ## A369957.P6341496835809216836

`∩[A045442(n+1), A105572(n+1)]`
-/

namespace A369957.P6341496835809216836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P6341496835809216836

/-! ## A369957.P6110011526960449286

`∩[A046022(n+1), A105572(n+1)]`
-/

namespace A369957.P6110011526960449286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P6110011526960449286

/-! ## A369957.P17631556562079047357

`∩[A051948(n+1), A105572(n+1)]`
-/

namespace A369957.P17631556562079047357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369957.P17631556562079047357

/-!
# A369959: Numbers k such that A003415(k) >= A276086(k) and gcd(k, A003415(k)) = gcd(k, A276086(k)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369959, there is no canonical definition to state claims against.
-/

/-! ## A369959.P13193614422998786690

`filter[A351228(1+n), A369961(#)]`
-/

namespace A369959.P13193614422998786690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351228 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369959.P13193614422998786690

/-! ## A369959.P5708703027766541963

`filter[A369958(n+1), A369961(#)]`
-/

namespace A369959.P5708703027766541963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369959.P5708703027766541963

/-!
# A369960: Numbers k such that A003415(k) >= A276086(k) and gcd(k, A003415(k)) = gcd(k, A276086(k)) > 1, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369960, there is no canonical definition to state claims against.
-/

/-! ## A369960.P5823636197436459455

`filter[A369959(n+1), A065202(#)]`
-/

namespace A369960.P5823636197436459455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A369960.P5823636197436459455

/-! ## A369960.P12789138317830508774

`filter[A369959(n+1), A087049(#)]`
-/

namespace A369960.P12789138317830508774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A369960.P12789138317830508774

/-! ## A369960.P4221737637390417972

`filter[A369959(n+1), A326072(#)]`
-/

namespace A369960.P4221737637390417972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A369960.P4221737637390417972

/-! ## A369960.P3122910511294098972

`filter[A369959(n+1), A353470(#)]`
-/

namespace A369960.P3122910511294098972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A369960.P3122910511294098972

/-! ## A369960.P5527910281838926530

`filter[A369959(n+1), A353626(#)]`
-/

namespace A369960.P5527910281838926530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A369960.P5527910281838926530

/-!
# A369961: a(n) = 1 if gcd(n, A003415(n)) is equal to gcd(n, A276086(n)), otherwise 0, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369961, there is no canonical definition to state claims against.
-/

/-! ## A369961.P11251913638761515468

`char[A369962(n+1)]`
-/

namespace A369961.P11251913638761515468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369961.P11251913638761515468

/-! ## A369961.P5721964769805466566

`char[xor(A193291(n+1), A358137(n+1))]`
-/

namespace A369961.P5721964769805466566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193291 (n + 1)) (A358137 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369961.P5721964769805466566

/-! ## A369961.P9413343850923859569

`A213729(A003114(n+2)*A065342(n+2))`
-/

namespace A369961.P9413343850923859569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (A003114 (n + 2) * A065342 (n + 2)).toNat

end

end A369961.P9413343850923859569

/-! ## A369961.P17329537029070576088

`A196147(A152205(n+1))`
-/

namespace A369961.P17329537029070576088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196147 (A152205 (n + 1)).toNat

end

end A369961.P17329537029070576088

/-! ## A369961.P7696865916740088092

`A360071(A152205(n+1)+3)`
-/

namespace A369961.P7696865916740088092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360071 (A152205 (n + 1) + 3).toNat

end

end A369961.P7696865916740088092

/-!
# A369962: Numbers k for which gcd(k, A003415(k)) is equal to gcd(k, A276086(k)), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369962, there is no canonical definition to state claims against.
-/

/-! ## A369962.P2339650632983177786

`lt[0, A369961(n)]`
-/

namespace A369962.P2339650632983177786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369962.P2339650632983177786

/-! ## A369962.P7143068623929281451

`eq[A010121(n), A369961(n)]`
-/

namespace A369962.P7143068623929281451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P7143068623929281451

/-! ## A369962.P14397165968449238636

`eq[A010130(n), A369961(n)]`
-/

namespace A369962.P14397165968449238636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P14397165968449238636

/-! ## A369962.P9313088573912281564

`eq[A010153(n), A369961(n)]`
-/

namespace A369962.P9313088573912281564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P9313088573912281564

/-! ## A369962.P2096366925659132559

`eq[A040037(n), A369961(n)]`
-/

namespace A369962.P2096366925659132559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P2096366925659132559

/-! ## A369962.P2123428976271982719

`filter[A371088(n+1), A369961(#)]`
-/

namespace A369962.P2123428976271982719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P2123428976271982719

/-! ## A369962.P13317053369011289495

`filter[A048103(n+1), A369961(#)]`
-/

namespace A369962.P13317053369011289495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P13317053369011289495

/-! ## A369962.P6610188154071554464

`filter[A042968(n+1), A369961(#)]`
-/

namespace A369962.P6610188154071554464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P6610188154071554464

/-! ## A369962.P556134309242551935

`filter[A359794(n+1), A369961(#)]`
-/

namespace A369962.P556134309242551935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P556134309242551935

/-! ## A369962.P9276835998928501231

`filter[A047588(n+1), A369961(#)]`
-/

namespace A369962.P9276835998928501231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P9276835998928501231

/-! ## A369962.P4632644414531840729

`filter[A047592(n+1), A369961(#)]`
-/

namespace A369962.P4632644414531840729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P4632644414531840729

/-! ## A369962.P18285650902362966052

`filter[A168186(n+1), A369961(#)]`
-/

namespace A369962.P18285650902362966052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P18285650902362966052

/-! ## A369962.P14193912650284829574

`filter[A064598(n+1), A369961(#)]`
-/

namespace A369962.P14193912650284829574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P14193912650284829574

/-! ## A369962.P16198916538242313702

`filter[A068937(n+1), A369961(#)]`
-/

namespace A369962.P16198916538242313702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P16198916538242313702

/-! ## A369962.P1860352025039928072

`filter[A069782(n+1), A369961(#)]`
-/

namespace A369962.P1860352025039928072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P1860352025039928072

/-! ## A369962.P15154145975871081206

`filter[A153152(n), A369961(#)]`
-/

namespace A369962.P15154145975871081206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P15154145975871081206

/-! ## A369962.P16520640757582521908

`filter[A190621(n), A369961(#)]`
-/

namespace A369962.P16520640757582521908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369962.P16520640757582521908

/-! ## A369962.P14002544384551526176

`eq[A010194(n), A369961(n)]`
-/

namespace A369962.P14002544384551526176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P14002544384551526176

/-! ## A369962.P7676584678427318352

`eq[A010195(n), A369961(n)]`
-/

namespace A369962.P7676584678427318352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P7676584678427318352

/-! ## A369962.P15017895033307271975

`eq[A010209(n), A369961(n)]`
-/

namespace A369962.P15017895033307271975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369962.P15017895033307271975

/-!
# A369963: Numbers k for which x = gcd(k, A003415(k)) = gcd(k, A276086(k)) and x > 1, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369963, there is no canonical definition to state claims against.
-/

/-! ## A369963.P16509007909896875653

`filter[A013929(n+1), A369961(#)]`
-/

namespace A369963.P16509007909896875653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P16509007909896875653

/-! ## A369963.P7135600688384703348

`filter[A371086(n+1), A369961(#)]`
-/

namespace A369963.P7135600688384703348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P7135600688384703348

/-! ## A369963.P71755775193049325

`filter[A400161(n+1), A369961(#)]`
-/

namespace A369963.P71755775193049325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P71755775193049325

/-! ## A369963.P11891897724387531435

`filter[A371083(n+1), A369961(#)]`
-/

namespace A369963.P11891897724387531435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P11891897724387531435

/-! ## A369963.P5386370792774516963

`filter[A319927(n+1), A369961(#)]`
-/

namespace A369963.P5386370792774516963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P5386370792774516963

/-! ## A369963.P9180165848759741088

`filter[A105570(n), A369961(#)]`
-/

namespace A369963.P9180165848759741088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P9180165848759741088

/-! ## A369963.P8308790913978046024

`filter[A307579(n+1), A369961(#)]`
-/

namespace A369963.P8308790913978046024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P8308790913978046024

/-! ## A369963.P17436775086889130762

`filter[A038838(n+1), A369961(#)]`
-/

namespace A369963.P17436775086889130762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P17436775086889130762

/-! ## A369963.P5220732954518252493

`filter[A335437(n+1), A369961(#)]`
-/

namespace A369963.P5220732954518252493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P5220732954518252493

/-! ## A369963.P3844618884433306294

`filter[A393869(n+1), A369961(#)]`
-/

namespace A369963.P3844618884433306294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P3844618884433306294

/-! ## A369963.P18108473686936286980

`filter[A392815(n+1), A369961(#)]`
-/

namespace A369963.P18108473686936286980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P18108473686936286980

/-! ## A369963.P17438704019019748316

`filter[A046790(n+1), A369961(#)]`
-/

namespace A369963.P17438704019019748316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P17438704019019748316

/-! ## A369963.P15917021862066701183

`filter[A072903(n+1), A369961(#)]`
-/

namespace A369963.P15917021862066701183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A369963.P15917021862066701183

/-! ## A369963.P1325716739295473552

`filter[A369962(n+1), A353626(#)]`
-/

namespace A369963.P1325716739295473552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A369963.P1325716739295473552

/-! ## A369963.P5528190308221441208

`filter[A369962(n+1), A359467(#)]`
-/

namespace A369963.P5528190308221441208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359467 (f1 j).toNat = 1) n)

end

end A369963.P5528190308221441208

/-! ## A369963.P5049849787202644083

`filter[A369962(n+1), A371084(#)]`
-/

namespace A369963.P5049849787202644083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371084 (f1 j).toNat = 1) n)

end

end A369963.P5049849787202644083

/-! ## A369963.P1675165077704571100

`filter[A369962(n+2), A087049(#)]`
-/

namespace A369963.P1675165077704571100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A369963.P1675165077704571100

/-! ## A369963.P2961561991136714532

`∩[A013929(n+1), A369962(n+1)]`
-/

namespace A369963.P2961561991136714532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369963.P2961561991136714532

/-! ## A369963.P3196974500169690291

`∩[A038838(n+1), A369962(n+1)]`
-/

namespace A369963.P3196974500169690291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369963.P3196974500169690291

/-! ## A369963.P14780797351167222722

`∩[A046790(n+1), A369962(n+1)]`
-/

namespace A369963.P14780797351167222722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369963.P14780797351167222722

/-!
# A369964: a(n) = gcd(n, A276086(A003415(n))), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369964, there is no canonical definition to state claims against.
-/

/-! ## A369964.P14060902213217473507

`gcd(n, A327859(n))`
-/

namespace A369964.P14060902213217473507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A327859 n)

end

end A369964.P14060902213217473507

/-! ## A369964.P8183407163707996703

`A327859(n)/A370117(n)`
-/

namespace A369964.P8183407163707996703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327859 n : ℚ) / (A370117 n : ℚ)

end

end A369964.P8183407163707996703

/-! ## A369964.P5801669577561155730

`gcd(n, A276086(A003415(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369964.P5801669577561155730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276086 (A003415 n).toNat)

end

end A369964.P5801669577561155730

/-! ## A369964.P12539443146187438451

`A276086(A003415(n)-A370120(n))`
-/

namespace A369964.P12539443146187438451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A003415 n - A370120 n).toNat

end

end A369964.P12539443146187438451

/-! ## A369964.P15488961316366550106

`A276086(A003415(n))/A370117(n)`
-/

namespace A369964.P15488961316366550106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 (A003415 n).toNat : ℚ) / (A370117 n : ℚ)

end

end A369964.P15488961316366550106

/-! ## A369964.P14113110113114641224

`A327859(n)/A276086(A370120(n))`
-/

namespace A369964.P14113110113114641224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327859 n : ℚ) / (A276086 (A370120 n).toNat : ℚ)

end

end A369964.P14113110113114641224

/-!
# A369965: a(n) = 1 if n is of the form 4m+2 and it has an even number of prime factors with multiplicity, otherwise 0.

The programs for A369965, the canonical program `A369965.P8685250262723553120` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369965 has offset 0).

The definition of A369965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369965.P2873757455211292727

`char[A369966(n+1)]`
-/

namespace A369965.P2873757455211292727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369965.P2873757455211292727

namespace A369965

/-- `char[A369966(n+1)]` -/
def P2873757455211292727.Spec : Prop :=
  ∀ n, (P2873757455211292727.a n : ℤ) = A369965 n

end A369965

/-! ## A369965.P15030022250292448528

`char[2*A067019(n+1)]`
-/

namespace A369965.P15030022250292448528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369965.P15030022250292448528

namespace A369965

/-- `char[2*A067019(n+1)]` -/
def P15030022250292448528.Spec : Prop :=
  ∀ n, (P15030022250292448528.a n : ℤ) = A369965 n

end A369965

/-! ## A369965.P1269178759537289804

`char[2*eq[1, A351233(n)%2]]`
-/

namespace A369965.P1269178759537289804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351233 n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369965.P1269178759537289804

namespace A369965

/-- `char[2*eq[1, A351233(n)%2]]` -/
def P1269178759537289804.Spec : Prop :=
  ∀ n, (P1269178759537289804.a n : ℤ) = A369965 n

end A369965

/-! ## A369965.P18214752429413597155

`and(floor(n/2), char[A063745(n+1)])`
-/

namespace A369965.P18214752429413597155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A369965.P18214752429413597155

namespace A369965

/-- `and(floor(n/2), char[A063745(n+1)])` -/
def P18214752429413597155.Spec : Prop :=
  ∀ n, P18214752429413597155.a n = A369965 n

end A369965

/-! ## A369965.P8685250262723553120

`A353558(A301293(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A369965

/-- `A353558(A301293(n))` -/
def P8685250262723553120.Spec : Prop :=
  ∀ n, P8685250262723553120.a n = A369965 n

theorem P8685250262723553120.correct : P8685250262723553120.Spec := by
  intro n
  simp only [A369965]

end A369965

/-! ## A369965.P2623014284329979705

`A353555(A121262(n)+n)`
-/

namespace A369965.P2623014284329979705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (A121262 n + (n : ℤ)).toNat

end

end A369965.P2623014284329979705

namespace A369965

/-- `A353555(A121262(n)+n)` -/
def P2623014284329979705.Spec : Prop :=
  ∀ n, P2623014284329979705.a n = A369965 n

end A369965

/-! ## A369965.P9097302507344231503

`A353556(2*n+1-A121262(n+2))`
-/

namespace A369965.P9097302507344231503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 ((2 * n + 1 : ℤ) - A121262 (n + 2)).toNat

end

end A369965.P9097302507344231503

namespace A369965

/-- `A353556(2*n+1-A121262(n+2))` -/
def P9097302507344231503.Spec : Prop :=
  ∀ n, P9097302507344231503.a n = A369965 n

end A369965

/-! ## A369965.P14871860995617594988

`A165560(A187541(n))`
-/

namespace A369965.P14871860995617594988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A187541 n).toNat

end

end A369965.P14871860995617594988

namespace A369965

/-- `A165560(A187541(n))` -/
def P14871860995617594988.Spec : Prop :=
  ∀ n, P14871860995617594988.a n = A369965 n

end A369965

/-! ## A369965.P13359242571282124558

`A165560(A246943(n))`
-/

namespace A369965.P13359242571282124558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A246943 n).toNat

end

end A369965.P13359242571282124558

namespace A369965

/-- `A165560(A246943(n))` -/
def P13359242571282124558.Spec : Prop :=
  ∀ n, P13359242571282124558.a n = A369965 n

end A369965

/-! ## A369965.P4298633227799026185

`A369660(A098699(n))`
-/

namespace A369965.P4298633227799026185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369660 (A098699 n).toNat

end

end A369965.P4298633227799026185

namespace A369965

/-- `A369660(A098699(n))` -/
def P4298633227799026185.Spec : Prop :=
  ∀ n, P4298633227799026185.a n = A369965 n

end A369965

/-! ## A369965.P15859085036185933411

`A353495(A002620(n))`
-/

namespace A369965.P15859085036185933411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A002620 n).toNat

end

end A369965.P15859085036185933411

namespace A369965

/-- `A353495(A002620(n))` -/
def P15859085036185933411.Spec : Prop :=
  ∀ n, P15859085036185933411.a n = A369965 n

end A369965

/-! ## A369965.P10692542434518021578

`A358773(A195058(n))`
-/

namespace A369965.P10692542434518021578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (A195058 n).toNat

end

end A369965.P10692542434518021578

namespace A369965

/-- `A358773(A195058(n))` -/
def P10692542434518021578.Spec : Prop :=
  ∀ n, P10692542434518021578.a n = A369965 n

end A369965

/-!
# A369966: Numbers of the form 4m+2 that have an even number of prime factors with multiplicity.

The programs for A369966, the canonical program `A369966.P13411901398628512597` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369966 has offset 1).

The definition of A369966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067019, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369966.P13411901398628512597

`2*A067019(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369966

/-- `2*A067019(n+1)` -/
def P13411901398628512597.Spec : Prop :=
  ∀ n, P13411901398628512597.a n = A369966 (n + 1)

theorem P13411901398628512597.correct : P13411901398628512597.Spec := by
  intro n
  simp only [A369966, Nat.add_sub_cancel]

end A369966

/-! ## A369966.P2418714529248323305

`filter[2*n, A369965(#)]`
-/

namespace A369966.P2418714529248323305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369965 (f1 j) = 1) n)

end

end A369966.P2418714529248323305

namespace A369966

/-- `filter[2*n, A369965(#)]` -/
def P2418714529248323305.Spec : Prop :=
  ∀ n, (P2418714529248323305.a n : ℤ) = A369966 (n + 1)

end A369966

/-! ## A369966.P2304806910669719765

`2*eq[1, A351233(n)%2]`
-/

namespace A369966.P2304806910669719765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351233 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369966.P2304806910669719765

namespace A369966

/-- `2*eq[1, A351233(n)%2]` -/
def P2304806910669719765.Spec : Prop :=
  ∀ n, (P2304806910669719765.a n : ℤ) = A369966 (n + 1)

end A369966

/-! ## A369966.P13126399770739900119

`filter[A016825(n), A358775(#)]`
-/

namespace A369966.P13126399770739900119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A369966.P13126399770739900119

namespace A369966

/-- `filter[A016825(n), A358775(#)]` -/
def P13126399770739900119.Spec : Prop :=
  ∀ n, P13126399770739900119.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P16746302330025010922

`filter[A016825(n), A359370(#)]`
-/

namespace A369966.P16746302330025010922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A369966.P16746302330025010922

namespace A369966

/-- `filter[A016825(n), A359370(#)]` -/
def P16746302330025010922.Spec : Prop :=
  ∀ n, P16746302330025010922.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P7258280372044696094

`filter[4*n+2, A065043(#)]`
-/

namespace A369966.P7258280372044696094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j) = 1) n)

end

end A369966.P7258280372044696094

namespace A369966

/-- `filter[4*n+2, A065043(#)]` -/
def P7258280372044696094.Spec : Prop :=
  ∀ n, (P7258280372044696094.a n : ℤ) = A369966 (n + 1)

end A369966

/-! ## A369966.P12850156401894095969

`filter[A016825(n), A353555(#)]`
-/

namespace A369966.P12850156401894095969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A369966.P12850156401894095969

namespace A369966

/-- `filter[A016825(n), A353555(#)]` -/
def P12850156401894095969.Spec : Prop :=
  ∀ n, P12850156401894095969.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P2006625924320883553

`filter[A016825(n), A353669(#)]`
-/

namespace A369966.P2006625924320883553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A369966.P2006625924320883553

namespace A369966

/-- `filter[A016825(n), A353669(#)]` -/
def P2006625924320883553.Spec : Prop :=
  ∀ n, P2006625924320883553.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P10056881562604413477

`filter[A358776(n+1), A166486(#)]`
-/

namespace A369966.P10056881562604413477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A369966.P10056881562604413477

namespace A369966

/-- `filter[A358776(n+1), A166486(#)]` -/
def P10056881562604413477.Spec : Prop :=
  ∀ n, P10056881562604413477.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P10992985944237940764

`filter[A358776(n+1), A359370(#)]`
-/

namespace A369966.P10992985944237940764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A369966.P10992985944237940764

namespace A369966

/-- `filter[A358776(n+1), A359370(#)]` -/
def P10992985944237940764.Spec : Prop :=
  ∀ n, P10992985944237940764.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P17488587343863721721

`filter[A358776(n+1), A359374(#)]`
-/

namespace A369966.P17488587343863721721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A369966.P17488587343863721721

namespace A369966

/-- `filter[A358776(n+1), A359374(#)]` -/
def P17488587343863721721.Spec : Prop :=
  ∀ n, P17488587343863721721.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P18425248875363760076

`filter[A358776(n+1), A359820(#)]`
-/

namespace A369966.P18425248875363760076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A369966.P18425248875363760076

namespace A369966

/-- `filter[A358776(n+1), A359820(#)]` -/
def P18425248875363760076.Spec : Prop :=
  ∀ n, P18425248875363760076.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P6750263237863822635

`filter[A358776(n+1), A391844(#)]`
-/

namespace A369966.P6750263237863822635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A369966.P6750263237863822635

namespace A369966

/-- `filter[A358776(n+1), A391844(#)]` -/
def P6750263237863822635.Spec : Prop :=
  ∀ n, P6750263237863822635.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P1124540044947602803

`eq[1, A369965(n)]`
-/

namespace A369966.P1124540044947602803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369966.P1124540044947602803

namespace A369966

/-- `eq[1, A369965(n)]` -/
def P1124540044947602803.Spec : Prop :=
  ∀ n, (P1124540044947602803.a n : ℤ) = A369966 (n + 1)

end A369966

/-! ## A369966.P15752547044104187122

`filter[A073760(n+1), A353555(#)]`
-/

namespace A369966.P15752547044104187122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353555 (f1 j).toNat = 1) n)

end

end A369966.P15752547044104187122

namespace A369966

/-- `filter[A073760(n+1), A353555(#)]` -/
def P15752547044104187122.Spec : Prop :=
  ∀ n, P15752547044104187122.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P9754833211310372856

`filter[A073760(n+1), A353669(#)]`
-/

namespace A369966.P9754833211310372856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A369966.P9754833211310372856

namespace A369966

/-- `filter[A073760(n+1), A353669(#)]` -/
def P9754833211310372856.Spec : Prop :=
  ∀ n, P9754833211310372856.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P743033491269212153

`filter[A073760(n+1), A358775(#)]`
-/

namespace A369966.P743033491269212153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358775 (f1 j).toNat = 1) n)

end

end A369966.P743033491269212153

namespace A369966

/-- `filter[A073760(n+1), A358775(#)]` -/
def P743033491269212153.Spec : Prop :=
  ∀ n, P743033491269212153.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P11441386084834691027

`filter[A073760(n+1), A359370(#)]`
-/

namespace A369966.P11441386084834691027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A369966.P11441386084834691027

namespace A369966

/-- `filter[A073760(n+1), A359370(#)]` -/
def P11441386084834691027.Spec : Prop :=
  ∀ n, P11441386084834691027.a n = A369966 (n + 1)

end A369966

/-! ## A369966.P15926160932995975301

`∩[A016825(n), A063745(n+1)]`
-/

namespace A369966.P15926160932995975301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369966.P15926160932995975301

namespace A369966

/-- `∩[A016825(n), A063745(n+1)]` -/
def P15926160932995975301.Spec : Prop :=
  ∀ n, (P15926160932995975301.a n : ℤ) = A369966 (n + 1)

end A369966

/-! ## A369966.P15281615244160351280

`∩[2*n, A359371(n+1)]`
-/

namespace A369966.P15281615244160351280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369966.P15281615244160351280

namespace A369966

/-- `∩[2*n, A359371(n+1)]` -/
def P15281615244160351280.Spec : Prop :=
  ∀ n, (P15281615244160351280.a n : ℤ) = A369966 (n + 1)

end A369966

/-!
# A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

The programs for A369967, the canonical program `A369967.P2338115965869939887` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369967 has offset 0).

The definition of A369967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369967.P14545103345480520149

`char[A327865(1+n)]`
-/

namespace A369967.P14545103345480520149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369967.P14545103345480520149

namespace A369967

/-- `char[A327865(1+n)]` -/
def P14545103345480520149.Spec : Prop :=
  ∀ n, (P14545103345480520149.a n : ℤ) = A369967 n

end A369967

/-! ## A369967.P9065128782987336091

`char[eq[5, gcd(5, A003415(n))]]`
-/

namespace A369967.P9065128782987336091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A003415 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A369967.P9065128782987336091

namespace A369967

/-- `char[eq[5, gcd(5, A003415(n))]]` -/
def P9065128782987336091.Spec : Prop :=
  ∀ n, (P9065128782987336091.a n : ℤ) = A369967 n

end A369967

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A369967

/-- `1-A011558(A003415(n))` -/
def P2338115965869939887.Spec : Prop :=
  ∀ n, P2338115965869939887.a n = A369967 n

theorem P2338115965869939887.correct : P2338115965869939887.Spec := by
  intro n
  simp only [A369967]

end A369967

/-! ## A369967.P16884283189271263835

`A079998(A003415(n))`
-/

namespace A369967.P16884283189271263835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A003415 n).toNat

end

end A369967.P16884283189271263835

namespace A369967

/-- `A079998(A003415(n))` -/
def P16884283189271263835.Spec : Prop :=
  ∀ n, P16884283189271263835.a n = A369967 n

end A369967

/-! ## A369967.P13318824635867796335

`A380484(6*A003415(n))`
-/

namespace A369967.P13318824635867796335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 (6 * A003415 n).toNat

end

end A369967.P13318824635867796335

namespace A369967

/-- `A380484(6*A003415(n))` -/
def P13318824635867796335.Spec : Prop :=
  ∀ n, P13318824635867796335.a n = A369967 n

end A369967

/-! ## A369967.P10518355986135627123

`val(A010208((n-A369052(n))/2), 3)`
-/

namespace A369967.P10518355986135627123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A010208 (SequenceMachineLib.roundAway (((n : ℤ) - A369052 n : ℚ) / 2)).toNat).toNat 3

end

end A369967.P10518355986135627123

namespace A369967

/-- `val(A010208((n-A369052(n))/2), 3)` -/
def P10518355986135627123.Spec : Prop :=
  ∀ n, (P10518355986135627123.a n : ℤ) = A369967 n

end A369967

/-! ## A369967.P16691702840772303510

`val(A180853(A129283(n)), A180853(n))`
-/

namespace A369967.P16691702840772303510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A180853 (A129283 n).toNat).toNat (A180853 n).toNat

end

end A369967.P16691702840772303510

namespace A369967

/-- `val(A180853(A129283(n)), A180853(n))` -/
def P16691702840772303510.Spec : Prop :=
  ∀ n, (P16691702840772303510.a n : ℤ) = A369967 n

end A369967

/-! ## A369967.P13051688829968824222

`and(1, char[A327865(A300362(n))])`
-/

namespace A369967.P13051688829968824222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (A300362 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A369967.P13051688829968824222

namespace A369967

/-- `and(1, char[A327865(A300362(n))])` -/
def P13051688829968824222.Spec : Prop :=
  ∀ n, (P13051688829968824222.a n : ℤ) = A369967 n

end A369967

/-! ## A369967.P11638102836846094875

`A079998(A327965(n)²)`
-/

namespace A369967.P11638102836846094875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A327965 n ^ 2).toNat

end

end A369967.P11638102836846094875

namespace A369967

/-- `A079998(A327965(n)²)` -/
def P11638102836846094875.Spec : Prop :=
  ∀ n, P11638102836846094875.a n = A369967 n

end A369967

/-!
# A369968: a(n) = 1 if n is not multiple of 5, but its arithmetic derivative is, otherwise 0.

The programs for A369968, the canonical program `A369968.P13152354729471573061` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369968 has offset 0).

The definition of A369968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369967, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369968.P13152354729471573061

`A011558(n)*A369967(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369968

/-- `A011558(n)*A369967(n)` -/
def P13152354729471573061.Spec : Prop :=
  ∀ n, P13152354729471573061.a n = A369968 n

theorem P13152354729471573061.correct : P13152354729471573061.Spec := by
  intro n
  simp only [A369968]

end A369968

/-! ## A369968.P12041058134791787204

`char[A369969(1+n)]`
-/

namespace A369968.P12041058134791787204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369969 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369968.P12041058134791787204

namespace A369968

/-- `char[A369969(1+n)]` -/
def P12041058134791787204.Spec : Prop :=
  ∀ n, (P12041058134791787204.a n : ℤ) = A369968 n

end A369968

/-! ## A369968.P8496027201264779021

`A011558(n*A369967(n))`
-/

namespace A369968.P8496027201264779021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 ((n : ℤ) * A369967 n).toNat

end

end A369968.P8496027201264779021

namespace A369968

/-- `A011558(n*A369967(n))` -/
def P8496027201264779021.Spec : Prop :=
  ∀ n, P8496027201264779021.a n = A369968 n

end A369968

/-! ## A369968.P11074913708557262756

`A185057(n*A369967(n))`
-/

namespace A369968.P11074913708557262756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185057 ((n : ℤ) * A369967 n).toNat

end

end A369968.P11074913708557262756

namespace A369968

/-- `A185057(n*A369967(n))` -/
def P11074913708557262756.Spec : Prop :=
  ∀ n, P11074913708557262756.a n = A369968 n

end A369968

/-! ## A369968.P7525298924492602922

`and(A010152(n), A369967(n))`
-/

namespace A369968.P7525298924492602922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010152 n) (A369967 n)

end

end A369968.P7525298924492602922

namespace A369968

/-- `and(A010152(n), A369967(n))` -/
def P7525298924492602922.Spec : Prop :=
  ∀ n, P7525298924492602922.a n = A369968 n

end A369968

/-! ## A369968.P12935502668524152811

`and(A040203(n), A369967(n))`
-/

namespace A369968.P12935502668524152811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040203 n) (A369967 n)

end

end A369968.P12935502668524152811

namespace A369968

/-- `and(A040203(n), A369967(n))` -/
def P12935502668524152811.Spec : Prop :=
  ∀ n, P12935502668524152811.a n = A369968 n

end A369968

/-! ## A369968.P17831383319347933642

`and(A040327(n), A369967(n))`
-/

namespace A369968.P17831383319347933642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040327 n) (A369967 n)

end

end A369968.P17831383319347933642

namespace A369968

/-- `and(A040327(n), A369967(n))` -/
def P17831383319347933642.Spec : Prop :=
  ∀ n, P17831383319347933642.a n = A369968 n

end A369968

/-! ## A369968.P8332479496229692003

`and(A040499(n), A369967(n))`
-/

namespace A369968.P8332479496229692003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040499 n) (A369967 n)

end

end A369968.P8332479496229692003

namespace A369968

/-- `and(A040499(n), A369967(n))` -/
def P8332479496229692003.Spec : Prop :=
  ∀ n, P8332479496229692003.a n = A369968 n

end A369968

/-! ## A369968.P7291334577753368797

`and(A131935(n+1), A369967(n))`
-/

namespace A369968.P7291334577753368797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131935 (n + 1)) (A369967 n)

end

end A369968.P7291334577753368797

namespace A369968

/-- `and(A131935(n+1), A369967(n))` -/
def P7291334577753368797.Spec : Prop :=
  ∀ n, P7291334577753368797.a n = A369968 n

end A369968

/-! ## A369968.P6042973972828077740

`and(A304298(n+1), A369967(n))`
-/

namespace A369968.P6042973972828077740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304298 (n + 1)) (A369967 n)

end

end A369968.P6042973972828077740

namespace A369968

/-- `and(A304298(n+1), A369967(n))` -/
def P6042973972828077740.Spec : Prop :=
  ∀ n, P6042973972828077740.a n = A369968 n

end A369968

/-! ## A369968.P15994566280941502865

`and(A120748(n+1), A369967(n))`
-/

namespace A369968.P15994566280941502865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120748 (n + 1)) (A369967 n)

end

end A369968.P15994566280941502865

namespace A369968

/-- `and(A120748(n+1), A369967(n))` -/
def P15994566280941502865.Spec : Prop :=
  ∀ n, P15994566280941502865.a n = A369968 n

end A369968

/-! ## A369968.P656446914398937358

`and(A324632(n+5), A369967(n))`
-/

namespace A369968.P656446914398937358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324632 (n + 5)) (A369967 n)

end

end A369968.P656446914398937358

namespace A369968

/-- `and(A324632(n+5), A369967(n))` -/
def P656446914398937358.Spec : Prop :=
  ∀ n, P656446914398937358.a n = A369968 n

end A369968

/-! ## A369968.P7819389230626127490

`and(A214525(n), A369967(n))`
-/

namespace A369968.P7819389230626127490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214525 n) (A369967 n)

end

end A369968.P7819389230626127490

namespace A369968

/-- `and(A214525(n), A369967(n))` -/
def P7819389230626127490.Spec : Prop :=
  ∀ n, P7819389230626127490.a n = A369968 n

end A369968

/-! ## A369968.P2181949712316168183

`and(A005178(n), A369967(n))`
-/

namespace A369968.P2181949712316168183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005178 n) (A369967 n)

end

end A369968.P2181949712316168183

namespace A369968

/-- `and(A005178(n), A369967(n))` -/
def P2181949712316168183.Spec : Prop :=
  ∀ n, P2181949712316168183.a n = A369968 n

end A369968

/-! ## A369968.P3731728711167571547

`and(A171064(n), A369967(n))`
-/

namespace A369968.P3731728711167571547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171064 n) (A369967 n)

end

end A369968.P3731728711167571547

namespace A369968

/-- `and(A171064(n), A369967(n))` -/
def P3731728711167571547.Spec : Prop :=
  ∀ n, P3731728711167571547.a n = A369968 n

end A369968

/-! ## A369968.P9704682825326715596

`and(A171066(n), A369967(n))`
-/

namespace A369968.P9704682825326715596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171066 n) (A369967 n)

end

end A369968.P9704682825326715596

namespace A369968

/-- `and(A171066(n), A369967(n))` -/
def P9704682825326715596.Spec : Prop :=
  ∀ n, P9704682825326715596.a n = A369968 n

end A369968

/-! ## A369968.P5355470541590330900

`and(A210098(n), A369967(n))`
-/

namespace A369968.P5355470541590330900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A210098 n) (A369967 n)

end

end A369968.P5355470541590330900

namespace A369968

/-- `and(A210098(n), A369967(n))` -/
def P5355470541590330900.Spec : Prop :=
  ∀ n, P5355470541590330900.a n = A369968 n

end A369968

/-! ## A369968.P18131806742589010008

`and(A010181(n²), A369967(n))`
-/

namespace A369968.P18131806742589010008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010181 (n ^ 2)) (A369967 n)

end

end A369968.P18131806742589010008

namespace A369968

/-- `and(A010181(n²), A369967(n))` -/
def P18131806742589010008.Spec : Prop :=
  ∀ n, P18131806742589010008.a n = A369968 n

end A369968

/-! ## A369968.P4853214498626804816

`and(A040326(n²), A369967(n))`
-/

namespace A369968.P4853214498626804816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040326 (n ^ 2)) (A369967 n)

end

end A369968.P4853214498626804816

namespace A369968

/-- `and(A040326(n²), A369967(n))` -/
def P4853214498626804816.Spec : Prop :=
  ∀ n, P4853214498626804816.a n = A369968 n

end A369968

/-!
# A369969: Numbers that are not multiples of 5, but their arithmetic derivative is.

The programs for A369969, the canonical program `A369969.P5250580287867848151` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369969 has offset 1).

The definition of A369969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369969.P17171587358589681162

`filter[A305901(n+1), A369968(#)]`
-/

namespace A369969.P17171587358589681162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P17171587358589681162

namespace A369969

/-- `filter[A305901(n+1), A369968(#)]` -/
def P17171587358589681162.Spec : Prop :=
  ∀ n, P17171587358589681162.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P5250580287867848151

`filter[A327865(n+1), A011558(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A369969

/-- `filter[A327865(n+1), A011558(#)]` -/
def P5250580287867848151.Spec : Prop :=
  ∀ n, P5250580287867848151.a n = A369969 (n + 1)

theorem P5250580287867848151.correct : P5250580287867848151.Spec := by
  intro n
  simp only [A369969, Nat.add_sub_cancel]

end A369969

/-! ## A369969.P5985127971301222593

`filter[A327865(n+1), A369968(#)]`
-/

namespace A369969.P5985127971301222593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P5985127971301222593

namespace A369969

/-- `filter[A327865(n+1), A369968(#)]` -/
def P5985127971301222593.Spec : Prop :=
  ∀ n, P5985127971301222593.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P12516631022589369945

`eq[1, A369968(n)]`
-/

namespace A369969.P12516631022589369945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369969.P12516631022589369945

namespace A369969

/-- `eq[1, A369968(n)]` -/
def P12516631022589369945.Spec : Prop :=
  ∀ n, (P12516631022589369945.a n : ℤ) = A369969 (n + 1)

end A369969

/-! ## A369969.P1201759055502659927

`filter[A319701(n+1), A369968(#)]`
-/

namespace A369969.P1201759055502659927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P1201759055502659927

namespace A369969

/-- `filter[A319701(n+1), A369968(#)]` -/
def P1201759055502659927.Spec : Prop :=
  ∀ n, P1201759055502659927.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P6885404236019409375

`filter[A319702(n+1), A369968(#)]`
-/

namespace A369969.P6885404236019409375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P6885404236019409375

namespace A369969

/-- `filter[A319702(n+1), A369968(#)]` -/
def P6885404236019409375.Spec : Prop :=
  ∀ n, P6885404236019409375.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P12179896502804458660

`filter[A326203(n+1), A369968(#)]`
-/

namespace A369969.P12179896502804458660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P12179896502804458660

namespace A369969

/-- `filter[A326203(n+1), A369968(#)]` -/
def P12179896502804458660.Spec : Prop :=
  ∀ n, P12179896502804458660.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P4878161194564360466

`filter[A346488(n+1), A369968(#)]`
-/

namespace A369969.P4878161194564360466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P4878161194564360466

namespace A369969

/-- `filter[A346488(n+1), A369968(#)]` -/
def P4878161194564360466.Spec : Prop :=
  ∀ n, P4878161194564360466.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P17419985853731822747

`filter[A326202(n+1), A369968(#)]`
-/

namespace A369969.P17419985853731822747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P17419985853731822747

namespace A369969

/-- `filter[A326202(n+1), A369968(#)]` -/
def P17419985853731822747.Spec : Prop :=
  ∀ n, P17419985853731822747.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P15407272310895402593

`filter[A305980(n+1), A369968(#)]`
-/

namespace A369969.P15407272310895402593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P15407272310895402593

namespace A369969

/-- `filter[A305980(n+1), A369968(#)]` -/
def P15407272310895402593.Spec : Prop :=
  ∀ n, P15407272310895402593.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P10661077154013987082

`filter[A322810(n+1), A369968(#)]`
-/

namespace A369969.P10661077154013987082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P10661077154013987082

namespace A369969

/-- `filter[A322810(n+1), A369968(#)]` -/
def P10661077154013987082.Spec : Prop :=
  ∀ n, P10661077154013987082.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P17462937335342577104

`filter[A326201(n+1), A369968(#)]`
-/

namespace A369969.P17462937335342577104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P17462937335342577104

namespace A369969

/-- `filter[A326201(n+1), A369968(#)]` -/
def P17462937335342577104.Spec : Prop :=
  ∀ n, P17462937335342577104.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P12089989470438796027

`eq[A010122(n), A369967(n)]`
-/

namespace A369969.P12089989470438796027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369969.P12089989470438796027

namespace A369969

/-- `eq[A010122(n), A369967(n)]` -/
def P12089989470438796027.Spec : Prop :=
  ∀ n, (P12089989470438796027.a n : ℤ) = A369969 (n + 1)

end A369969

/-! ## A369969.P10595500229923066979

`eq[A010152(n), A369967(n)]`
-/

namespace A369969.P10595500229923066979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369969.P10595500229923066979

namespace A369969

/-- `eq[A010152(n), A369967(n)]` -/
def P10595500229923066979.Spec : Prop :=
  ∀ n, (P10595500229923066979.a n : ℤ) = A369969 (n + 1)

end A369969

/-! ## A369969.P5285835731870671782

`∩[A327865(n+1), A335155(n+1)]`
-/

namespace A369969.P5285835731870671782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369969.P5285835731870671782

namespace A369969

/-- `∩[A327865(n+1), A335155(n+1)]` -/
def P5285835731870671782.Spec : Prop :=
  ∀ n, (P5285835731870671782.a n : ℤ) = A369969 (n + 1)

end A369969

/-! ## A369969.P14564521031219274081

`∩[A047201(n+1), A327865(n+1)]`
-/

namespace A369969.P14564521031219274081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369969.P14564521031219274081

namespace A369969

/-- `∩[A047201(n+1), A327865(n+1)]` -/
def P14564521031219274081.Spec : Prop :=
  ∀ n, (P14564521031219274081.a n : ℤ) = A369969 (n + 1)

end A369969

/-! ## A369969.P10109125909710357805

`filter[A275974(n+2), A369968(#)]`
-/

namespace A369969.P10109125909710357805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P10109125909710357805

namespace A369969

/-- `filter[A275974(n+2), A369968(#)]` -/
def P10109125909710357805.Spec : Prop :=
  ∀ n, P10109125909710357805.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P736586039061539118

`filter[A222307(n+1), A369968(#)]`
-/

namespace A369969.P736586039061539118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P736586039061539118

namespace A369969

/-- `filter[A222307(n+1), A369968(#)]` -/
def P736586039061539118.Spec : Prop :=
  ∀ n, P736586039061539118.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P3344336326419702033

`filter[A089088(n), A369968(#)]`
-/

namespace A369969.P3344336326419702033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P3344336326419702033

namespace A369969

/-- `filter[A089088(n), A369968(#)]` -/
def P3344336326419702033.Spec : Prop :=
  ∀ n, P3344336326419702033.a n = A369969 (n + 1)

end A369969

/-! ## A369969.P140057981474978642

`filter[A003619(n+1), A369968(#)]`
-/

namespace A369969.P140057981474978642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369968 (f1 j).toNat = 1) n)

end

end A369969.P140057981474978642

namespace A369969

/-- `filter[A003619(n+1), A369968(#)]` -/
def P140057981474978642.Spec : Prop :=
  ∀ n, P140057981474978642.a n = A369969 (n + 1)

end A369969

/-!
# A369970: Numbers k such that A003415(k) is a multiple of A276086(k), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369970, there is no canonical definition to state claims against.
-/

/-! ## A369970.P9341580203236842357

`A027641(3*n+1)+A002110(A139481(n+2))`
-/

namespace A369970.P9341580203236842357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (3 * n + 1) + A002110 (A139481 (n + 2)).toNat

end

end A369970.P9341580203236842357

/-!
# A369971: a(n) = A003415(n) mod A276086(n), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A369971, there is no canonical definition to state claims against.
-/

/-! ## A369971.P10735076753554788043

`A003415(n)%A276086(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369971.P10735076753554788043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) (A276086 n)

end

end A369971.P10735076753554788043

/-! ## A369971.P6782618160753530026

`(n+A168036(n))%A276086(n)`
-/

namespace A369971.P6782618160753530026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A168036 n) (A276086 n)

end

end A369971.P6782618160753530026

/-! ## A369971.P194134408930603903

`(A129283(n)-n)%A276086(n)`
-/

namespace A369971.P194134408930603903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 n - (n : ℤ)) (A276086 n)

end

end A369971.P194134408930603903

/-! ## A369971.P1559245150799955182

`∑{d}[n, A300251(#)]%A276086(n)`
-/

namespace A369971.P1559245150799955182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A300251 d) (A276086 n)

end

end A369971.P1559245150799955182

/-! ## A369971.P12722873101794110248

`((n-A369052(n))/2)%A276086(n)`
-/

namespace A369971.P12722873101794110248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n : ℤ) - A369052 n : ℚ) / 2)) (A276086 n)

end

end A369971.P12722873101794110248

/-! ## A369971.P16884315423041145441

`(∑{d}[n, A348976(#)]-n)%A276086(n)`
-/

namespace A369971.P16884315423041145441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)) (A276086 n)

end

end A369971.P16884315423041145441

/-! ## A369971.P18077651908001858352

`(A368921(n)+A068346(n))%A276086(n)`
-/

namespace A369971.P18077651908001858352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368921 n + A068346 n) (A276086 n)

end

end A369971.P18077651908001858352

/-! ## A369971.P18400109616584204006

`(A276086(n)-A373849(n))%A276086(n)`
-/

namespace A369971.P18400109616584204006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n - A373849 n) (A276086 n)

end

end A369971.P18400109616584204006

/-! ## A369971.P10433952982230777524

`(A359423(n)/A351231(n))%A276086(n)`
-/

namespace A369971.P10433952982230777524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A359423 n : ℚ) / (A351231 n : ℚ))) (A276086 n)

end

end A369971.P10433952982230777524

/-! ## A369971.P12439819713499748028

`(A276086(n)*A351230(n)/A351231(n))%A276086(n)`
-/

namespace A369971.P12439819713499748028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A276086 n * A351230 n : ℚ) / (A351231 n : ℚ))) (A276086 n)

end

end A369971.P12439819713499748028

/-! ## A369971.P7833263429064736155

`A319703(n-(1-n)%(n+1)+1)%A276086(n)`
-/

namespace A369971.P7833263429064736155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat) (A276086 n)

end

end A369971.P7833263429064736155

/-!
# A369974: Dirichlet inverse of A369001, where A369001(n) = 1 if n' / gcd(n,n') is even, otherwise 0, and n' stands for the arithmetic derivative of n, A003415.

The programs for A369974, there is no canonical definition to state claims against.
-/

/-! ## A369974.P9550383613884256567

`∑{d}[n+1, A378528(#)]`
-/

namespace A369974.P9550383613884256567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378528 d

end

end A369974.P9550383613884256567

/-! ## A369974.P15126985214141808445

`∑{d}[n+1, #*A378527((n+1)/#)]`
-/

namespace A369974.P15126985214141808445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378527 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369974.P15126985214141808445

/-! ## A369974.P17137617933497231885

`A164660(n)*A369975(n+1)`
-/

namespace A369974.P17137617933497231885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n * A369975 (n + 1)

end

end A369974.P17137617933497231885

/-! ## A369974.P15084221715755166782

`A000038(n²)-A369975(n+1)`
-/

namespace A369974.P15084221715755166782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n ^ 2) - A369975 (n + 1)

end

end A369974.P15084221715755166782

/-! ## A369974.P12483074933934354740

`A164660(round(sqrt(n²+1)))%(A369975(n+1)+1)`
-/

namespace A369974.P12483074933934354740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164660 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A369975 (n + 1) + 1)

end

end A369974.P12483074933934354740

/-! ## A369974.P2672284414293682531

`A359548(A078644((n+1)²))`
-/

namespace A369974.P2672284414293682531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359548 (A078644 ((n + 1) ^ 2)).toNat

end

end A369974.P2672284414293682531

/-! ## A369974.P15952460391308502572

`A260196(n²)*A369975(n+1)`
-/

namespace A369974.P15952460391308502572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n ^ 2) * A369975 (n + 1)

end

end A369974.P15952460391308502572

/-! ## A369974.P34737244593523328

`A363160(n+1)*A369001(n+1)`
-/

namespace A369974.P34737244593523328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363160 (n + 1) * A369001 (n + 1)

end

end A369974.P34737244593523328

/-! ## A369974.P4975857942901466454

`A363160(n+1)*A369975(n+1)`
-/

namespace A369974.P4975857942901466454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363160 (n + 1) * A369975 (n + 1)

end

end A369974.P4975857942901466454

/-!
# A369975: Parity of A369974.

The programs for A369975, there is no canonical definition to state claims against.
-/

/-! ## A369975.P1000964630287505888

`and(1, A369974(n+1))`
-/

namespace A369975.P1000964630287505888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A369974 (n + 1))

end

end A369975.P1000964630287505888

/-! ## A369975.P9049895398257137758

`and(1, A369978(1+n))`
-/

namespace A369975.P9049895398257137758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A369978 (1 + n))

end

end A369975.P9049895398257137758

/-! ## A369975.P16535889795665005275

`abs(A369978(n+1)%2)`
-/

namespace A369975.P16535889795665005275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A369978 (n + 1)) 2|

end

end A369975.P16535889795665005275

/-! ## A369975.P6984046268034359405

`char[A369976(n+1)-1]`
-/

namespace A369975.P6984046268034359405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369976 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A369975.P6984046268034359405

/-! ## A369975.P15990678760328465627

`A378215((n+1)*A000265(n+1))`
-/

namespace A369975.P15990678760328465627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378215 ((n + 1 : ℤ) * A000265 (n + 1)).toNat

end

end A369975.P15990678760328465627

/-! ## A369975.P7961092897786965847

`A164660(n)*A369974(n+1)`
-/

namespace A369975.P7961092897786965847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 n * A369974 (n + 1)

end

end A369975.P7961092897786965847

/-!
# A369976: Numbers k for which A369974(k) is odd.

The programs for A369976, there is no canonical definition to state claims against.
-/

/-! ## A369976.P9481515817405952440

`eq[1, A369975(n+1)]+1`
-/

namespace A369976.P9481515817405952440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369976.P9481515817405952440

/-! ## A369976.P186471650469539299

`filter[A368998(n+1), A369975(#)]`
-/

namespace A369976.P186471650469539299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P186471650469539299

/-! ## A369976.P14895390398378253942

`record[A000027(n+1)*A369975(n+1)]`
-/

namespace A369976.P14895390398378253942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A369975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369976.P14895390398378253942

/-! ## A369976.P2632367975868632402

`filter[A369002(n+1), A369975(#)]`
-/

namespace A369976.P2632367975868632402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P2632367975868632402

/-! ## A369976.P17617367653366021439

`filter[A377873(n+1), A369975(#)]`
-/

namespace A369976.P17617367653366021439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P17617367653366021439

/-! ## A369976.P2115461496736699546

`filter[A264828(n+1), A369975(#)]`
-/

namespace A369976.P2115461496736699546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P2115461496736699546

/-! ## A369976.P12424047328569348551

`lt[A369975(3*(n+1)), A369975(n+1)]+1`
-/

namespace A369976.P12424047328569348551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369975 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A369976.P12424047328569348551

/-! ## A369976.P8183651828106330501

`filter[A235992(n+2), A369975(#)]`
-/

namespace A369976.P8183651828106330501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P8183651828106330501

/-! ## A369976.P5302769124845013657

`filter[A018252(n+1), A369975(#)]`
-/

namespace A369976.P5302769124845013657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P5302769124845013657

/-! ## A369976.P4804417771678010171

`filter[A141468(n+2), A369975(#)]`
-/

namespace A369976.P4804417771678010171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P4804417771678010171

/-! ## A369976.P14023577797169603675

`filter[A359817(n+1), A369975(#)]`
-/

namespace A369976.P14023577797169603675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P14023577797169603675

/-! ## A369976.P16714171388047235372

`filter[A222307(2*n+1), A369975(#)]`
-/

namespace A369976.P16714171388047235372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P16714171388047235372

/-! ## A369976.P6008486157595083318

`filter[A003159(n+1), A369975(#)]`
-/

namespace A369976.P6008486157595083318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P6008486157595083318

/-! ## A369976.P4761146174654001410

`filter[A260401(n+1), A369975(#)]`
-/

namespace A369976.P4761146174654001410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P4761146174654001410

/-! ## A369976.P8477188023900078386

`filter[A174891(n+1), A369975(#)]`
-/

namespace A369976.P8477188023900078386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P8477188023900078386

/-! ## A369976.P17242731253395154585

`filter[A107750(n+1), A369975(#)]`
-/

namespace A369976.P17242731253395154585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P17242731253395154585

/-! ## A369976.P7369765841337911820

`filter[A042965(n+2), A369975(#)]`
-/

namespace A369976.P7369765841337911820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P7369765841337911820

/-! ## A369976.P13649943329807724889

`filter[A056653(n+1), A369975(#)]`
-/

namespace A369976.P13649943329807724889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P13649943329807724889

/-! ## A369976.P2810264738925161560

`filter[A065090(n+1), A369975(#)]`
-/

namespace A369976.P2810264738925161560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P2810264738925161560

/-! ## A369976.P4615371958453620975

`filter[A171581(n+1), A369975(#)]`
-/

namespace A369976.P4615371958453620975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369975 (f1 j).toNat = 1) n)

end

end A369976.P4615371958453620975

/-!
# A369977: Numbers that are found in A369002, but not in its subsequence A369976.

The programs for A369977, there is no canonical definition to state claims against.
-/

/-! ## A369977.P5372193493713319101

`filter[A104021(n+1), A373258(#)]`
-/

namespace A369977.P5372193493713319101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A369977.P5372193493713319101

/-! ## A369977.P5920604285154176589

`filter[A241971(n+2), A369004(#)]`
-/

namespace A369977.P5920604285154176589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369004 (f1 j).toNat = 1) n)

end

end A369977.P5920604285154176589

/-! ## A369977.P8814714069312018904

`filter[A241971(n+2), A373258(#)]`
-/

namespace A369977.P8814714069312018904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373258 (f1 j).toNat = 1) n)

end

end A369977.P8814714069312018904

/-!
# A369979: Three-dimensional array giving all products of three (not necessarily distinct) odd primes.

The programs for A369979, the canonical program `A369979.P11089682292876637845` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369979 has offset 1).

The definition of A369979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369979.P11089682292876637845

`A005940(2*A014311(n+1)+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A369979

/-- `A005940(2*A014311(n+1)+1)` -/
def P11089682292876637845.Spec : Prop :=
  ∀ n, P11089682292876637845.a n = A369979 (n + 1)

theorem P11089682292876637845.correct : P11089682292876637845.Spec := by
  intro n
  simp only [A369979, Nat.add_sub_cancel]

end A369979

/-! ## A369979.P6595962150741216532

`A005940(eq[A000120(n), A040059(n)])`
-/

namespace A369979.P6595962150741216532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369979.P6595962150741216532

namespace A369979

/-- `A005940(eq[A000120(n), A040059(n)])` -/
def P6595962150741216532.Spec : Prop :=
  ∀ n, P6595962150741216532.a n = A369979 (n + 1)

end A369979

/-! ## A369979.P6030859886460376896

`filter[A366260(n), A369058(#)]`
-/

namespace A369979.P6030859886460376896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A369979.P6030859886460376896

namespace A369979

/-- `filter[A366260(n), A369058(#)]` -/
def P6030859886460376896.Spec : Prop :=
  ∀ n, P6030859886460376896.a n = A369979 (n + 1)

end A369979

/-! ## A369979.P7006257082815794767

`filter[A005940(n+1), A369058(#)]`
-/

namespace A369979.P7006257082815794767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A369979.P7006257082815794767

namespace A369979

/-- `filter[A005940(n+1), A369058(#)]` -/
def P7006257082815794767.Spec : Prop :=
  ∀ n, P7006257082815794767.a n = A369979 (n + 1)

end A369979

/-! ## A369979.P4878764794397488869

`filter[A005940(2*n+1), A101605(#)]`
-/

namespace A369979.P4878764794397488869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A369979.P4878764794397488869

namespace A369979

/-- `filter[A005940(2*n+1), A101605(#)]` -/
def P4878764794397488869.Spec : Prop :=
  ∀ n, P4878764794397488869.a n = A369979 (n + 1)

end A369979

/-!
# A369980: Run lengths in A369001.

The programs for A369980, the canonical program `A369980.P2477965193633431978` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369980 has offset 1).

The definition of A369980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369980.P2477965193633431978

`runs[A369001(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A369980

/-- `runs[A369001(n+1)]` -/
def P2477965193633431978.Spec : Prop :=
  ∀ n, (P2477965193633431978.a n : ℤ) = A369980 (n + 1)

theorem P2477965193633431978.correct : P2477965193633431978.Spec := by
  intro n
  simp only [A369980, Nat.add_sub_cancel]

end A369980

/-! ## A369980.P12115727109779127312

`runs[A377874(n+1)]`
-/

namespace A369980.P12115727109779127312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P12115727109779127312

namespace A369980

/-- `runs[A377874(n+1)]` -/
def P12115727109779127312.Spec : Prop :=
  ∀ n, (P12115727109779127312.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P17055031268922755555

`runs[A083345(n+1)%2]`
-/

namespace A369980.P17055031268922755555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083345 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P17055031268922755555

namespace A369980

/-- `runs[A083345(n+1)%2]` -/
def P17055031268922755555.Spec : Prop :=
  ∀ n, (P17055031268922755555.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P10295668093099443069

`runs[A373377(n+1)%2]`
-/

namespace A369980.P10295668093099443069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373377 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P10295668093099443069

namespace A369980

/-- `runs[A373377(n+1)%2]` -/
def P10295668093099443069.Spec : Prop :=
  ∀ n, (P10295668093099443069.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P6691344327426203062

`runs[A059841(A083345(n+1))]`
-/

namespace A369980.P6691344327426203062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A083345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P6691344327426203062

namespace A369980

/-- `runs[A059841(A083345(n+1))]` -/
def P6691344327426203062.Spec : Prop :=
  ∀ n, (P6691344327426203062.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P14741694450090621383

`runs[A368994(A008594(n+1))]`
-/

namespace A369980.P14741694450090621383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368994 (A008594 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P14741694450090621383

namespace A369980

/-- `runs[A368994(A008594(n+1))]` -/
def P14741694450090621383.Spec : Prop :=
  ∀ n, (P14741694450090621383.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P17454839613505011431

`runs[A373137((n+1)²)]`
-/

namespace A369980.P17454839613505011431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P17454839613505011431

namespace A369980

/-- `runs[A373137((n+1)²)]` -/
def P17454839613505011431.Spec : Prop :=
  ∀ n, (P17454839613505011431.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P2394158622118070503

`runs[A373258((n+1)²)]`
-/

namespace A369980.P2394158622118070503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373258 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P2394158622118070503

namespace A369980

/-- `runs[A373258((n+1)²)]` -/
def P2394158622118070503.Spec : Prop :=
  ∀ n, (P2394158622118070503.a n : ℤ) = A369980 (n + 1)

end A369980

/-! ## A369980.P2097523860445755543

`runs[A369004((n+1)²)]`
-/

namespace A369980.P2097523860445755543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369004 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A369980.P2097523860445755543

namespace A369980

/-- `runs[A369004((n+1)²)]` -/
def P2097523860445755543.Spec : Prop :=
  ∀ n, (P2097523860445755543.a n : ℤ) = A369980 (n + 1)

end A369980

/-!
# A369982: Number of Dyck bridges with resets from any height to zero from (0,0) to (n,0).

The programs for A369982, there is no canonical definition to state claims against.
-/

/-! ## A369982.P12879777441077100612

`A137469(A019439(n))`
-/

namespace A369982.P12879777441077100612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137469 (A019439 n).toNat

end

end A369982.P12879777441077100612

/-! ## A369982.P10017162962046097456

`A134930(A358831(n))-1`
-/

namespace A369982.P10017162962046097456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (A358831 n).toNat - 1

end

end A369982.P10017162962046097456

/-!
# A369983: Maximum of the absolute value of the coefficients of (1 - x)^3 * (1 - x^2)^3 * (1 - x^3)^3 * ... * (1 - x^n)^3.

The programs for A369983, there is no canonical definition to state claims against.
-/

/-! ## A369983.P1207958642435177134

`A369711(A131571(n+1))%A014285(n+3)`
-/

namespace A369983.P1207958642435177134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369711 (A131571 (n + 1)).toNat) (A014285 (n + 3))

end

end A369983.P1207958642435177134

/-!
# A369989: Infinite word formed by expanding terms of A372257 by the map h : 0 -> {1,0,1}, 1 -> {1,0,0,1}, 2 -> {1,0,0,0,1}, 3 -> {1,0,0,0,0,1}.

The programs for A369989, there is no canonical definition to state claims against.
-/

/-! ## A369989.P14389660412938357558

`A031438(A184720(n+5))`
-/

namespace A369989.P14389660412938357558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031438 (A184720 (n + 5)).toNat

end

end A369989.P14389660412938357558

/-! ## A369989.P9271812565553823048

`1-A286055(A297762(n+4))`
-/

namespace A369989.P9271812565553823048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286055 (A297762 (n + 4)).toNat

end

end A369989.P9271812565553823048

/-! ## A369989.P3402103547012012072

`A188014(2^A184720(n+5))`
-/

namespace A369989.P3402103547012012072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A184720 (n + 5) : ℤ))).toNat

end

end A369989.P3402103547012012072

/-! ## A369989.P14356501747768564785

`A339171(A000700(n))^A203542(n+4)`
-/

namespace A369989.P14356501747768564785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339171 (A000700 n).toNat : ℚ) ^ (A203542 (n + 4) : ℤ)

end

end A369989.P14356501747768564785

/-! ## A369989.P15784625962560713785

`A055641(A000051(n)%A322266(n+4))`
-/

namespace A369989.P15784625962560713785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.tmod (A000051 n) (A322266 (n + 4))).toNat

end

end A369989.P15784625962560713785

/-!
# A369990: Numerator of canonical iterated stribolic area Integral_{t=0..1} h_n(t) dt (of order 1).

The programs for A369990, there is no canonical definition to state claims against.
-/

/-! ## A369990.P13859717070522520846

`A062318(n*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A369990.P13859717070522520846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n a =>
  A062318 ((n : ℤ) * a (n - 1)).toNat

end

end A369990.P13859717070522520846

/-! ## A369990.P15531992846556000720

`A324430(3*a(n-1))+2` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=2`
-/

namespace A369990.P15531992846556000720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 2] fun n a =>
  A324430 (3 * a (n - 1)).toNat + 2

end

end A369990.P15531992846556000720

/-!
# A369991: Denominator of canonical iterated stribolic area Integral_{t=0..1} h_n(t) dt (of order 1).

The programs for A369991, there is no canonical definition to state claims against.
-/

/-! ## A369991.P10967079058566330306

`A182630(A106611(n)+A014466(n))`
-/

namespace A369991.P10967079058566330306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182630 (A106611 n + A014466 n).toNat

end

end A369991.P10967079058566330306

/-!
# A369996: Number of induced subgraphs, up to isomorphism, of the hypercube graph of dimension n.

The programs for A369996, there is no canonical definition to state claims against.
-/

/-! ## A369996.P6992208736606184926

`((a(n-1)/3)²+n)*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A369996.P6992208736606184926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  ((a (n - 1) / 3) ^ 2 + (n : ℚ)) * a (n - 2)

end

end A369996.P6992208736606184926

