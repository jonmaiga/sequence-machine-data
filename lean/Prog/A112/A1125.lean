import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112500: Triangle of column sequences with a certain o.g.f. pattern.

The programs for A112500, there is no canonical definition to state claims against.
-/

/-! ## A112500.P7988202503854571910

`A168287(n)+A016346(A107635(n))`
-/

namespace A112500.P7988202503854571910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + A016346 (A107635 n).toNat

end

end A112500.P7988202503854571910

/-! ## A112500.P7868602729465893254

`A168287(n)-A025465(A000129(n))`
-/

namespace A112500.P7868602729465893254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n - A025465 (A000129 n).toNat

end

end A112500.P7868602729465893254

/-! ## A112500.P2661086582652198724

`A168287(n)-A102683(A002940(n+1))`
-/

namespace A112500.P2661086582652198724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n - A102683 (A002940 (n + 1)).toNat

end

end A112500.P2661086582652198724

/-!
# A112501: Row sums of triangle A112500.

The programs for A112501, there is no canonical definition to state claims against.
-/

/-! ## A112501.P2698098430386090872

`∑[A226190(A209801(n))]`
-/

namespace A112501.P2698098430386090872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A209801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112501.P2698098430386090872

/-! ## A112501.P1510178924728032560

`A271862(A036783(n+1))`
-/

namespace A112501.P1510178924728032560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271862 (A036783 (n + 1)).toNat

end

end A112501.P1510178924728032560

/-!
# A112502: Third column of triangle A112500.

The programs for A112502, the canonical program `A112502.P14853169081115967169` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112502 has offset 0).

The definition of A112502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112502.P14853169081115967169

`∑[∑[∑[A066810(n+2)]]]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112502

/-- `∑[∑[∑[A066810(n+2)]]]` -/
def P14853169081115967169.Spec : Prop :=
  ∀ n, P14853169081115967169.a n = A112502 n

theorem P14853169081115967169.correct : P14853169081115967169.Spec := by
  intro n
  simp only [A112502]

end A112502

/-! ## A112502.P8025047486720088265

`A222993(n)+a(n-1)` with `a(0)=1`
-/

namespace A112502.P8025047486720088265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222993 n + a (n - 1)

end

end A112502.P8025047486720088265

namespace A112502

/-- `A222993(n)+a(n-1)` -/
def P8025047486720088265.Spec : Prop :=
  ∀ n, P8025047486720088265.a n = A112502 n

end A112502

/-! ## A112502.P7321570194348671085

`A045889(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A112502.P7321570194348671085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045889 n + 3 * a (n - 1)

end

end A112502.P7321570194348671085

namespace A112502

/-- `A045889(n)+3*a(n-1)` -/
def P7321570194348671085.Spec : Prop :=
  ∀ n, P7321570194348671085.a n = A112502 n

end A112502

/-! ## A112502.P3151762128208116656

`∑[A222993(n%(2*a(n-1)))]` with `a(0)=1`
-/

namespace A112502.P3151762128208116656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A222993 (Int.tmod (n : ℤ) (2 * f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112502.P3151762128208116656

namespace A112502

/-- `∑[A222993(n%(2*a(n-1)))]` -/
def P3151762128208116656.Spec : Prop :=
  ∀ n, P3151762128208116656.a n = A112502 n

end A112502

/-! ## A112502.P9444021870000445718

`∑[A353047(n+5)/12]`
-/

namespace A112502.P9444021870000445718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353047 (n + 5) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112502.P9444021870000445718

namespace A112502

/-- `∑[A353047(n+5)/12]` -/
def P9444021870000445718.Spec : Prop :=
  ∀ n, P9444021870000445718.a n = (A112502 n : ℚ)

end A112502

/-!
# A112503: Fourth column of triangle A112500.

The programs for A112503, there is no canonical definition to state claims against.
-/

/-! ## A112503.P3040522024953730734

`A112500(∑[n+3]+6)`
-/

namespace A112503.P3040522024953730734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A112503.P3040522024953730734

/-!
# A112504: Fifth column of triangle A112500.

The programs for A112504, there is no canonical definition to state claims against.
-/

/-! ## A112504.P16069198727657309499

`A112500(A155212(n)+12)`
-/

namespace A112504.P16069198727657309499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (A155212 n + 12).toNat

end

end A112504.P16069198727657309499

/-! ## A112504.P13317045239256126590

`A112500(A056000(n)+14)`
-/

namespace A112504.P13317045239256126590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (A056000 n + 14).toNat

end

end A112504.P13317045239256126590

/-!
# A112505: Number of primitive prime factors of 10^n-1.

The programs for A112505, there is no canonical definition to state claims against.
-/

/-! ## A112505.P17955392777414223324

`∑{d}[n+1, A008683(#)*A102347((n+1)/#)]`
-/

namespace A112505.P17955392777414223324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A102347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112505.P17955392777414223324

/-! ## A112505.P5789727713815118170

`floor(log2(A064126(n+1)))`
-/

namespace A112505.P5789727713815118170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A064126 (n + 1)).toNat

end

end A112505.P5789727713815118170

/-! ## A112505.P17757197769963582307

`∑{e}[A064126(C(n+1, n)), #]`
-/

namespace A112505.P17757197769963582307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112505.P17757197769963582307

/-! ## A112505.P11620451292958751569

`∑{e}[A064126(Δ[n²]-n), #]`
-/

namespace A112505.P11620451292958751569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112505.P11620451292958751569

/-! ## A112505.P8757343329771599760

`A000523(A064126(n+1))`
-/

namespace A112505.P8757343329771599760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A064126 (n + 1)).toNat

end

end A112505.P8757343329771599760

/-! ## A112505.P15468850662563473456

`∑{d}[A064126(n+1), A001221(#)]`
-/

namespace A112505.P15468850662563473456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A112505.P15468850662563473456

/-! ## A112505.P11480584781059656216

`A001222(A064126(n+1)²)/2`
-/

namespace A112505.P11480584781059656216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A064126 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A112505.P11480584781059656216

/-! ## A112505.P5696438111615988034

`∑{e}[∑{d}[A064126(n+1), A000010(#)], #]`
-/

namespace A112505.P5696438111615988034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000010 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A112505.P5696438111615988034

/-! ## A112505.P7297285476524649735

`∑{e}[A064126(n+1), #]%A000040(n+1)`
-/

namespace A112505.P7297285476524649735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A000040 (n + 1))

end

end A112505.P7297285476524649735

/-!
# A112508: Counts the objects described in A047969 and A089246 when grouped by minimum part. (Row sums give A047970).

The programs for A112508, there is no canonical definition to state claims against.
-/

/-! ## A112508.P2080003298740226026

`A148941(n-C(∑[char[∑[n]]], 2))`
-/

namespace A112508.P2080003298740226026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148941 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A112508.P2080003298740226026

/-! ## A112508.P15485477259155462548

`A050253(2*(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A112508.P15485477259155462548
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050253 (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A112508.P15485477259155462548

/-! ## A112508.P10463423113924929691

`or(1, A151431(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A112508.P10463423113924929691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151431 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2))

end

end A112508.P10463423113924929691

/-! ## A112508.P2110654535771230689

`A112532(A002262(n))`
-/

namespace A112508.P2110654535771230689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112532 (A002262 n).toNat

end

end A112508.P2110654535771230689

/-!
# A112509: Maximum number of numbers represented by substrings of an n-bit number's binary representation.

The programs for A112509, there is no canonical definition to state claims against.
-/

/-! ## A112509.P6769076712767309617

`∑[n+1]-A156023(n+1)`
-/

namespace A112509.P6769076712767309617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A156023 (n + 1)

end

end A112509.P6769076712767309617

/-! ## A112509.P8313544426135821397

`ceil(A156022(n+1)+abs(sin(n)))`
-/

namespace A112509.P8313544426135821397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156022 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A112509.P8313544426135821397

/-! ## A112509.P8522614826205783837

`A065475(A156022(n+1))`
-/

namespace A112509.P8522614826205783837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A156022 (n + 1)).toNat

end

end A112509.P8522614826205783837

/-! ## A112509.P18313090252057231960

`A181440(A156022(n+1)+1)`
-/

namespace A112509.P18313090252057231960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A156022 (n + 1) + 1).toNat

end

end A112509.P18313090252057231960

/-! ## A112509.P8536710270976699955

`A156022(n+1)+A057427(n)`
-/

namespace A112509.P8536710270976699955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156022 (n + 1) + A057427 n

end

end A112509.P8536710270976699955

/-! ## A112509.P9242384638303057797

`A178334(n)+A156022(n+1)`
-/

namespace A112509.P9242384638303057797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A156022 (n + 1)

end

end A112509.P9242384638303057797

/-! ## A112509.P16400908160565013368

`A156022(n+1)-A057428(n)`
-/

namespace A112509.P16400908160565013368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156022 (n + 1) - A057428 n

end

end A112509.P16400908160565013368

/-! ## A112509.P1936742467820090319

`A211666(n+1)+A156022(n+1)`
-/

namespace A112509.P1936742467820090319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A156022 (n + 1)

end

end A112509.P1936742467820090319

/-! ## A112509.P3259803313442015045

`A134869(n+1)-A156024(n+1)`
-/

namespace A112509.P3259803313442015045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) - A156024 (n + 1)

end

end A112509.P3259803313442015045

/-! ## A112509.P3662127193727333615

`A156022(n+1)+A156024(n+1)-A156023(n+1)`
-/

namespace A112509.P3662127193727333615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156022 (n + 1) + (A156024 (n + 1) - A156023 (n + 1))

end

end A112509.P3662127193727333615

/-!
# A112510: Least n-bit number whose binary representation's substrings represent the maximal number (A112509(n)) of distinct integers.

The programs for A112510, there is no canonical definition to state claims against.
-/

/-! ## A112510.P10360412677439303677

`and(-2, A292924(A156022(n+1)))`
-/

namespace A112510.P10360412677439303677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A292924 (A156022 (n + 1)).toNat)

end

end A112510.P10360412677439303677

/-! ## A112510.P14931317076560757887

`A292924(A156022(n+1))-A000007(n)`
-/

namespace A112510.P14931317076560757887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292924 (A156022 (n + 1)).toNat - A000007 n

end

end A112510.P14931317076560757887

/-! ## A112510.P7399869961331084602

`A057427(n)*A292924(A156022(n+1))`
-/

namespace A112510.P7399869961331084602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A292924 (A156022 (n + 1)).toNat

end

end A112510.P7399869961331084602

/-! ## A112510.P14087614129632425529

`A292924(A156022(n+1))%A053209(n)`
-/

namespace A112510.P14087614129632425529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292924 (A156022 (n + 1)).toNat) (A053209 n)

end

end A112510.P14087614129632425529

/-! ## A112510.P3754173442040976682

`char[A007318(n)]*A292924(A156022(n+1))`
-/

namespace A112510.P3754173442040976682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A292924 (A156022 (n + 1)).toNat

end

end A112510.P3754173442040976682

/-!
# A112511: Greatest n-bit number whose binary representation's substrings represent the maximal number (A112509(n)) of distinct integers.

The programs for A112511, there is no canonical definition to state claims against.
-/

/-! ## A112511.P14065964632667569434

`A026819(A037568(n+1)-1)`
-/

namespace A112511.P14065964632667569434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A037568 (n + 1) - 1).toNat

end

end A112511.P14065964632667569434

/-! ## A112511.P2394472060288351746

`A046155(A037568(n+1)-1)`
-/

namespace A112511.P2394472060288351746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A037568 (n + 1) - 1).toNat

end

end A112511.P2394472060288351746

/-! ## A112511.P15960568497966861455

`A026819(xor(3, A037568(n+1)))`
-/

namespace A112511.P15960568497966861455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.xor 3 (A037568 (n + 1))).toNat

end

end A112511.P15960568497966861455

/-! ## A112511.P9164555365818815217

`A046155(xor(3, A037568(n+1)))`
-/

namespace A112511.P9164555365818815217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.xor 3 (A037568 (n + 1))).toNat

end

end A112511.P9164555365818815217

/-!
# A112513: Same as A063850, Say what you see in previous term, but starting with 3.

The programs for A112513, there is no canonical definition to state claims against.
-/

/-! ## A112513.P437428372197965396

`A118628(n+1)+A097599(n!)`
-/

namespace A112513.P437428372197965396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118628 (n + 1) + A097599 (Nat.factorial n)

end

end A112513.P437428372197965396

/-!
# A112514: Say what you see in previous term, same as A063850 but starting with 4.

The programs for A112514, there is no canonical definition to state claims against.
-/

/-! ## A112514.P1754190000168011092

`A112515(n+1)-A337337(A018000(2*n+3))`
-/

namespace A112514.P1754190000168011092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112515 (n + 1) - A337337 (A018000 (2 * n + 3)).toNat

end

end A112514.P1754190000168011092

/-!
# A112515: Say what you see in previous term, same as A063850 but starting with 5.

The programs for A112515, there is no canonical definition to state claims against.
-/

/-! ## A112515.P10973182595029918810

`A112514(∑[A255985(n)])+1`
-/

namespace A112515.P10973182595029918810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112514 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A112515.P10973182595029918810

/-!
# A112517: Riordan array (1, x*(1+x)*(1-x*(1+x))).

The programs for A112517, there is no canonical definition to state claims against.
-/

/-! ## A112517.P2554751452557232508

`A178090(n)-A001222(A347811(n))`
-/

namespace A112517.P2554751452557232508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 n - A001222 (A347811 n).toNat

end

end A112517.P2554751452557232508

/-! ## A112517.P2562026831588701287

`A030216(A101030(n+2))-A001222(A347811(n))`
-/

namespace A112517.P2562026831588701287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030216 (A101030 (n + 2)).toNat - A001222 (A347811 n).toNat

end

end A112517.P2562026831588701287

/-! ## A112517.P9800990901035663556

`(A339207(A001222(2^n))%(n+3))%3-A001222(A347811(n))`
-/

namespace A112517.P9800990901035663556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A339207 (A001222 (2 ^ n)).toNat) (n + 3 : ℤ)) 3 - A001222 (A347811 n).toNat

end

end A112517.P9800990901035663556

/-! ## A112517.P12417965702271387131

`2-A334968(A348210(n+2)²)`
-/

namespace A112517.P12417965702271387131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A334968 (A348210 (n + 2) ^ 2).toNat

end

end A112517.P12417965702271387131

/-! ## A112517.P13296533289296368014

`A147311(n)-A186746(A004468(n))`
-/

namespace A112517.P13296533289296368014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147311 n - A186746 (A004468 n).toNat

end

end A112517.P13296533289296368014

/-!
# A112518: Expansion of g.f. 1/(1 - x + 2*x^3 + x^4).

The programs for A112518, the canonical program `A112518.P14006129081556837613` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112518 has offset 0).

The definition of A112518 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^3+x^4))` (program `A112518.P14006129081556837613`, by `A112518.P14006129081556837613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112518.P14006129081556837613

`ogf(1/(1-x+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112518

/-- `ogf(1/(1-x+2x^3+x^4))` -/
def P14006129081556837613.Spec : Prop :=
  ∀ n, P14006129081556837613.a n = A112518 n

theorem P14006129081556837613.correct : P14006129081556837613.Spec := by
  intro n
  simp only [A112518]

end A112518

/-! ## A112518.P3797118926562142130

`a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`
-/

namespace A112518.P3797118926562142130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -1] fun n a =>
  a (n - 1) - 2 * a (n - 3) - a (n - 4)

end

end A112518.P3797118926562142130

namespace A112518

/-- `a(n-1)-2*a(n-3)-a(n-4)` -/
def P3797118926562142130.Spec : Prop :=
  ∀ n, P3797118926562142130.a n = A112518 n

end A112518

/-!
# A112519: Riordan array (1, x*c(x)*c(-x*c(x))), c(x) the g.f. of A000108.

The programs for A112519, there is no canonical definition to state claims against.
-/

/-! ## A112519.P8315148357339790628

`A002487(A156788(n)^A320955(n))`
-/

namespace A112519.P8315148357339790628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A156788 n : ℚ) ^ (A320955 n : ℤ))).toNat

end

end A112519.P8315148357339790628

/-! ## A112519.P17202903537277418943

`or(A281442(n), A321411(A026758(n)))`
-/

namespace A112519.P17202903537277418943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281442 n) (A321411 (A026758 n).toNat)

end

end A112519.P17202903537277418943

/-! ## A112519.P18152750943313776765

`A002487(A156788(n)^A192517(n+1))`
-/

namespace A112519.P18152750943313776765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A156788 n : ℚ) ^ (A192517 (n + 1) : ℤ))).toNat

end

end A112519.P18152750943313776765

/-! ## A112519.P14729972138459024649

`A023416(A025581(n)^A318754(n+1))`
-/

namespace A112519.P14729972138459024649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A318754 (n + 1) : ℤ))).toNat

end

end A112519.P14729972138459024649

/-! ## A112519.P13619496884674086177

`A259100(A058710(n+1))`
-/

namespace A112519.P13619496884674086177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259100 (A058710 (n + 1)).toNat

end

end A112519.P13619496884674086177

/-!
# A112521: Sequence related to NOR bracketings.

The programs for A112521, there is no canonical definition to state claims against.
-/

/-! ## A112521.P16339327201189613649

`n*A055392(A028310(n))`
-/

namespace A112521.P16339327201189613649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055392 (A028310 n).toNat

end

end A112521.P16339327201189613649

/-! ## A112521.P16923005052314859538

`n*A055392(A065033(2*n))`
-/

namespace A112521.P16923005052314859538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055392 (A065033 (2 * n)).toNat

end

end A112521.P16923005052314859538

/-! ## A112521.P6901776859875335316

`n*A055392(A000038(n)+n)`
-/

namespace A112521.P6901776859875335316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055392 (A000038 n + (n : ℤ)).toNat

end

end A112521.P6901776859875335316

/-! ## A112521.P4358769100973410696

`n*A055392(gcd(n, A008706(n)))`
-/

namespace A112521.P4358769100973410696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055392 (Int.gcd (n : ℤ) (A008706 n))

end

end A112521.P4358769100973410696

/-! ## A112521.P14636064325247198508

`n*A112519(A000124(n))`
-/

namespace A112521.P14636064325247198508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112519 (A000124 n).toNat

end

end A112521.P14636064325247198508

/-! ## A112521.P7998474411813069247

`n*A055392(A193891(∑[n]))`
-/

namespace A112521.P7998474411813069247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055392 (A193891 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A112521.P7998474411813069247

/-!
# A112522: Expansion of (1+3*x+14*x^2-10*x^3-10*x^4+16*x^5+15*x^6-15*x^7-2*x^8+4*x^9+8*x^10) / ((1+4*x^2)*(1-x^2+x^4)*(1+x^2)^2).

The programs for A112522, the canonical program `A112522.P8748412185959616913` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112522 has offset 0).

The definition of A112522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+14x^2-10x^3-10x^4+16x^5+15x^6-15x^7-2x^8+4x^9+8x^10)/(1+5x^2+4x^4+x^6+5x^8+4x^10))` (program `A112522.P8748412185959616913`, by `A112522.P8748412185959616913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112522.P8748412185959616913

`ogf((1+3x+14x^2-10x^3-10x^4+16x^5+15x^6-15x^7-2x^8+4x^9+8x^10)/(1+5x^2+4x^4+x^6+5x^8+4x^10))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112522

/-- `ogf((1+3x+14x^2-10x^3-10x^4+16x^5+15x^6-15x^7-2x^8+4x^9+8x^10)/(1+5x^2+4x^4+x^6+5x^8+4x^10))` -/
def P8748412185959616913.Spec : Prop :=
  ∀ n, P8748412185959616913.a n = A112522 n

theorem P8748412185959616913.correct : P8748412185959616913.Spec := by
  intro n
  simp only [A112522]

end A112522

/-!
# A112523: Expansion of x*(1+3*x-4*x^2-5*x^3-4*x^6+4*x^5+3*x^4) / ((1+4*x^2)*(1+x^2)*(1-x^2+x^4)).

The programs for A112523, the canonical program `A112523.P9837410505506166677` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112523 has offset 0).

The definition of A112523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2-4x^3-5x^4+3x^5+4x^6-4x^7)/(1+4x^2+x^6+4x^8))` (program `A112523.P9837410505506166677`, by `A112523.P9837410505506166677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112523.P9837410505506166677

`ogf((x+3x^2-4x^3-5x^4+3x^5+4x^6-4x^7)/(1+4x^2+x^6+4x^8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112523

/-- `ogf((x+3x^2-4x^3-5x^4+3x^5+4x^6-4x^7)/(1+4x^2+x^6+4x^8))` -/
def P9837410505506166677.Spec : Prop :=
  ∀ n, P9837410505506166677.a n = A112523 n

theorem P9837410505506166677.correct : P9837410505506166677.Spec := by
  intro n
  simp only [A112523]

end A112523

/-! ## A112523.P6535100202666777397

`(1-A033138(n+1))*A087960(n)`
-/

namespace A112523.P6535100202666777397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033138 (n + 1)) * A087960 n

end

end A112523.P6535100202666777397

namespace A112523

/-- `(1-A033138(n+1))*A087960(n)` -/
def P6535100202666777397.Spec : Prop :=
  ∀ n, P6535100202666777397.a n = A112523 n

end A112523

/-! ## A112523.P13028215161544056377

`(A007318(C(2, n))-A033138(n+1))/A087960(n)`
-/

namespace A112523.P13028215161544056377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) - A033138 (n + 1) : ℚ) / (A087960 n : ℚ)

end

end A112523.P13028215161544056377

namespace A112523

/-- `(A007318(C(2, n))-A033138(n+1))/A087960(n)` -/
def P13028215161544056377.Spec : Prop :=
  ∀ n, P13028215161544056377.a n = (A112523 n : ℚ)

end A112523

/-! ## A112523.P9604972988801883448

`A004777(A000079(n))*A087960(n+2)`
-/

namespace A112523.P9604972988801883448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (A000079 n).toNat * A087960 (n + 2)

end

end A112523.P9604972988801883448

namespace A112523

/-- `A004777(A000079(n))*A087960(n+2)` -/
def P9604972988801883448.Spec : Prop :=
  ∀ n, P9604972988801883448.a n = A112523 n

end A112523

/-!
# A112524: a(n) = a(n-1) + 2*n^2 with a(1) = 1.

The programs for A112524, the canonical program `A112524.P17556665395746600245` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112524 has offset 1).

The definition of A112524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*(n+1)²` (program `A112524.P17556665395746600245`, by `A112524.P17556665395746600245.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112524.P17556665395746600245

`a(n-1)+2*(n+1)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112524

/-- `a(n-1)+2*(n+1)²` -/
def P17556665395746600245.Spec : Prop :=
  ∀ n, (P17556665395746600245.a n : ℤ) = A112524 (n + 1)

theorem P17556665395746600245.correct : P17556665395746600245.Spec := by
  intro n
  simp only [A112524, Nat.add_sub_cancel]

end A112524

/-! ## A112524.P2189883607414322939

`(n+1)*(n+2)*(2*(n+1)+1)/3-1`
-/

namespace A112524.P2189883607414322939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 3 - 1

end

end A112524.P2189883607414322939

namespace A112524

/-- `(n+1)*(n+2)*(2*(n+1)+1)/3-1` -/
def P2189883607414322939.Spec : Prop :=
  ∀ n, P2189883607414322939.a n = (A112524 (n + 1) : ℚ)

theorem P2189883607414322939.correct : P2189883607414322939.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A112524, Nat.add_sub_cancel, A112524.P2189883607414322939.a, A112524.P17556665395746600245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A112524, Nat.add_sub_cancel, A112524.P2189883607414322939.a, A112524.P17556665395746600245.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A112524

/-! ## A112524.P15169644387892971794

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=7, a(2)=10`
-/

namespace A112524.P15169644387892971794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 10] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P15169644387892971794

namespace A112524

/-- `∑[∑[a(n-1)+4]]` -/
def P15169644387892971794.Spec : Prop :=
  ∀ n, (P15169644387892971794.a n : ℤ) = A112524 (n + 1)

end A112524

/-! ## A112524.P17510404273412732246

`∑[(n+1)²*ceil(atan(n+1))]`
-/

namespace A112524.P17510404273412732246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P17510404273412732246

namespace A112524

/-- `∑[(n+1)²*ceil(atan(n+1))]` -/
def P17510404273412732246.Spec : Prop :=
  ∀ n, P17510404273412732246.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P13943732843549109653

`Δ[(n+1)*(C(n+2, 3)-1)]`
-/

namespace A112524.P13943732843549109653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.choose (n + 2) 3 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112524.P13943732843549109653

namespace A112524

/-- `Δ[(n+1)*(C(n+2, 3)-1)]` -/
def P13943732843549109653.Spec : Prop :=
  ∀ n, P13943732843549109653.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P13206531688064358222

`∑[(n+1)*record[2-xor(1, -n)]]`
-/

namespace A112524.P13206531688064358222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P13206531688064358222

namespace A112524

/-- `∑[(n+1)*record[2-xor(1, -n)]]` -/
def P13206531688064358222.Spec : Prop :=
  ∀ n, P13206531688064358222.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P17831111564697625470

`∑[(n+1)²*ceil(acot(acot(n+1)))]`
-/

namespace A112524.P17831111564697625470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌈SequenceMachineLib.acot (SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P17831111564697625470

namespace A112524

/-- `∑[(n+1)²*ceil(acot(acot(n+1)))]` -/
def P17831111564697625470.Spec : Prop :=
  ∀ n, P17831111564697625470.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P16794271678998906502

`∑[gcd(2*(n+1)², C(2, n+2))]`
-/

namespace A112524.P16794271678998906502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1) ^ 2) (Nat.choose 2 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P16794271678998906502

namespace A112524

/-- `∑[gcd(2*(n+1)², C(2, n+2))]` -/
def P16794271678998906502.Spec : Prop :=
  ∀ n, (P16794271678998906502.a n : ℤ) = A112524 (n + 1)

end A112524

/-! ## A112524.P1297920513406794164

`or(1, ∑[(n+2)*2*n]+2*n)`
-/

namespace A112524.P1297920513406794164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A112524.P1297920513406794164

namespace A112524

/-- `or(1, ∑[(n+2)*2*n]+2*n)` -/
def P1297920513406794164.Spec : Prop :=
  ∀ n, (P1297920513406794164.a n : ℤ) = A112524 (n + 1)

end A112524

/-! ## A112524.P12563905604233497568

`xor(1, ∑[(n+2)*2*n]+2*n)`
-/

namespace A112524.P12563905604233497568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 2 * n)

end

end A112524.P12563905604233497568

namespace A112524

/-- `xor(1, ∑[(n+2)*2*n]+2*n)` -/
def P12563905604233497568.Spec : Prop :=
  ∀ n, (P12563905604233497568.a n : ℤ) = A112524 (n + 1)

end A112524

/-! ## A112524.P4655007988681230113

`∑[(n+1)*(n+1)*ceil(atan(n+1))]`
-/

namespace A112524.P4655007988681230113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P4655007988681230113

namespace A112524

/-- `∑[(n+1)*(n+1)*ceil(atan(n+1))]` -/
def P4655007988681230113.Spec : Prop :=
  ∀ n, P4655007988681230113.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P6603501835186390737

`(C(2*(n+2), 2*n+1)-2)/2`
-/

namespace A112524.P6603501835186390737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * (n + 2)) (2 * n + 1) : ℤ) - 2 : ℚ) / 2

end

end A112524.P6603501835186390737

namespace A112524

/-- `(C(2*(n+2), 2*n+1)-2)/2` -/
def P6603501835186390737.Spec : Prop :=
  ∀ n, P6603501835186390737.a n = (A112524 (n + 1) : ℚ)

end A112524

/-! ## A112524.P10660811362779526357

`∑[(2-C(2, n+2))*∑[2*n+1]]`
-/

namespace A112524.P10660811362779526357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n + 2) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P10660811362779526357

namespace A112524

/-- `∑[(2-C(2, n+2))*∑[2*n+1]]` -/
def P10660811362779526357.Spec : Prop :=
  ∀ n, P10660811362779526357.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P386533632478766263

`floor(2*n*(n+2)+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A112524.P386533632478766263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n * (n + 2)) + (a (n - 1) + 2)

end

end A112524.P386533632478766263

namespace A112524

/-- `floor(2*n*(n+2)+a(n-1)+2)` -/
def P386533632478766263.Spec : Prop :=
  ∀ n, (P386533632478766263.a n : ℤ) = A112524 (n + 1)

end A112524

/-! ## A112524.P14028596577507559910

`∑[(n+1)²+((n+1)%(2*n+1))²]`
-/

namespace A112524.P14028596577507559910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + ((n + 1) % (2 * n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P14028596577507559910

namespace A112524

/-- `∑[(n+1)²+((n+1)%(2*n+1))²]` -/
def P14028596577507559910.Spec : Prop :=
  ∀ n, (P14028596577507559910.a n : ℤ) = A112524 (n + 1)

end A112524

/-! ## A112524.P12904066656456932325

`∑[(n+1)*A103517(n)]`
-/

namespace A112524.P12904066656456932325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112524.P12904066656456932325

namespace A112524

/-- `∑[(n+1)*A103517(n)]` -/
def P12904066656456932325.Spec : Prop :=
  ∀ n, P12904066656456932325.a n = A112524 (n + 1)

end A112524

/-! ## A112524.P16908898381215007150

`(A358035(n+1)-1)/4`
-/

namespace A112524.P16908898381215007150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358035 (n + 1) - 1 : ℚ) / 4

end

end A112524.P16908898381215007150

namespace A112524

/-- `(A358035(n+1)-1)/4` -/
def P16908898381215007150.Spec : Prop :=
  ∀ n, P16908898381215007150.a n = (A112524 (n + 1) : ℚ)

end A112524

/-! ## A112524.P18194842242682509817

`(A166464(n+1)-3)/2`
-/

namespace A112524.P18194842242682509817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166464 (n + 1) - 3 : ℚ) / 2

end

end A112524.P18194842242682509817

namespace A112524

/-- `(A166464(n+1)-3)/2` -/
def P18194842242682509817.Spec : Prop :=
  ∀ n, P18194842242682509817.a n = (A112524 (n + 1) : ℚ)

end A112524

/-! ## A112524.P14027606593228075501

`A018227(Δ[n²])/2`
-/

namespace A112524.P14027606593228075501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018227 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A112524.P14027606593228075501

namespace A112524

/-- `A018227(Δ[n²])/2` -/
def P14027606593228075501.Spec : Prop :=
  ∀ n, P14027606593228075501.a n = (A112524 (n + 1) : ℚ)

end A112524

/-! ## A112524.P5686763449979374424

`A166830(Δ[n²])/2`
-/

namespace A112524.P5686763449979374424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A112524.P5686763449979374424

namespace A112524

/-- `A166830(Δ[n²])/2` -/
def P5686763449979374424.Spec : Prop :=
  ∀ n, P5686763449979374424.a n = (A112524 (n + 1) : ℚ)

end A112524

/-!
# A112525: Expansion of 1/(1 - 100*x^2 - 100*x^3).

The programs for A112525, the canonical program `A112525.P2504760002879683094` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112525 has offset 0).

The definition of A112525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-100x^2-100x^3))` (program `A112525.P2504760002879683094`, by `A112525.P2504760002879683094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112525.P2504760002879683094

`ogf(1/(1-100x^2-100x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112525

/-- `ogf(1/(1-100x^2-100x^3))` -/
def P2504760002879683094.Spec : Prop :=
  ∀ n, P2504760002879683094.a n = A112525 n

theorem P2504760002879683094.correct : P2504760002879683094.Spec := by
  intro n
  simp only [A112525]

end A112525

/-! ## A112525.P17715287824039513727

`gcd(1-n, floor(n/2))*A008833(10^n)`
-/

namespace A112525.P17715287824039513727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ) * A008833 (10 ^ n)

end

end A112525.P17715287824039513727

namespace A112525

/-- `gcd(1-n, floor(n/2))*A008833(10^n)` -/
def P17715287824039513727.Spec : Prop :=
  ∀ n, P17715287824039513727.a n = A112525 n

end A112525

/-!
# A112526: Characteristic function for powerful numbers.

The programs for A112526, the canonical program `A112526.P9678413385243085703` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112526 has offset 1).

The definition of A112526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112526.P9338361499408242023

`∏{e}[n+1, floor(atan(#))]`
-/

namespace A112526.P9338361499408242023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (Nat.factorization (f1 n) p : ℝ)⌋

end

end A112526.P9338361499408242023

namespace A112526

/-- `∏{e}[n+1, floor(atan(#))]` -/
def P9338361499408242023.Spec : Prop :=
  ∀ n, P9338361499408242023.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P6099953842635029568

`char[n*∏{p}[n, #]-1]`
-/

namespace A112526.P6099953842635029568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A112526.P6099953842635029568

namespace A112526

/-- `char[n*∏{p}[n, #]-1]` -/
def P6099953842635029568.Spec : Prop :=
  ∀ n, (P6099953842635029568.a n : ℤ) = A112526 (n + 1)

end A112526

/-! ## A112526.P7505018031402027914

`ceil(sin(∏{e}[n+1, log(#)]))`
-/

namespace A112526.P7505018031402027914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (∏ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ))⌉

end

end A112526.P7505018031402027914

namespace A112526

/-- `ceil(sin(∏{e}[n+1, log(#)]))` -/
def P7505018031402027914.Spec : Prop :=
  ∀ n, P7505018031402027914.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P6117343829088247623

`round(atan(∏{e}[n+1, log2(#)]))`
-/

namespace A112526.P6117343829088247623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (∏ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ)))

end

end A112526.P6117343829088247623

namespace A112526

/-- `round(atan(∏{e}[n+1, log2(#)]))` -/
def P6117343829088247623.Spec : Prop :=
  ∀ n, P6117343829088247623.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P554377410694204795

`ceil(tanh(∏{e}[n+1, log(#)]))`
-/

namespace A112526.P554377410694204795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (∏ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ))⌉

end

end A112526.P554377410694204795

namespace A112526

/-- `ceil(tanh(∏{e}[n+1, log(#)]))` -/
def P554377410694204795.Spec : Prop :=
  ∀ n, P554377410694204795.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P5744608430720533359

`round(tanh(∏{e}[n+1, log2(#)]))`
-/

namespace A112526.P5744608430720533359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (∏ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ)))

end

end A112526.P5744608430720533359

namespace A112526

/-- `round(tanh(∏{e}[n+1, log2(#)]))` -/
def P5744608430720533359.Spec : Prop :=
  ∀ n, P5744608430720533359.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P8386683316653637223

`floor(tan(∏{e}[n+1, tanh(#)]))`
-/

namespace A112526.P8386683316653637223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (∏ p ∈ Nat.primeFactors (f1 n), Real.tanh (Nat.factorization (f1 n) p : ℝ))⌋

end

end A112526.P8386683316653637223

namespace A112526

/-- `floor(tan(∏{e}[n+1, tanh(#)]))` -/
def P8386683316653637223.Spec : Prop :=
  ∀ n, P8386683316653637223.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P14482258434433760204

`floor(asin(∏{e}[n+1, tanh(#)]))`
-/

namespace A112526.P14482258434433760204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (∏ p ∈ Nat.primeFactors (f1 n), Real.tanh (Nat.factorization (f1 n) p : ℝ))⌋

end

end A112526.P14482258434433760204

namespace A112526

/-- `floor(asin(∏{e}[n+1, tanh(#)]))` -/
def P14482258434433760204.Spec : Prop :=
  ∀ n, P14482258434433760204.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P1532662871123967471

`floor(sinh(∏{e}[n+1, tanh(#)]))`
-/

namespace A112526.P1532662871123967471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (∏ p ∈ Nat.primeFactors (f1 n), Real.tanh (Nat.factorization (f1 n) p : ℝ))⌋

end

end A112526.P1532662871123967471

namespace A112526

/-- `floor(sinh(∏{e}[n+1, tanh(#)]))` -/
def P1532662871123967471.Spec : Prop :=
  ∀ n, P1532662871123967471.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P9678413385243085703

`∏{e}[n+1, (#+1)%#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112526

/-- `∏{e}[n+1, (#+1)%#]` -/
def P9678413385243085703.Spec : Prop :=
  ∀ n, (P9678413385243085703.a n : ℤ) = A112526 (n + 1)

theorem P9678413385243085703.correct : P9678413385243085703.Spec := by
  intro n
  simp only [A112526, Nat.add_sub_cancel]

end A112526

/-! ## A112526.P9109089998146475845

`∏{e}[n+1, 1-floor(1/#)]`
-/

namespace A112526.P9109089998146475845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - ⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A112526.P9109089998146475845

namespace A112526

/-- `∏{e}[n+1, 1-floor(1/#)]` -/
def P9109089998146475845.Spec : Prop :=
  ∀ n, P9109089998146475845.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P7786433982011351257

`ceil(∏{e}[n+1, 1-1/#])`
-/

namespace A112526.P7786433982011351257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (1 - 1 / (Nat.factorization (f1 n) p : ℚ))⌉

end

end A112526.P7786433982011351257

namespace A112526

/-- `ceil(∏{e}[n+1, 1-1/#])` -/
def P7786433982011351257.Spec : Prop :=
  ∀ n, P7786433982011351257.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P10372276761429305185

`and(1, ∏{e}[n+1, #!+1])`
-/

namespace A112526.P10372276761429305185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorial (Nat.factorization (f1 n) p) + 1))

end

end A112526.P10372276761429305185

namespace A112526

/-- `and(1, ∏{e}[n+1, #!+1])` -/
def P10372276761429305185.Spec : Prop :=
  ∀ n, (P10372276761429305185.a n : ℤ) = A112526 (n + 1)

end A112526

/-! ## A112526.P8888023053289919800

`C(2, ∑{e}[n+1, C(3, #²)])`
-/

namespace A112526.P8888023053289919800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 (Nat.factorization (f1 n) p ^ 2))

end

end A112526.P8888023053289919800

namespace A112526

/-- `C(2, ∑{e}[n+1, C(3, #²)])` -/
def P8888023053289919800.Spec : Prop :=
  ∀ n, (P8888023053289919800.a n : ℤ) = A112526 (n + 1)

end A112526

/-! ## A112526.P17039638844415206395

`∏{p}[n+1, val(((n+1)/#)², n+1)]`
-/

namespace A112526.P17039638844415206395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (p : ℚ)) ^ 2)).toNat (n + 1)

end

end A112526.P17039638844415206395

namespace A112526

/-- `∏{p}[n+1, val(((n+1)/#)², n+1)]` -/
def P17039638844415206395.Spec : Prop :=
  ∀ n, (P17039638844415206395.a n : ℤ) = A112526 (n + 1)

end A112526

/-! ## A112526.P8239000915445555384

`abs(A307423(n+1))`
-/

namespace A112526.P8239000915445555384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307423 (n + 1)|

end

end A112526.P8239000915445555384

namespace A112526

/-- `abs(A307423(n+1))` -/
def P8239000915445555384.Spec : Prop :=
  ∀ n, P8239000915445555384.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P15371879694085328407

`abs(A355683(n+1))`
-/

namespace A112526.P15371879694085328407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355683 (n + 1)|

end

end A112526.P15371879694085328407

namespace A112526

/-- `abs(A355683(n+1))` -/
def P15371879694085328407.Spec : Prop :=
  ∀ n, P15371879694085328407.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P14817168615122091349

`abs(A355684(n+1))`
-/

namespace A112526.P14817168615122091349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355684 (n + 1)|

end

end A112526.P14817168615122091349

namespace A112526

/-- `abs(A355684(n+1))` -/
def P14817168615122091349.Spec : Prop :=
  ∀ n, P14817168615122091349.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P6842798158523948325

`A056671(n+1)%2`
-/

namespace A112526.P6842798158523948325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056671 (n + 1)) 2

end

end A112526.P6842798158523948325

namespace A112526

/-- `A056671(n+1)%2` -/
def P6842798158523948325.Spec : Prop :=
  ∀ n, P6842798158523948325.a n = A112526 (n + 1)

end A112526

/-! ## A112526.P3743538282413219879

`A073184(n+1)%2`
-/

namespace A112526.P3743538282413219879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073184 (n + 1)) 2

end

end A112526.P3743538282413219879

namespace A112526

/-- `A073184(n+1)%2` -/
def P3743538282413219879.Spec : Prop :=
  ∀ n, P3743538282413219879.a n = A112526 (n + 1)

end A112526

/-!
# A112527: a(1)=2; a(n)=smallest prime not less than the sum of all previous terms.

The programs for A112527, there is no canonical definition to state claims against.
-/

/-! ## A112527.P9885120956338746853

`A064934((2^n)%2+n)`
-/

namespace A112527.P9885120956338746853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (2 ^ n % 2 + n)

end

end A112527.P9885120956338746853

/-! ## A112527.P8715470305248707833

`A064934(and(1, 2^n)+n)`
-/

namespace A112527.P8715470305248707833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (Nat.land 1 (2 ^ n) + n)

end

end A112527.P8715470305248707833

/-! ## A112527.P14096576069771313375

`A064934(1-(1-n)%(n+1))`
-/

namespace A112527.P14096576069771313375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A112527.P14096576069771313375

/-! ## A112527.P12749736648748013435

`A064934(A028310(n))`
-/

namespace A112527.P12749736648748013435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A028310 n).toNat

end

end A112527.P12749736648748013435

/-! ## A112527.P1048673111448220645

`A064934(A065033(2*n))`
-/

namespace A112527.P1048673111448220645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A065033 (2 * n)).toNat

end

end A112527.P1048673111448220645

/-! ## A112527.P10996327432635295985

`A064934(A123108(2*n))`
-/

namespace A112527.P10996327432635295985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A123108 (2 * n)).toNat

end

end A112527.P10996327432635295985

/-! ## A112527.P8880153063016043567

`A064934(A000007(n)+n)`
-/

namespace A112527.P8880153063016043567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A000007 n + (n : ℤ)).toNat

end

end A112527.P8880153063016043567

/-! ## A112527.P7094784342129885435

`A054977(n)*A064934(n)`
-/

namespace A112527.P7094784342129885435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A064934 n

end

end A112527.P7094784342129885435

/-! ## A112527.P15134437157865586724

`A064934(gcd(n, A008486(n)))`
-/

namespace A112527.P15134437157865586724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (Int.gcd (n : ℤ) (A008486 n))

end

end A112527.P15134437157865586724

/-! ## A112527.P18264926258327662018

`A064934(or(n, A000007(n)))`
-/

namespace A112527.P18264926258327662018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A112527.P18264926258327662018

/-! ## A112527.P7339805404811906694

`A064934(xor(n, A000007(n)))`
-/

namespace A112527.P7339805404811906694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A112527.P7339805404811906694

/-! ## A112527.P6105217706353755341

`A064934(A054977(n)-1+n)`
-/

namespace A112527.P6105217706353755341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A054977 n - 1 + (n : ℤ)).toNat

end

end A112527.P6105217706353755341

/-! ## A112527.P11801342164910305832

`A064934(n-(1-A054977(n)))`
-/

namespace A112527.P11801342164910305832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 ((n : ℤ) - (1 - A054977 n)).toNat

end

end A112527.P11801342164910305832

/-! ## A112527.P10796849564004809793

`A064934(A008486(n)-2*n)`
-/

namespace A112527.P10796849564004809793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A008486 n - (2 * n : ℤ)).toNat

end

end A112527.P10796849564004809793

/-! ## A112527.P17297201116593676055

`A064934(n^(A151800(n)%2))`
-/

namespace A112527.P17297201116593676055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A151800 n) 2 : ℤ))).toNat

end

end A112527.P17297201116593676055

/-! ## A112527.P11434874434257351668

`A064934(A008486(n)-n-n)`
-/

namespace A112527.P11434874434257351668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A112527.P11434874434257351668

/-! ## A112527.P8394093827962285366

`A064934(A091400(A008486(n))+n)`
-/

namespace A112527.P8394093827962285366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A091400 (A008486 n).toNat + (n : ℤ)).toNat

end

end A112527.P8394093827962285366

/-! ## A112527.P12411706595743071752

`A000034(A001316(n))*A064934(n)`
-/

namespace A112527.P12411706595743071752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001316 n).toNat * A064934 n

end

end A112527.P12411706595743071752

/-! ## A112527.P296015671451490612

`A064934(A008683(A016754(n))+n)`
-/

namespace A112527.P296015671451490612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 (A008683 (A016754 n).toNat + (n : ℤ)).toNat

end

end A112527.P296015671451490612

/-!
# A112528: Number of representations of n-th prime of the form p1*p2+p3, where p1, p2 and p3 are primes, not necessarily all distinct.

The programs for A112528, there is no canonical definition to state claims against.
-/

/-! ## A112528.P3197566787951803551

`A100949(A000040(n+1))`
-/

namespace A112528.P3197566787951803551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A000040 (n + 1)).toNat

end

end A112528.P3197566787951803551

/-! ## A112528.P11016456663394418447

`A100949(A006005(n+1))`
-/

namespace A112528.P11016456663394418447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A006005 (n + 1)).toNat

end

end A112528.P11016456663394418447

/-! ## A112528.P64915740962172765

`A100949(A161847(n+1))`
-/

namespace A112528.P64915740962172765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A161847 (n + 1)).toNat

end

end A112528.P64915740962172765

/-! ## A112528.P1572108562342608316

`A100949(A008578(n+2))`
-/

namespace A112528.P1572108562342608316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A008578 (n + 2)).toNat

end

end A112528.P1572108562342608316

/-! ## A112528.P18342664053249282346

`A100949(A075643(n+2))`
-/

namespace A112528.P18342664053249282346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A075643 (n + 2)).toNat

end

end A112528.P18342664053249282346

/-! ## A112528.P8562936045283251159

`A100949(A171525(n+2))`
-/

namespace A112528.P8562936045283251159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A171525 (n + 2)).toNat

end

end A112528.P8562936045283251159

/-! ## A112528.P11309424240025009549

`A100949(A175787(n+2))`
-/

namespace A112528.P11309424240025009549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A175787 (n + 2)).toNat

end

end A112528.P11309424240025009549

/-! ## A112528.P10536721612317213063

`A100949(A182986(n+2))`
-/

namespace A112528.P10536721612317213063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A182986 (n + 2)).toNat

end

end A112528.P10536721612317213063

/-! ## A112528.P16711270735546262230

`A100949(record[A006530(n+2)])`
-/

namespace A112528.P16711270735546262230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112528.P16711270735546262230

/-! ## A112528.P4768657983157180557

`A100949(record[A014963(n+2)])`
-/

namespace A112528.P4768657983157180557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112528.P4768657983157180557

/-! ## A112528.P360534211820204950

`A100949(record[A020639(n+2)])`
-/

namespace A112528.P360534211820204950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112528.P360534211820204950

/-! ## A112528.P9303624752100828147

`A100949(A040976(n+1)+2)`
-/

namespace A112528.P9303624752100828147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A040976 (n + 1) + 2).toNat

end

end A112528.P9303624752100828147

/-! ## A112528.P15178613004830267348

`A100949(A007504(n+1)-A007504(n))`
-/

namespace A112528.P15178613004830267348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A007504 (n + 1) - A007504 n).toNat

end

end A112528.P15178613004830267348

/-! ## A112528.P15136511324348467805

`A100949(A073060(∑[n]))`
-/

namespace A112528.P15136511324348467805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A073060 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A112528.P15136511324348467805

/-!
# A112529: Numbers k such that prime(k) +- 2*k are both primes.

The programs for A112529, there is no canonical definition to state claims against.
-/

/-! ## A112529.P4978154532802874678

`A000720(A231332(n+1))`
-/

namespace A112529.P4978154532802874678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231332 (n + 1)).toNat

end

end A112529.P4978154532802874678

/-! ## A112529.P2073546968245005079

`A003963(p?[A231332(n+1)])`
-/

namespace A112529.P2073546968245005079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P2073546968245005079

/-! ## A112529.P11316436144572037293

`A026233(p?[A231332(n+1)])`
-/

namespace A112529.P11316436144572037293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P11316436144572037293

/-! ## A112529.P15321029112247254365

`A049084(p?[A231332(n+1)])`
-/

namespace A112529.P15321029112247254365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P15321029112247254365

/-! ## A112529.P1825343822623570630

`A055396(p?[A231332(n+1)])`
-/

namespace A112529.P1825343822623570630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P1825343822623570630

/-! ## A112529.P4838172807666886663

`A058933(p?[A231332(n+1)])`
-/

namespace A112529.P4838172807666886663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P4838172807666886663

/-! ## A112529.P8205466437702692170

`A061395(p?[A231332(n+1)])`
-/

namespace A112529.P8205466437702692170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P8205466437702692170

/-! ## A112529.P2455276375790713269

`A075167(p?[A231332(n+1)])`
-/

namespace A112529.P2455276375790713269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112529.P2455276375790713269

/-! ## A112529.P92765301989440349

`A036234(A231332(n+1)-1)`
-/

namespace A112529.P92765301989440349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A231332 (n + 1) - 1).toNat

end

end A112529.P92765301989440349

/-! ## A112529.P10931578307645146648

`A061395(2*A231332(n+1))`
-/

namespace A112529.P10931578307645146648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A231332 (n + 1)).toNat

end

end A112529.P10931578307645146648

/-!
# A112531: Triangle read by rows which lists compositions having at least one part equal to 1.

The programs for A112531, the canonical program `A112531.P1162023673917804213` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112531 has offset 1).

The definition of A112531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112531.P1162023673917804213

`A246660(A073138(2*n+1))/A246660(2*n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A112531

/-- `A246660(A073138(2*n+1))/A246660(2*n+1)` -/
def P1162023673917804213.Spec : Prop :=
  ∀ n, P1162023673917804213.a n = (A112531 (n + 1) : ℚ)

end A112531

/-! ## A112531.P7500524217613269710

`A008480(A278222(Δ[n²]))`
-/

namespace A112531.P7500524217613269710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A278222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A112531.P7500524217613269710

namespace A112531

/-- `A008480(A278222(Δ[n²]))` -/
def P7500524217613269710.Spec : Prop :=
  ∀ n, P7500524217613269710.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P2578267702078569243

`A008480(A278222(2*n+1))%A004139(n+1)`
-/

namespace A112531.P2578267702078569243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (A278222 (2 * n + 1)).toNat) (A004139 (n + 1))

end

end A112531.P2578267702078569243

namespace A112531

/-- `A008480(A278222(2*n+1))%A004139(n+1)` -/
def P2578267702078569243.Spec : Prop :=
  ∀ n, P2578267702078569243.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P654113438923637238

`A008480(A278222(2*n+1)%A050267(n+1))`
-/

namespace A112531.P654113438923637238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (Int.tmod (A278222 (2 * n + 1)) (A050267 (n + 1))).toNat

end

end A112531.P654113438923637238

namespace A112531

/-- `A008480(A278222(2*n+1)%A050267(n+1))` -/
def P654113438923637238.Spec : Prop :=
  ∀ n, P654113438923637238.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P10359216065086270307

`A008480(A005940(2*(n+1)))`
-/

namespace A112531.P10359216065086270307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A005940 (2 * (n + 1))).toNat

end

end A112531.P10359216065086270307

namespace A112531

/-- `A008480(A005940(2*(n+1)))` -/
def P10359216065086270307.Spec : Prop :=
  ∀ n, P10359216065086270307.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P6147655218300388501

`A335447(A005940(2*n+2))+1`
-/

namespace A112531.P6147655218300388501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (A005940 (2 * n + 2)).toNat + 1

end

end A112531.P6147655218300388501

namespace A112531

/-- `A335447(A005940(2*n+2))+1` -/
def P6147655218300388501.Spec : Prop :=
  ∀ n, P6147655218300388501.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P11285927558145372017

`A008480(A005940(n+1)+A005940(n+1))`
-/

namespace A112531.P11285927558145372017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A005940 (n + 1) + A005940 (n + 1)).toNat

end

end A112531.P11285927558145372017

namespace A112531

/-- `A008480(A005940(n+1)+A005940(n+1))` -/
def P11285927558145372017.Spec : Prop :=
  ∀ n, P11285927558145372017.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P926868141488343926

`A008480(2*A332815(n))`
-/

namespace A112531.P926868141488343926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 * A332815 n).toNat

end

end A112531.P926868141488343926

namespace A112531

/-- `A008480(2*A332815(n))` -/
def P926868141488343926.Spec : Prop :=
  ∀ n, P926868141488343926.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P8913445509353980067

`A168324(2*A332815(n))`
-/

namespace A112531.P8913445509353980067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (2 * A332815 n).toNat

end

end A112531.P8913445509353980067

namespace A112531

/-- `A168324(2*A332815(n))` -/
def P8913445509353980067.Spec : Prop :=
  ∀ n, P8913445509353980067.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P2677430352606503596

`A008480(2*A253565(n))`
-/

namespace A112531.P2677430352606503596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 * A253565 n).toNat

end

end A112531.P2677430352606503596

namespace A112531

/-- `A008480(2*A253565(n))` -/
def P2677430352606503596.Spec : Prop :=
  ∀ n, P2677430352606503596.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P13983825579308579234

`A168324(2*A253565(n))`
-/

namespace A112531.P13983825579308579234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (2 * A253565 n).toNat

end

end A112531.P13983825579308579234

namespace A112531

/-- `A168324(2*A253565(n))` -/
def P13983825579308579234.Spec : Prop :=
  ∀ n, P13983825579308579234.a n = A112531 (n + 1)

end A112531

/-! ## A112531.P69961648234273505

`A008480(A005843(A253565(n)))`
-/

namespace A112531.P69961648234273505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A005843 (A253565 n).toNat).toNat

end

end A112531.P69961648234273505

namespace A112531

/-- `A008480(A005843(A253565(n)))` -/
def P69961648234273505.Spec : Prop :=
  ∀ n, P69961648234273505.a n = A112531 (n + 1)

end A112531

/-!
# A112532: First differences of [0, A047970].

The programs for A112532, there is no canonical definition to state claims against.
-/

/-! ## A112532.P2646257005055214298

`Δ[Δ[A103480(n)]]`
-/

namespace A112532.P2646257005055214298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112532.P2646257005055214298

/-! ## A112532.P16871548650978391021

`Δ[Δ[A101494(∑[n])]]`
-/

namespace A112532.P16871548650978391021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112532.P16871548650978391021

/-! ## A112532.P16539644271953018178

`abs(Δ[A047970(abs(1-n))])`
-/

namespace A112532.P16539644271953018178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047970 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A112532.P16539644271953018178

/-! ## A112532.P5899434766001304349

`Δ[Δ[A003101(A004273(n)-n)]]`
-/

namespace A112532.P5899434766001304349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003101 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112532.P5899434766001304349

/-! ## A112532.P8424259150076780046

`Δ[Δ[A026898(n-A057427(n))]]`
-/

namespace A112532.P8424259150076780046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026898 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112532.P8424259150076780046

/-! ## A112532.P5119491583766242222

`Δ[Δ[A287216(A034856(n+1))]]`
-/

namespace A112532.P5119491583766242222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A034856 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112532.P5119491583766242222

/-!
# A112533: Expansion of (4+49*x+108*x^2-432*x^3+54675*x^5)/((1-27*x^2)*(1-6*x+27*x^2)*(1+6*x+27*x^2)).

The programs for A112533, there is no canonical definition to state claims against.
-/

/-! ## A112533.P11262868899319028235

`A250200(∑[A001271(n)])²`
-/

namespace A112533.P11262868899319028235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A112533.P11262868899319028235

/-!
# A112537: If b(n) is the smallest positive integer and c(n) is the largest positive integer such that n = b(n)^c(n), then a(n) = b(n)^c(n+1).

The programs for A112537, the canonical program `A112537.P5806524321860362590` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112537 has offset 1).

The definition of A112537 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112537.P5806524321860362590

`A052410(n+1)^A052409(n+2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112537

/-- `A052410(n+1)^A052409(n+2)` -/
def P5806524321860362590.Spec : Prop :=
  ∀ n, P5806524321860362590.a n = (A112537 (n + 1) : ℚ)

end A112537

/-! ## A112537.P6099187420481805748

`(n+1)^ratio[A008458(A052409(n+1))]`
-/

namespace A112537.P6099187420481805748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A052409 (n + 1)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A112537.P6099187420481805748

namespace A112537

/-- `(n+1)^ratio[A008458(A052409(n+1))]` -/
def P6099187420481805748.Spec : Prop :=
  ∀ n, P6099187420481805748.a n = (A112537 (n + 1) : ℝ)

end A112537

/-! ## A112537.P10941527270221447244

`(n+1)^ratio[A253641(n+1)]`
-/

namespace A112537.P10941527270221447244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A112537.P10941527270221447244

namespace A112537

/-- `(n+1)^ratio[A253641(n+1)]` -/
def P10941527270221447244.Spec : Prop :=
  ∀ n, P10941527270221447244.a n = (A112537 (n + 1) : ℝ)

end A112537

/-! ## A112537.P6840172017505603549

`A052410(n+1)^A253641(n+2)`
-/

namespace A112537.P6840172017505603549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052410 (n + 1) : ℚ) ^ (A253641 (n + 2) : ℤ)

end

end A112537.P6840172017505603549

namespace A112537

/-- `A052410(n+1)^A253641(n+2)` -/
def P6840172017505603549.Spec : Prop :=
  ∀ n, P6840172017505603549.a n = (A112537 (n + 1) : ℚ)

end A112537

/-! ## A112537.P3758751012522805716

`A329814(A080335(n))^A253641(n+2)`
-/

namespace A112537.P3758751012522805716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329814 (A080335 n).toNat : ℚ) ^ (A253641 (n + 2) : ℤ)

end

end A112537.P3758751012522805716

namespace A112537

/-- `A329814(A080335(n))^A253641(n+2)` -/
def P3758751012522805716.Spec : Prop :=
  ∀ n, P3758751012522805716.a n = (A112537 (n + 1) : ℚ)

end A112537

/-!
# A112538: If b(n) is the smallest positive integer and c(n) is the largest positive integer such that n = b(n)^c(n), then a(n) = c(n)^b(n).

The programs for A112538, the canonical program `A112538.P11631091965378758560` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112538 has offset 2).

The definition of A112538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052409, A052410, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112538.P11631091965378758560

`A052409(n+2)^A052410(n+2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112538

/-- `A052409(n+2)^A052410(n+2)` -/
def P11631091965378758560.Spec : Prop :=
  ∀ n, P11631091965378758560.a n = (A112538 (n + 2) : ℚ)

end A112538

/-! ## A112538.P2125408285404979035

`A253641(n+2)^A052410(n+2)`
-/

namespace A112538.P2125408285404979035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253641 (n + 2) : ℚ) ^ (A052410 (n + 2) : ℤ)

end

end A112538.P2125408285404979035

namespace A112538

/-- `A253641(n+2)^A052410(n+2)` -/
def P2125408285404979035.Spec : Prop :=
  ∀ n, P2125408285404979035.a n = (A112538 (n + 2) : ℚ)

end A112538

/-! ## A112538.P6305973173159192706

`A253641(n+2)^A329814(n+2)`
-/

namespace A112538.P6305973173159192706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253641 (n + 2) : ℚ) ^ (A329814 (n + 2) : ℤ)

end

end A112538.P6305973173159192706

namespace A112538

/-- `A253641(n+2)^A329814(n+2)` -/
def P6305973173159192706.Spec : Prop :=
  ∀ n, P6305973173159192706.a n = (A112538 (n + 2) : ℚ)

end A112538

/-! ## A112538.P2316924567684157469

`A253641(n+2)^A025478(A069623(n+2))`
-/

namespace A112538.P2316924567684157469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253641 (n + 2) : ℚ) ^ (A025478 (A069623 (n + 2)).toNat : ℤ)

end

end A112538.P2316924567684157469

namespace A112538

/-- `A253641(n+2)^A025478(A069623(n+2))` -/
def P2316924567684157469.Spec : Prop :=
  ∀ n, P2316924567684157469.a n = (A112538 (n + 2) : ℚ)

end A112538

/-! ## A112538.P5487647419432483980

`A052409(n+2)^A025478(A076411(n+3))`
-/

namespace A112538.P5487647419432483980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052409 (n + 2) : ℚ) ^ (A025478 (A076411 (n + 3)).toNat : ℤ)

end

end A112538.P5487647419432483980

namespace A112538

/-- `A052409(n+2)^A025478(A076411(n+3))` -/
def P5487647419432483980.Spec : Prop :=
  ∀ n, P5487647419432483980.a n = (A112538 (n + 2) : ℚ)

end A112538

/-! ## A112538.P15119027988982398504

`A052409(n+2)^A007916(A289023(n+2))`
-/

namespace A112538.P15119027988982398504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052409 (n + 2) : ℚ) ^ (A007916 (A289023 (n + 2)).toNat : ℤ)

end

end A112538.P15119027988982398504

namespace A112538

/-- `A052409(n+2)^A007916(A289023(n+2))` -/
def P15119027988982398504.Spec : Prop :=
  ∀ n, P15119027988982398504.a n = (A112538 (n + 2) : ℚ)

end A112538

/-!
# A112539: Half-baked Thue-Morse: at successive steps the sequence or its bit-inverted form is appended to itself.

The programs for A112539, the canonical program `A112539.P5182746905196455764` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112539 has offset 1).

The definition of A112539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112539.P3301361105028684644

`char[xor(2*n, floor(n/2))]`
-/

namespace A112539.P3301361105028684644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A112539.P3301361105028684644

namespace A112539

/-- `char[xor(2*n, floor(n/2))]` -/
def P3301361105028684644.Spec : Prop :=
  ∀ n, (P3301361105028684644.a n : ℤ) = A112539 (n + 1)

end A112539

/-! ## A112539.P5182746905196455764

`(a(floor(n/4))+n)%2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112539

/-- `(a(floor(n/4))+n)%2` -/
def P5182746905196455764.Spec : Prop :=
  ∀ n, (P5182746905196455764.a n : ℤ) = A112539 (n + 1)

theorem P5182746905196455764.correct : P5182746905196455764.Spec := by
  intro n
  simp only [A112539, Nat.add_sub_cancel]

end A112539

/-! ## A112539.P1599123749426952604

`(n-a(floor(n/4)))%2` with `a(0)=1`
-/

namespace A112539.P1599123749426952604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat) 2

end

end A112539.P1599123749426952604

namespace A112539

/-- `(n-a(floor(n/4)))%2` -/
def P1599123749426952604.Spec : Prop :=
  ∀ n, P1599123749426952604.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P7576859771949913732

`and(1, a(floor(n/4))+n)` with `a(0)=1`
-/

namespace A112539.P7576859771949913732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (a ⌊(n : ℚ) / 4⌋.toNat + n)

end

end A112539.P7576859771949913732

namespace A112539

/-- `and(1, a(floor(n/4))+n)` -/
def P7576859771949913732.Spec : Prop :=
  ∀ n, (P7576859771949913732.a n : ℤ) = A112539 (n + 1)

theorem P7576859771949913732.correct : P7576859771949913732.Spec := by
  intro n
  simp only [A112539, Nat.add_sub_cancel, A112539.P7576859771949913732.a, A112539.P5182746905196455764.a, SequenceMachineLib.memo_apply]
  try simp

end A112539

/-! ## A112539.P3450775106887088628

`xor(n, a(floor(n/4)))%2` with `a(0)=1`
-/

namespace A112539.P3450775106887088628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor n (a ⌊(n : ℚ) / 4⌋.toNat) % 2

end

end A112539.P3450775106887088628

namespace A112539

/-- `xor(n, a(floor(n/4)))%2` -/
def P3450775106887088628.Spec : Prop :=
  ∀ n, (P3450775106887088628.a n : ℤ) = A112539 (n + 1)

end A112539

/-! ## A112539.P2786832950123811384

`1-A341389(n)`
-/

namespace A112539.P2786832950123811384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341389 n

end

end A112539.P2786832950123811384

namespace A112539

/-- `1-A341389(n)` -/
def P2786832950123811384.Spec : Prop :=
  ∀ n, P2786832950123811384.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P507854294784790340

`A273149(n)%2`
-/

namespace A112539.P507854294784790340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273149 n) 2

end

end A112539.P507854294784790340

namespace A112539

/-- `A273149(n)%2` -/
def P507854294784790340.Spec : Prop :=
  ∀ n, P507854294784790340.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P893092459200838920

`A361020(n)%2`
-/

namespace A112539.P893092459200838920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361020 n) 2

end

end A112539.P893092459200838920

namespace A112539

/-- `A361020(n)%2` -/
def P893092459200838920.Spec : Prop :=
  ∀ n, P893092459200838920.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P4634334981317201941

`A341389(xor(1, n))`
-/

namespace A112539.P4634334981317201941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (Nat.xor 1 n)

end

end A112539.P4634334981317201941

namespace A112539

/-- `A341389(xor(1, n))` -/
def P4634334981317201941.Spec : Prop :=
  ∀ n, P4634334981317201941.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P16950411794046372383

`char[A158704(n+1)]`
-/

namespace A112539.P16950411794046372383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A112539.P16950411794046372383

namespace A112539

/-- `char[A158704(n+1)]` -/
def P16950411794046372383.Spec : Prop :=
  ∀ n, (P16950411794046372383.a n : ℤ) = A112539 (n + 1)

end A112539

/-! ## A112539.P10658169319205445794

`(A112865(n)+1)/2`
-/

namespace A112539.P10658169319205445794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112865 n + 1 : ℚ) / 2

end

end A112539.P10658169319205445794

namespace A112539

/-- `(A112865(n)+1)/2` -/
def P10658169319205445794.Spec : Prop :=
  ∀ n, P10658169319205445794.a n = (A112539 (n + 1) : ℚ)

end A112539

/-! ## A112539.P7998613046314668087

`A020655(n+1)%2`
-/

namespace A112539.P7998613046314668087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020655 (n + 1)) 2

end

end A112539.P7998613046314668087

namespace A112539

/-- `A020655(n+1)%2` -/
def P7998613046314668087.Spec : Prop :=
  ∀ n, P7998613046314668087.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P7753218371791723752

`A089215(n+1)%2`
-/

namespace A112539.P7753218371791723752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089215 (n + 1)) 2

end

end A112539.P7753218371791723752

namespace A112539

/-- `A089215(n+1)%2` -/
def P7753218371791723752.Spec : Prop :=
  ∀ n, P7753218371791723752.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P17256077415538984306

`A120518(n+1)%2`
-/

namespace A112539.P17256077415538984306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120518 (n + 1)) 2

end

end A112539.P17256077415538984306

namespace A112539

/-- `A120518(n+1)%2` -/
def P17256077415538984306.Spec : Prop :=
  ∀ n, P17256077415538984306.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P4630220345064750131

`A120520(n+1)%2`
-/

namespace A112539.P4630220345064750131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120520 (n + 1)) 2

end

end A112539.P4630220345064750131

namespace A112539

/-- `A120520(n+1)%2` -/
def P4630220345064750131.Spec : Prop :=
  ∀ n, P4630220345064750131.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P7317600164513188105

`A287552(n+1)%2`
-/

namespace A112539.P7317600164513188105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287552 (n + 1)) 2

end

end A112539.P7317600164513188105

namespace A112539

/-- `A287552(n+1)%2` -/
def P7317600164513188105.Spec : Prop :=
  ∀ n, P7317600164513188105.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P5063489959016929925

`A287554(n+1)%2`
-/

namespace A112539.P5063489959016929925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287554 (n + 1)) 2

end

end A112539.P5063489959016929925

namespace A112539

/-- `A287554(n+1)%2` -/
def P5063489959016929925.Spec : Prop :=
  ∀ n, P5063489959016929925.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P8757163622958596574

`A287577(n+1)%2`
-/

namespace A112539.P8757163622958596574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287577 (n + 1)) 2

end

end A112539.P8757163622958596574

namespace A112539

/-- `A287577(n+1)%2` -/
def P8757163622958596574.Spec : Prop :=
  ∀ n, P8757163622958596574.a n = A112539 (n + 1)

end A112539

/-! ## A112539.P17484131521140535659

`A010059(A063694(n))`
-/

namespace A112539.P17484131521140535659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A063694 n).toNat

end

end A112539.P17484131521140535659

namespace A112539

/-- `A010059(A063694(n))` -/
def P17484131521140535659.Spec : Prop :=
  ∀ n, P17484131521140535659.a n = A112539 (n + 1)

end A112539

/-!
# A112540: Numbers m such that (15m-4, 15m-2, 15m+2, 15m+4) is a prime quadruple.

The programs for A112540, there is no canonical definition to state claims against.
-/

/-! ## A112540.P13817993443721323073

`A178082(n+1)/3`
-/

namespace A112540.P13817993443721323073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178082 (n + 1) : ℚ) / 3

end

end A112540.P13817993443721323073

/-! ## A112540.P7551975039688577087

`2*A014561(n+1)+1`
-/

namespace A112540.P7551975039688577087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014561 (n + 1) + 1

end

end A112540.P7551975039688577087

/-! ## A112540.P5990163756634311555

`2*A061668(n+1)-1`
-/

namespace A112540.P5990163756634311555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061668 (n + 1) - 1

end

end A112540.P5990163756634311555

/-! ## A112540.P15362638729592383282

`∑[2*A159910(n+1)]+1`
-/

namespace A112540.P15362638729592383282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112540.P15362638729592383282

/-! ## A112540.P17108713070956772070

`(2*A007811(n+1)+1)/3`
-/

namespace A112540.P17108713070956772070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A007811 (n + 1) + 1 : ℚ) / 3

end

end A112540.P17108713070956772070

/-! ## A112540.P13918079875547094124

`A061668(n+1)+A014561(n+1)`
-/

namespace A112540.P13918079875547094124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (n + 1) + A014561 (n + 1)

end

end A112540.P13918079875547094124

/-! ## A112540.P10547065171131790705

`A007811(n+1)-A014561(n+1)`
-/

namespace A112540.P10547065171131790705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) - A014561 (n + 1)

end

end A112540.P10547065171131790705

/-! ## A112540.P13697141053786064670

`A064975(n+1)-A061668(n+1)`
-/

namespace A112540.P13697141053786064670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064975 (n + 1) - A061668 (n + 1)

end

end A112540.P13697141053786064670

/-! ## A112540.P8250067654453358174

`A007811(n+1)-∑[A159910(n+1)]`
-/

namespace A112540.P8250067654453358174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007811 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112540.P8250067654453358174

/-! ## A112540.P3978437149916237237

`A014561(n+1)+∑[A159910(n+1)]+1`
-/

namespace A112540.P3978437149916237237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A112540.P3978437149916237237

/-! ## A112540.P11953409698509220452

`A173037(n+2)/A173037(A020639(2*(n+1)))`
-/

namespace A112540.P11953409698509220452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173037 (n + 2) : ℚ) / (A173037 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A112540.P11953409698509220452

/-! ## A112540.P7969794547862091810

`A173092(n+2)/5`
-/

namespace A112540.P7969794547862091810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173092 (n + 2) : ℚ) / 5

end

end A112540.P7969794547862091810

/-! ## A112540.P3946144500323170391

`floor(A090258(n+2)/5)/3`
-/

namespace A112540.P3946144500323170391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A090258 (n + 2) : ℚ) / 5⌋ : ℚ) / 3

end

end A112540.P3946144500323170391

/-! ## A112540.P5126729618884084296

`A178082(n+1)+A178082(n+1)-A173092(n+2)`
-/

namespace A112540.P5126729618884084296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178082 (n + 1) + (A178082 (n + 1) - A173092 (n + 2))

end

end A112540.P5126729618884084296

/-!
# A112541: a(n) = Sum_{k=0..n} (n-k)! * n^k.

The programs for A112541, there is no canonical definition to state claims against.
-/

/-! ## A112541.P15724246473179980112

`2^n*A381996(∑[n])`
-/

namespace A112541.P15724246473179980112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A381996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112541.P15724246473179980112

/-!
# A112543: Numerators of fractions n/k in array by antidiagonals.

The programs for A112543, the canonical program `A112543.P3717108341135688098` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112543 has offset 1).

The definition of A112543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112543.P11162028696927529169

`A167192(comp[∑[n]])`
-/

namespace A112543.P11162028696927529169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112543.P11162028696927529169

namespace A112543

/-- `A167192(comp[∑[n]])` -/
def P11162028696927529169.Spec : Prop :=
  ∀ n, P11162028696927529169.a n = A112543 (n + 1)

end A112543

/-! ## A112543.P3717108341135688098

`(C(comp[∑[n]]-n, 2)-n)/A003989(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A112543

/-- `(C(comp[∑[n]]-n, 2)-n)/A003989(n+1)` -/
def P3717108341135688098.Spec : Prop :=
  ∀ n, P3717108341135688098.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P10583601237362787864

`A135278(n)/A050169(n+1)`
-/

namespace A112543.P10583601237362787864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n : ℚ) / (A050169 (n + 1) : ℚ)

end

end A112543.P10583601237362787864

namespace A112543

/-- `A135278(n)/A050169(n+1)` -/
def P10583601237362787864.Spec : Prop :=
  ∀ n, P10583601237362787864.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P16212187388831109871

`A003990(n+1)/A002260(n+1)`
-/

namespace A112543.P16212187388831109871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A112543.P16212187388831109871

namespace A112543

/-- `A003990(n+1)/A002260(n+1)` -/
def P16212187388831109871.Spec : Prop :=
  ∀ n, P16212187388831109871.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P14041723000340102497

`A003990(n+1)/(A002262(n)+1)`
-/

namespace A112543.P14041723000340102497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A112543.P14041723000340102497

namespace A112543

/-- `A003990(n+1)/(A002262(n)+1)` -/
def P14041723000340102497.Spec : Prop :=
  ∀ n, P14041723000340102497.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P12426220439338020238

`A004736(n+1)/A003989(n+1)`
-/

namespace A112543.P12426220439338020238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112543.P12426220439338020238

namespace A112543

/-- `A004736(n+1)/A003989(n+1)` -/
def P12426220439338020238.Spec : Prop :=
  ∀ n, P12426220439338020238.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P17565417852655766024

`A074909(n+1)/A050169(n+1)`
-/

namespace A112543.P17565417852655766024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 (n + 1) : ℚ) / (A050169 (n + 1) : ℚ)

end

end A112543.P17565417852655766024

namespace A112543

/-- `A074909(n+1)/A050169(n+1)` -/
def P17565417852655766024.Spec : Prop :=
  ∀ n, P17565417852655766024.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P5518015383266875348

`A322550(n+1)/A089913(n+1)`
-/

namespace A112543.P5518015383266875348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322550 (n + 1) : ℚ) / (A089913 (n + 1) : ℚ)

end

end A112543.P5518015383266875348

namespace A112543

/-- `A322550(n+1)/A089913(n+1)` -/
def P5518015383266875348.Spec : Prop :=
  ∀ n, P5518015383266875348.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P7981831107325275905

`A004736(n+1)/A050873(comp[∑[n]])`
-/

namespace A112543.P7981831107325275905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A050873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A112543.P7981831107325275905

namespace A112543

/-- `A004736(n+1)/A050873(comp[∑[n]])` -/
def P7981831107325275905.Spec : Prop :=
  ∀ n, P7981831107325275905.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P14673807280846665752

`A135278(n)/gcd(A074909(n), A135278(n))`
-/

namespace A112543.P14673807280846665752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n : ℚ) / (Int.gcd (A074909 n) (A135278 n) : ℚ)

end

end A112543.P14673807280846665752

namespace A112543

/-- `A135278(n)/gcd(A074909(n), A135278(n))` -/
def P14673807280846665752.Spec : Prop :=
  ∀ n, P14673807280846665752.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P9713487430946798875

`(A002024(n+1)-A002262(n))/A003989(n+1)`
-/

namespace A112543.P9713487430946798875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A002262 n : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112543.P9713487430946798875

namespace A112543

/-- `(A002024(n+1)-A002262(n))/A003989(n+1)` -/
def P9713487430946798875.Spec : Prop :=
  ∀ n, P9713487430946798875.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P9777907916879974633

`A004736(n+1)/gcd(A004736(n+1), A049581(n))`
-/

namespace A112543.P9777907916879974633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (Int.gcd (A004736 (n + 1)) (A049581 n) : ℚ)

end

end A112543.P9777907916879974633

namespace A112543

/-- `A004736(n+1)/gcd(A004736(n+1), A049581(n))` -/
def P9777907916879974633.Spec : Prop :=
  ∀ n, P9777907916879974633.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P15723811256592790293

`A003991(n+1)/(A002260(n+1)*A003989(n+1))`
-/

namespace A112543.P15723811256592790293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A002260 (n + 1) * A003989 (n + 1) : ℚ)

end

end A112543.P15723811256592790293

namespace A112543

/-- `A003991(n+1)/(A002260(n+1)*A003989(n+1))` -/
def P15723811256592790293.Spec : Prop :=
  ∀ n, P15723811256592790293.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P11168348979901375563

`A003990(n+1)/A003991(n+1)*A004736(n+1)`
-/

namespace A112543.P11168348979901375563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ) * (A004736 (n + 1) : ℚ)

end

end A112543.P11168348979901375563

namespace A112543

/-- `A003990(n+1)/A003991(n+1)*A004736(n+1)` -/
def P11168348979901375563.Spec : Prop :=
  ∀ n, P11168348979901375563.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P8625136559787725135

`A003989(n+1)/A002260(n+1)*A089913(n+1)`
-/

namespace A112543.P8625136559787725135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003989 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A089913 (n + 1) : ℚ)

end

end A112543.P8625136559787725135

namespace A112543

/-- `A003989(n+1)/A002260(n+1)*A089913(n+1)` -/
def P8625136559787725135.Spec : Prop :=
  ∀ n, P8625136559787725135.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P13864831634262862516

`lcm(A002260(n+1), A004736(n+1))/A002260(n+1)`
-/

namespace A112543.P13864831634262862516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002260 (n + 1)) (A004736 (n + 1)) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A112543.P13864831634262862516

namespace A112543

/-- `lcm(A002260(n+1), A004736(n+1))/A002260(n+1)` -/
def P13864831634262862516.Spec : Prop :=
  ∀ n, P13864831634262862516.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P14843981118304521598

`lcm(A057555(2*n+1), A057555(2*(n+1)))/A057555(2*n+1)`
-/

namespace A112543.P14843981118304521598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057555 (2 * n + 1)) (A057555 (2 * (n + 1))) : ℚ) / (A057555 (2 * n + 1) : ℚ)

end

end A112543.P14843981118304521598

namespace A112543

/-- `lcm(A057555(2*n+1), A057555(2*(n+1)))/A057555(2*n+1)` -/
def P14843981118304521598.Spec : Prop :=
  ∀ n, P14843981118304521598.a n = (A112543 (n + 1) : ℚ)

end A112543

/-! ## A112543.P1513963528710315345

`A112544(A038722(n+1))`
-/

namespace A112543.P1513963528710315345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (A038722 (n + 1)).toNat

end

end A112543.P1513963528710315345

namespace A112543

/-- `A112544(A038722(n+1))` -/
def P1513963528710315345.Spec : Prop :=
  ∀ n, P1513963528710315345.a n = A112543 (n + 1)

end A112543

/-! ## A112543.P1219790916583333352

`A106448(n+1)-A112544(n+1)`
-/

namespace A112543.P1219790916583333352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106448 (n + 1) - A112544 (n + 1)

end

end A112543.P1219790916583333352

namespace A112543

/-- `A106448(n+1)-A112544(n+1)` -/
def P1219790916583333352.Spec : Prop :=
  ∀ n, P1219790916583333352.a n = A112543 (n + 1)

end A112543

/-! ## A112543.P15894120979077406320

`A089913(n+1)/A112544(n+1)`
-/

namespace A112543.P15894120979077406320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089913 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A112543.P15894120979077406320

namespace A112543

/-- `A089913(n+1)/A112544(n+1)` -/
def P15894120979077406320.Spec : Prop :=
  ∀ n, P15894120979077406320.a n = (A112543 (n + 1) : ℚ)

end A112543

/-!
# A112544: Denominators of fractions n/k in array by antidiagonals.

The programs for A112544, the canonical program `A112544.P10572173355111095997` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112544 has offset 1).

The definition of A112544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112544.P9719045766967428837

`A164306(comp[∑[n]])`
-/

namespace A112544.P9719045766967428837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112544.P9719045766967428837

namespace A112544

/-- `A164306(comp[∑[n]])` -/
def P9719045766967428837.Spec : Prop :=
  ∀ n, P9719045766967428837.a n = A112544 (n + 1)

end A112544

/-! ## A112544.P10572173355111095997

`A112543(A038722(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A112544

/-- `A112543(A038722(n+1))` -/
def P10572173355111095997.Spec : Prop :=
  ∀ n, P10572173355111095997.a n = A112544 (n + 1)

theorem P10572173355111095997.correct : P10572173355111095997.Spec := by
  intro n
  simp only [A112544, Nat.add_sub_cancel]

end A112544

/-! ## A112544.P17908414785476691925

`A112543(A061579(n)+1)`
-/

namespace A112544.P17908414785476691925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A061579 n + 1).toNat

end

end A112544.P17908414785476691925

namespace A112544

/-- `A112543(A061579(n)+1)` -/
def P17908414785476691925.Spec : Prop :=
  ∀ n, P17908414785476691925.a n = A112544 (n + 1)

end A112544

/-! ## A112544.P13141297545536802942

`A074909(n)/A050169(n+1)`
-/

namespace A112544.P13141297545536802942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A050169 (n + 1) : ℚ)

end

end A112544.P13141297545536802942

namespace A112544

/-- `A074909(n)/A050169(n+1)` -/
def P13141297545536802942.Spec : Prop :=
  ∀ n, P13141297545536802942.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P8318863583678352913

`A106448(n+1)-A112543(n+1)`
-/

namespace A112544.P8318863583678352913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106448 (n + 1) - A112543 (n + 1)

end

end A112544.P8318863583678352913

namespace A112544

/-- `A106448(n+1)-A112543(n+1)` -/
def P8318863583678352913.Spec : Prop :=
  ∀ n, P8318863583678352913.a n = A112544 (n + 1)

end A112544

/-! ## A112544.P180911645298227041

`A002260(n+1)/A003989(n+1)`
-/

namespace A112544.P180911645298227041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112544.P180911645298227041

namespace A112544

/-- `A002260(n+1)/A003989(n+1)` -/
def P180911645298227041.Spec : Prop :=
  ∀ n, P180911645298227041.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P14389453121865027483

`(A002262(n)+1)/A003989(n+1)`
-/

namespace A112544.P14389453121865027483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112544.P14389453121865027483

namespace A112544

/-- `(A002262(n)+1)/A003989(n+1)` -/
def P14389453121865027483.Spec : Prop :=
  ∀ n, P14389453121865027483.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P9210797736961510739

`A003990(n+1)/A004736(n+1)`
-/

namespace A112544.P9210797736961510739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003990 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A112544.P9210797736961510739

namespace A112544

/-- `A003990(n+1)/A004736(n+1)` -/
def P9210797736961510739.Spec : Prop :=
  ∀ n, P9210797736961510739.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P14382767898512702621

`A167192(2*A004736(n+1)+n)`
-/

namespace A112544.P14382767898512702621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A112544.P14382767898512702621

namespace A112544

/-- `A167192(2*A004736(n+1)+n)` -/
def P14382767898512702621.Spec : Prop :=
  ∀ n, P14382767898512702621.a n = A112544 (n + 1)

end A112544

/-! ## A112544.P1829916387835438041

`A089913(n+1)/A112543(n+1)`
-/

namespace A112544.P1829916387835438041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089913 (n + 1) : ℚ) / (A112543 (n + 1) : ℚ)

end

end A112544.P1829916387835438041

namespace A112544

/-- `A089913(n+1)/A112543(n+1)` -/
def P1829916387835438041.Spec : Prop :=
  ∀ n, P1829916387835438041.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P14064902433198988855

`A089913(n+1)²/A322550(n+1)`
-/

namespace A112544.P14064902433198988855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089913 (n + 1) ^ 2 : ℚ) / (A322550 (n + 1) : ℚ)

end

end A112544.P14064902433198988855

namespace A112544

/-- `A089913(n+1)²/A322550(n+1)` -/
def P14064902433198988855.Spec : Prop :=
  ∀ n, P14064902433198988855.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P10721971919675609656

`A322550(n+1)/A112543(n+1)²`
-/

namespace A112544.P10721971919675609656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322550 (n + 1) : ℚ) / (A112543 (n + 1) ^ 2 : ℚ)

end

end A112544.P10721971919675609656

namespace A112544

/-- `A322550(n+1)/A112543(n+1)²` -/
def P10721971919675609656.Spec : Prop :=
  ∀ n, P10721971919675609656.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P10291363692941767837

`A057555(2*n+1)/A003989(n+1)`
-/

namespace A112544.P10291363692941767837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * n + 1) : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112544.P10291363692941767837

namespace A112544

/-- `A057555(2*n+1)/A003989(n+1)` -/
def P10291363692941767837.Spec : Prop :=
  ∀ n, P10291363692941767837.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P8077200723145948050

`A051173(A080036(n))/(A080036(n)-n)`
-/

namespace A112544.P8077200723145948050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (A080036 n).toNat : ℚ) / (A080036 n - (n : ℤ) : ℚ)

end

end A112544.P8077200723145948050

namespace A112544

/-- `A051173(A080036(n))/(A080036(n)-n)` -/
def P8077200723145948050.Spec : Prop :=
  ∀ n, P8077200723145948050.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P8514153067540682328

`A074909(n)/gcd(A074909(n), A135278(n))`
-/

namespace A112544.P8514153067540682328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (Int.gcd (A074909 n) (A135278 n) : ℚ)

end

end A112544.P8514153067540682328

namespace A112544

/-- `A074909(n)/gcd(A074909(n), A135278(n))` -/
def P8514153067540682328.Spec : Prop :=
  ∀ n, P8514153067540682328.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P12428015904479608229

`A004736(A038722(n+1))/A003989(n+1)`
-/

namespace A112544.P12428015904479608229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A038722 (n + 1)).toNat : ℚ) / (A003989 (n + 1) : ℚ)

end

end A112544.P12428015904479608229

namespace A112544

/-- `A004736(A038722(n+1))/A003989(n+1)` -/
def P12428015904479608229.Spec : Prop :=
  ∀ n, P12428015904479608229.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P14142909071264422203

`A002260(n+1)/A050873(lt[1, A002260(n+1)])`
-/

namespace A112544.P14142909071264422203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A050873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ)

end

end A112544.P14142909071264422203

namespace A112544

/-- `A002260(n+1)/A050873(lt[1, A002260(n+1)])` -/
def P14142909071264422203.Spec : Prop :=
  ∀ n, P14142909071264422203.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P1349018525491852198

`A167192(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A112544.P1349018525491852198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167192 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A112544.P1349018525491852198

namespace A112544

/-- `A167192(A004736(n+1)+A004736(n+1)+n)` -/
def P1349018525491852198.Spec : Prop :=
  ∀ n, P1349018525491852198.a n = A112544 (n + 1)

end A112544

/-! ## A112544.P14968194291896017246

`A051173(A014132(n+1))/(A014132(n+1)-n)`
-/

namespace A112544.P14968194291896017246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (A014132 (n + 1)).toNat : ℚ) / (A014132 (n + 1) - (n : ℤ) : ℚ)

end

end A112544.P14968194291896017246

namespace A112544

/-- `A051173(A014132(n+1))/(A014132(n+1)-n)` -/
def P14968194291896017246.Spec : Prop :=
  ∀ n, P14968194291896017246.a n = (A112544 (n + 1) : ℚ)

end A112544

/-! ## A112544.P11196153725182210661

`A002260(n+1)/gcd(A002260(n+1), A049581(n))`
-/

namespace A112544.P11196153725182210661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A049581 n) : ℚ)

end

end A112544.P11196153725182210661

namespace A112544

/-- `A002260(n+1)/gcd(A002260(n+1), A049581(n))` -/
def P11196153725182210661.Spec : Prop :=
  ∀ n, P11196153725182210661.a n = (A112544 (n + 1) : ℚ)

end A112544

/-!
# A112546: Lengths of the loop of the sequences "Sum of last n digits" beginning with (n-1) zeros followed by digit 1.

The programs for A112546, there is no canonical definition to state claims against.
-/

/-! ## A112546.P688046063064976358

`A112583(A001096(n+1))`
-/

namespace A112546.P688046063064976358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112583 (A001096 (n + 1)).toNat

end

end A112546.P688046063064976358

/-!
# A112547: Lengths of the loop of the sequences "Sum of last n digits" beginning with (n-1) zeros followed by digit 2.

The programs for A112547, there is no canonical definition to state claims against.
-/

/-! ## A112547.P13313376746981055839

`A026504(A115761(n+1))+A000035(n)`
-/

namespace A112547.P13313376746981055839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026504 (A115761 (n + 1)).toNat + A000035 n

end

end A112547.P13313376746981055839

/-!
# A112548: Numbers k such that the numerator of Bernoulli(k)/k is (apart from sign) prime.

The programs for A112548, there is no canonical definition to state claims against.
-/

/-! ## A112548.P12660209609265024169

`A119766(A065475(n+1)+6)`
-/

namespace A112548.P12660209609265024169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119766 (A065475 (n + 1) + 6).toNat

end

end A112548.P12660209609265024169

/-! ## A112548.P15068061165039407306

`A119766(A326178(n+2)+5)`
-/

namespace A112548.P15068061165039407306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119766 (A326178 (n + 2) + 5).toNat

end

end A112548.P15068061165039407306

/-! ## A112548.P5197149766117353261

`A119766(A087156(n+1)+7)`
-/

namespace A112548.P5197149766117353261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119766 (A087156 (n + 1) + 7).toNat

end

end A112548.P5197149766117353261

/-! ## A112548.P17893529601632260667

`A119766(8-A151878(n)+n)`
-/

namespace A112548.P17893529601632260667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119766 (8 - A151878 n + (n : ℤ)).toNat

end

end A112548.P17893529601632260667

/-! ## A112548.P4776326771860711798

`A119766(9-A054977(n)+n)`
-/

namespace A112548.P4776326771860711798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119766 (9 - A054977 n + (n : ℤ)).toNat

end

end A112548.P4776326771860711798

/-!
# A112549: Lengths of the loop of the sequences "Sum of last n digits" beginning with (n-1) zeros followed by digit 3.

The programs for A112549, there is no canonical definition to state claims against.
-/

/-! ## A112549.P11510570335306990082

`A112585(n+1)%A246149(A246119(n))`
-/

namespace A112549.P11510570335306990082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112585 (n + 1)) (A246149 (A246119 n).toNat)

end

end A112549.P11510570335306990082

/-!
# A112552: A modified Chebyshev transform of the second kind.

The programs for A112552, the canonical program `A112552.P47081054228314261` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112552 has offset 0).

The definition of A112552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112552.P47081054228314261

`A030111(n+1)*A369736(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A112552

/-- `A030111(n+1)*A369736(n)` -/
def P47081054228314261.Spec : Prop :=
  ∀ n, P47081054228314261.a n = A112552 n

theorem P47081054228314261.correct : P47081054228314261.Spec := by
  intro n
  simp only [A112552]

end A112552

/-! ## A112552.P5263715720077584040

`A030111(n+1)/A046854(n)*A049310(n)`
-/

namespace A112552.P5263715720077584040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030111 (n + 1) : ℚ) / (A046854 n : ℚ) * (A049310 n : ℚ)

end

end A112552.P5263715720077584040

namespace A112552

/-- `A030111(n+1)/A046854(n)*A049310(n)` -/
def P5263715720077584040.Spec : Prop :=
  ∀ n, P5263715720077584040.a n = (A112552 n : ℚ)

end A112552

/-! ## A112552.P12340361199809135232

`A049310(comp[∑[n]])`
-/

namespace A112552.P12340361199809135232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112552.P12340361199809135232

namespace A112552

/-- `A049310(comp[∑[n]])` -/
def P12340361199809135232.Spec : Prop :=
  ∀ n, P12340361199809135232.a n = A112552 n

end A112552

/-! ## A112552.P6424944625423248052

`or(A000007(n), A049310(A014132(n+1)))`
-/

namespace A112552.P6424944625423248052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A049310 (A014132 (n + 1)).toNat)

end

end A112552.P6424944625423248052

namespace A112552

/-- `or(A000007(n), A049310(A014132(n+1)))` -/
def P6424944625423248052.Spec : Prop :=
  ∀ n, P6424944625423248052.a n = A112552 n

end A112552

/-! ## A112552.P15438788239976465281

`A049310(A014132(n+1))*A128174(n+1)`
-/

namespace A112552.P15438788239976465281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A014132 (n + 1)).toNat * A128174 (n + 1)

end

end A112552.P15438788239976465281

namespace A112552

/-- `A049310(A014132(n+1))*A128174(n+1)` -/
def P15438788239976465281.Spec : Prop :=
  ∀ n, P15438788239976465281.a n = A112552 n

end A112552

/-! ## A112552.P4534578175108158083

`A049310(A014132(n+1)-A000007(n))+A000007(n)`
-/

namespace A112552.P4534578175108158083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A014132 (n + 1) - A000007 n).toNat + A000007 n

end

end A112552.P4534578175108158083

namespace A112552

/-- `A049310(A014132(n+1)-A000007(n))+A000007(n)` -/
def P4534578175108158083.Spec : Prop :=
  ∀ n, P4534578175108158083.a n = A112552 n

end A112552

/-! ## A112552.P4031184373480242987

`A053119(A099375(n)+n)`
-/

namespace A112552.P4031184373480242987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A099375 n + (n : ℤ)).toNat

end

end A112552.P4031184373480242987

namespace A112552

/-- `A053119(A099375(n)+n)` -/
def P4031184373480242987.Spec : Prop :=
  ∀ n, P4031184373480242987.a n = A112552 n

end A112552

/-! ## A112552.P11645172954587523021

`A294519(n)/A134199(n)`
-/

namespace A112552.P11645172954587523021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294519 n : ℚ) / (A134199 n : ℚ)

end

end A112552.P11645172954587523021

namespace A112552

/-- `A294519(n)/A134199(n)` -/
def P11645172954587523021.Spec : Prop :=
  ∀ n, P11645172954587523021.a n = (A112552 n : ℚ)

end A112552

/-! ## A112552.P415728824761984933

`A294519(n)/A002260(n+1)`
-/

namespace A112552.P415728824761984933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294519 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A112552.P415728824761984933

namespace A112552

/-- `A294519(n)/A002260(n+1)` -/
def P415728824761984933.Spec : Prop :=
  ∀ n, P415728824761984933.a n = (A112552 n : ℚ)

end A112552

/-! ## A112552.P8376764656936974140

`A294519(n)/A128221(n+1)`
-/

namespace A112552.P8376764656936974140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294519 n : ℚ) / (A128221 (n + 1) : ℚ)

end

end A112552.P8376764656936974140

namespace A112552

/-- `A294519(n)/A128221(n+1)` -/
def P8376764656936974140.Spec : Prop :=
  ∀ n, P8376764656936974140.a n = (A112552 n : ℚ)

end A112552

/-!
# A112553: Expansion of 1/( (1+x^2)*(1-x+x^2) ).

The programs for A112553, the canonical program `A112553.P15855162265589362747` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112553 has offset 0).

The definition of A112553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-x^3+x^4))` (program `A112553.P15855162265589362747`, by `A112553.P15855162265589362747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112553.P15855162265589362747

`ogf(1/(1-x+2x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112553

/-- `ogf(1/(1-x+2x^2-x^3+x^4))` -/
def P15855162265589362747.Spec : Prop :=
  ∀ n, P15855162265589362747.a n = A112553 n

theorem P15855162265589362747.correct : P15855162265589362747.Spec := by
  intro n
  simp only [A112553]

end A112553

/-!
# A112554: Riordan array (c(x^2)^2, x*c(x^2)), c(x) the g.f. of A000108.

The programs for A112554, the canonical program `A112554.P14270769045827291744` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112554 has offset 0).

The definition of A112554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112554.P2835889531649606335

`A053121(comp[∑[n]])`
-/

namespace A112554.P2835889531649606335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112554.P2835889531649606335

namespace A112554

/-- `A053121(comp[∑[n]])` -/
def P2835889531649606335.Spec : Prop :=
  ∀ n, P2835889531649606335.a n = A112554 n

end A112554

/-! ## A112554.P14270769045827291744

`gcd(A000038(n), A053121(A014132(n+1)))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A112554

/-- `gcd(A000038(n), A053121(A014132(n+1)))` -/
def P14270769045827291744.Spec : Prop :=
  ∀ n, (P14270769045827291744.a n : ℤ) = A112554 n

theorem P14270769045827291744.correct : P14270769045827291744.Spec := by
  intro n
  simp only [A112554]

end A112554

/-! ## A112554.P9701057847596374342

`lcm(A020985(n), A053121(A014132(n+1)))`
-/

namespace A112554.P9701057847596374342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A053121 (A014132 (n + 1)).toNat)

end

end A112554.P9701057847596374342

namespace A112554

/-- `lcm(A020985(n), A053121(A014132(n+1)))` -/
def P9701057847596374342.Spec : Prop :=
  ∀ n, (P9701057847596374342.a n : ℤ) = A112554 n

end A112554

/-! ## A112554.P9969342780101721470

`or(A000007(n), A053121(A014132(n+1)))`
-/

namespace A112554.P9969342780101721470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A053121 (A014132 (n + 1)).toNat)

end

end A112554.P9969342780101721470

namespace A112554

/-- `or(A000007(n), A053121(A014132(n+1)))` -/
def P9969342780101721470.Spec : Prop :=
  ∀ n, P9969342780101721470.a n = A112554 n

end A112554

/-! ## A112554.P17672985926997183228

`A053121(A014132(n+1))+A001489(n)+n`
-/

namespace A112554.P17672985926997183228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A014132 (n + 1)).toNat + (A001489 n + (n : ℤ))

end

end A112554.P17672985926997183228

namespace A112554

/-- `A053121(A014132(n+1))+A001489(n)+n` -/
def P17672985926997183228.Spec : Prop :=
  ∀ n, P17672985926997183228.a n = A112554 n

end A112554

/-! ## A112554.P6072652381832539386

`A053121(A014132(n+1)-A000007(n))+A000007(n)`
-/

namespace A112554.P6072652381832539386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A014132 (n + 1) - A000007 n).toNat + A000007 n

end

end A112554.P6072652381832539386

namespace A112554

/-- `A053121(A014132(n+1)-A000007(n))+A000007(n)` -/
def P6072652381832539386.Spec : Prop :=
  ∀ n, P6072652381832539386.a n = A112554 n

end A112554

/-! ## A112554.P6436159691385104749

`A053121(A014132(n+1))^Δ[A002262(n)]`
-/

namespace A112554.P6436159691385104749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053121 (A014132 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A112554.P6436159691385104749

namespace A112554

/-- `A053121(A014132(n+1))^Δ[A002262(n)]` -/
def P6436159691385104749.Spec : Prop :=
  ∀ n, P6436159691385104749.a n = (A112554 n : ℚ)

end A112554

/-! ## A112554.P3777511177397967855

`A053121(A014132(n+1))%A000412(n)`
-/

namespace A112554.P3777511177397967855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053121 (A014132 (n + 1)).toNat) (A000412 n)

end

end A112554.P3777511177397967855

namespace A112554

/-- `A053121(A014132(n+1))%A000412(n)` -/
def P3777511177397967855.Spec : Prop :=
  ∀ n, P3777511177397967855.a n = A112554 n

end A112554

/-! ## A112554.P6064868442275240994

`∑{d}[A053121(A014132(n+1)), A000010(#)]`
-/

namespace A112554.P6064868442275240994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112554.P6064868442275240994

namespace A112554

/-- `∑{d}[A053121(A014132(n+1)), A000010(#)]` -/
def P6064868442275240994.Spec : Prop :=
  ∀ n, P6064868442275240994.a n = A112554 n

end A112554

/-! ## A112554.P5800699283964635695

`A053121(A014132(n+1))/A020985(A053121(n))²`
-/

namespace A112554.P5800699283964635695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053121 (A014132 (n + 1)).toNat : ℚ) / (A020985 (A053121 n).toNat ^ 2 : ℚ)

end

end A112554.P5800699283964635695

namespace A112554

/-- `A053121(A014132(n+1))/A020985(A053121(n))²` -/
def P5800699283964635695.Spec : Prop :=
  ∀ n, P5800699283964635695.a n = (A112554 n : ℚ)

end A112554

/-! ## A112554.P14753462499055002920

`abs(A001489(A053121(A014132(n+1))))`
-/

namespace A112554.P14753462499055002920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (A053121 (A014132 (n + 1)).toNat).toNat|

end

end A112554.P14753462499055002920

namespace A112554

/-- `abs(A001489(A053121(A014132(n+1))))` -/
def P14753462499055002920.Spec : Prop :=
  ∀ n, P14753462499055002920.a n = A112554 n

end A112554

/-! ## A112554.P1813494637224244588

`A004525(2*A053121(A014132(n+1)))`
-/

namespace A112554.P1813494637224244588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A053121 (A014132 (n + 1)).toNat).toNat

end

end A112554.P1813494637224244588

namespace A112554

/-- `A004525(2*A053121(A014132(n+1)))` -/
def P1813494637224244588.Spec : Prop :=
  ∀ n, P1813494637224244588.a n = A112554 n

end A112554

/-!
# A112555: Triangle T, read by rows, such that the m-th matrix power satisfies T^m = I + m*(T - I) and consequently the matrix logarithm satisfies log(T) = T - I, where I is the identity matrix.

The programs for A112555, there is no canonical definition to state claims against.
-/

/-! ## A112555.P9140191433958403392

`A108561(n)/(-1)^∑[char[∑[n+2]]]`
-/

namespace A112555.P9140191433958403392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108561 n : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A112555.P9140191433958403392

/-! ## A112555.P4659281534243673223

`A108561(n)*A108561(∑[A127648(n)]-1)`
-/

namespace A112555.P4659281534243673223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 n * A108561 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A112555.P4659281534243673223

/-! ## A112555.P14207197639747575113

`A033999(A002024(n+2))*A108561(n)`
-/

namespace A112555.P14207197639747575113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002024 (n + 2)).toNat * A108561 n

end

end A112555.P14207197639747575113

/-! ## A112555.P7030186251425127585

`Δ[-A010751(n+1)]*A108561(n)`
-/

namespace A112555.P7030186251425127585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A108561 n

end

end A112555.P7030186251425127585

/-! ## A112555.P9435936797478118744

`ceil(A108561(n)/A094267(A002024(n+2)²))`
-/

namespace A112555.P9435936797478118744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108561 n : ℚ) / (A094267 (A002024 (n + 2) ^ 2).toNat : ℚ)⌉

end

end A112555.P9435936797478118744

/-! ## A112555.P15119417472734880363

`A108561(n)*A122188(n+1)`
-/

namespace A112555.P15119417472734880363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 n * A122188 (n + 1)

end

end A112555.P15119417472734880363

/-! ## A112555.P11429591406812939488

`A112465(A061579(n))*A122188(n+1)`
-/

namespace A112555.P11429591406812939488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A061579 n).toNat * A122188 (n + 1)

end

end A112555.P11429591406812939488

/-! ## A112555.P701844588635249728

`A112465(A114327(n)+n)*A122188(n+1)`
-/

namespace A112555.P701844588635249728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A114327 n + (n : ℤ)).toNat * A122188 (n + 1)

end

end A112555.P701844588635249728

/-! ## A112555.P8148143527956454527

`(2*A059259(n)-A007318(n))*A122188(n+1)`
-/

namespace A112555.P8148143527956454527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059259 n - A007318 n) * A122188 (n + 1)

end

end A112555.P8148143527956454527

/-! ## A112555.P7379965613925969498

`A108561(n)%A014574(n+1)/A122188(n+1)`
-/

namespace A112555.P7379965613925969498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A108561 n) (A014574 (n + 1)) : ℚ) / (A122188 (n + 1) : ℚ)

end

end A112555.P7379965613925969498

/-! ## A112555.P4700714861536077665

`(A108561(n)/A122188(n+1))%A000041(n+2)`
-/

namespace A112555.P4700714861536077665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A108561 n : ℚ) / (A122188 (n + 1) : ℚ))) (A000041 (n + 2))

end

end A112555.P4700714861536077665

/-!
# A112556: Sums of squared terms in rows of triangle A112555.

The programs for A112556, the canonical program `A112556.P12431749656610637596` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112556 has offset 0).

The definition of A112556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112556.P17669899404319142127

`A116466(2*n)`
-/

namespace A112556.P17669899404319142127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116466 (2 * n)

end

end A112556.P17669899404319142127

namespace A112556

/-- `A116466(2*n)` -/
def P17669899404319142127.Spec : Prop :=
  ∀ n, P17669899404319142127.a n = A112556 n

end A112556

/-! ## A112556.P9520223965389800953

`A116466(Δ[n²])/2`
-/

namespace A112556.P9520223965389800953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116466 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A112556.P9520223965389800953

namespace A112556

/-- `A116466(Δ[n²])/2` -/
def P9520223965389800953.Spec : Prop :=
  ∀ n, P9520223965389800953.a n = (A112556 n : ℚ)

end A112556

/-! ## A112556.P11538388728529386759

`A072547(n)+a(n-1)` with `a(0)=1`
-/

namespace A112556.P11538388728529386759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A072547 n + a (n - 1)

end

end A112556.P11538388728529386759

namespace A112556

/-- `A072547(n)+a(n-1)` -/
def P11538388728529386759.Spec : Prop :=
  ∀ n, P11538388728529386759.a n = A112556 n

end A112556

/-! ## A112556.P17487395952521993977

`∑[A072547(round(sqrt(n²+1)))]`
-/

namespace A112556.P17487395952521993977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112556.P17487395952521993977

namespace A112556

/-- `∑[A072547(round(sqrt(n²+1)))]` -/
def P17487395952521993977.Spec : Prop :=
  ∀ n, P17487395952521993977.a n = A112556 n

end A112556

/-! ## A112556.P12431749656610637596

`A120305(n-1)-or(-1, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112556

/-- `A120305(n-1)-or(-1, a(n-1))` -/
def P12431749656610637596.Spec : Prop :=
  ∀ n, P12431749656610637596.a n = A112556 n

theorem P12431749656610637596.correct : P12431749656610637596.Spec := by
  intro n
  simp only [A112556]

end A112556

/-! ## A112556.P140187436957725314

`∑[A072547(n+1)]+1-A072547(n+1)`
-/

namespace A112556.P140187436957725314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072547 (n + 1))

end

end A112556.P140187436957725314

namespace A112556

/-- `∑[A072547(n+1)]+1-A072547(n+1)` -/
def P140187436957725314.Spec : Prop :=
  ∀ n, P140187436957725314.a n = A112556 n

end A112556

/-! ## A112556.P17045575510886315755

`∑[A201635(A003600(n)-A000125(n))]`
-/

namespace A112556.P17045575510886315755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A003600 n - A000125 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112556.P17045575510886315755

namespace A112556

/-- `∑[A201635(A003600(n)-A000125(n))]` -/
def P17045575510886315755.Spec : Prop :=
  ∀ n, P17045575510886315755.a n = A112556 n

end A112556

/-! ## A112556.P1181136902923301544

`∑[A108561(2*(n²-n))]`
-/

namespace A112556.P1181136902923301544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (2 * ((n ^ 2 : ℤ) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112556.P1181136902923301544

namespace A112556

/-- `∑[A108561(2*(n²-n))]` -/
def P1181136902923301544.Spec : Prop :=
  ∀ n, P1181136902923301544.a n = A112556 n

end A112556

/-!
# A112557: Smallest number of stones in Tchoukaillon (or Mancala, or Kalahari) solitaire which make use of (2*n-1)-th hole for n>=1; a bisection of A002491.

The programs for A112557, there is no canonical definition to state claims against.
-/

/-! ## A112557.P7858879613634447143

`A002491(2*n+1)`
-/

namespace A112557.P7858879613634447143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (2 * n + 1)

end

end A112557.P7858879613634447143

/-! ## A112557.P10730191879629893888

`A007952(2*n)+1`
-/

namespace A112557.P10730191879629893888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 (2 * n) + 1

end

end A112557.P10730191879629893888

/-! ## A112557.P11597688761959303790

`A108696(2*(n+1))-1`
-/

namespace A112557.P11597688761959303790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (2 * (n + 1)) - 1

end

end A112557.P11597688761959303790

/-! ## A112557.P9029133769713134074

`record[A002491(n+2)^(n%2)]`
-/

namespace A112557.P9029133769713134074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112557.P9029133769713134074

/-! ## A112557.P7599511352555629909

`record[A002491(n+1)/(-1)^n]`
-/

namespace A112557.P7599511352555629909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002491 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112557.P7599511352555629909

/-! ## A112557.P10455373693669836068

`record[(and(1, n)+1)*A104738(n+1)]`
-/

namespace A112557.P10455373693669836068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℤ) * A104738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112557.P10455373693669836068

/-! ## A112557.P14486499881808540600

`2*A104738(2*n+1)-A028913(2*n)`
-/

namespace A112557.P14486499881808540600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104738 (2 * n + 1) - A028913 (2 * n)

end

end A112557.P14486499881808540600

/-! ## A112557.P12669421453995084280

`A113749(A055998(n+2))`
-/

namespace A112557.P12669421453995084280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055998 (n + 2)).toNat

end

end A112557.P12669421453995084280

/-! ## A112557.P5004912955685980862

`A113749(A155212(n)+5)`
-/

namespace A112557.P5004912955685980862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A155212 n + 5).toNat

end

end A112557.P5004912955685980862

/-! ## A112557.P12291950410993843064

`A113749(A052905(n+1)+2)`
-/

namespace A112557.P12291950410993843064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A052905 (n + 1) + 2).toNat

end

end A112557.P12291950410993843064

/-!
# A112558: Generalized Mancala solitaire (A002491); to get n-th term, start with n and successively round up to next 4 multiples of n-1, n-2, ..., 1, for n>=1.

The programs for A112558, there is no canonical definition to state claims against.
-/

/-! ## A112558.P8407068321576316659

`A113749(A046691(n+3))`
-/

namespace A112558.P8407068321576316659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A046691 (n + 3)).toNat

end

end A112558.P8407068321576316659

/-! ## A112558.P895941956416853508

`A113749(A056115(n)+11)`
-/

namespace A112558.P895941956416853508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A056115 n + 11).toNat

end

end A112558.P895941956416853508

/-! ## A112558.P16095295645046103222

`A113749(Δ[A023545(n+1)])`
-/

namespace A112558.P16095295645046103222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (f1 (n + 1) - f1 n).toNat

end

end A112558.P16095295645046103222

/-! ## A112558.P9901011155464374534

`A113749(A052905(n+2)+1)`
-/

namespace A112558.P9901011155464374534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A052905 (n + 2) + 1).toNat

end

end A112558.P9901011155464374534

/-! ## A112558.P8949115407365623215

`A113749(A055998(n+3)-1)`
-/

namespace A112558.P8949115407365623215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A055998 (n + 3) - 1).toNat

end

end A112558.P8949115407365623215

/-! ## A112558.P11089062051183008325

`A113749(A034856(n+4)-2)`
-/

namespace A112558.P11089062051183008325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A034856 (n + 4) - 2).toNat

end

end A112558.P11089062051183008325

/-! ## A112558.P11111545812608536934

`A113749(A056000(n+1)+6)`
-/

namespace A112558.P11111545812608536934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A056000 (n + 1) + 6).toNat

end

end A112558.P11111545812608536934

/-! ## A112558.P5006759373825158227

`A113749(A000124(n+5)-5)`
-/

namespace A112558.P5006759373825158227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A000124 (n + 5) - 5).toNat

end

end A112558.P5006759373825158227

/-! ## A112558.P16109590212500594809

`A113749(A000217(n+4)+n+1)`
-/

namespace A112558.P16109590212500594809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (A000217 (n + 4) + (n : ℤ) + 1).toNat

end

end A112558.P16109590212500594809

/-! ## A112558.P1046928322221314730

`A113749(eq[2, A092921(n)])`
-/

namespace A112558.P1046928322221314730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112558.P1046928322221314730

/-!
# A112559: Numbers k such that both k and 4k + 1 are in A005098.

The programs for A112559, the canonical program `A112559.P1469957549597084680` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112559 has offset 1).

The definition of A112559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112559.P13101339306642522586

`3*A179652(n+1)`
-/

namespace A112559.P13101339306642522586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A179652 (n + 1)

end

end A112559.P13101339306642522586

namespace A112559

/-- `3*A179652(n+1)` -/
def P13101339306642522586.Spec : Prop :=
  ∀ n, P13101339306642522586.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P1469957549597084680

`floor(A113601(n+1)/4)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112559

/-- `floor(A113601(n+1)/4)` -/
def P1469957549597084680.Spec : Prop :=
  ∀ n, P1469957549597084680.a n = A112559 (n + 1)

theorem P1469957549597084680.correct : P1469957549597084680.Spec := by
  intro n
  simp only [A112559, Nat.add_sub_cancel]

end A112559

/-! ## A112559.P10309179441571495079

`floor(p?[4*A002144(n+1)+1]/16)`
-/

namespace A112559.P10309179441571495079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002144 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 16⌋

end

end A112559.P10309179441571495079

namespace A112559

/-- `floor(p?[4*A002144(n+1)+1]/16)` -/
def P10309179441571495079.Spec : Prop :=
  ∀ n, P10309179441571495079.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P8259114164826809962

`∩[A005098(n+1), A127590(n+1)]`
-/

namespace A112559.P8259114164826809962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112559.P8259114164826809962

namespace A112559

/-- `∩[A005098(n+1), A127590(n+1)]` -/
def P8259114164826809962.Spec : Prop :=
  ∀ n, (P8259114164826809962.a n : ℤ) = A112559 (n + 1)

end A112559

/-! ## A112559.P8339544802427055938

`floor(p?[2*A294091(n+1)-1]/16)`
-/

namespace A112559.P8339544802427055938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294091 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 16⌋

end

end A112559.P8339544802427055938

namespace A112559

/-- `floor(p?[2*A294091(n+1)-1]/16)` -/
def P8339544802427055938.Spec : Prop :=
  ∀ n, P8339544802427055938.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P642979444143361486

`A110963(A113601(n+1)-4)`
-/

namespace A112559.P642979444143361486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (A113601 (n + 1) - 4).toNat

end

end A112559.P642979444143361486

namespace A112559

/-- `A110963(A113601(n+1)-4)` -/
def P642979444143361486.Spec : Prop :=
  ∀ n, P642979444143361486.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P4289532943251597353

`A103391(A113601(n+1)-6)`
-/

namespace A112559.P4289532943251597353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A113601 (n + 1) - 6).toNat

end

end A112559.P4289532943251597353

namespace A112559

/-- `A103391(A113601(n+1)-6)` -/
def P4289532943251597353.Spec : Prop :=
  ∀ n, P4289532943251597353.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P3078280260778123386

`floor(p?[A000203(A055131(n))-3]/16)`
-/

namespace A112559.P3078280260778123386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055131 n).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 16⌋

end

end A112559.P3078280260778123386

namespace A112559

/-- `floor(p?[A000203(A055131(n))-3]/16)` -/
def P3078280260778123386.Spec : Prop :=
  ∀ n, P3078280260778123386.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P3203153429191233235

`A002265(A113601(n+1))`
-/

namespace A112559.P3203153429191233235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A113601 (n + 1)).toNat

end

end A112559.P3203153429191233235

namespace A112559

/-- `A002265(A113601(n+1))` -/
def P3203153429191233235.Spec : Prop :=
  ∀ n, P3203153429191233235.a n = A112559 (n + 1)

end A112559

/-! ## A112559.P14450539360942774853

`record[A025480(A023212(n+3))]`
-/

namespace A112559.P14450539360942774853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A023212 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112559.P14450539360942774853

namespace A112559

/-- `record[A025480(A023212(n+3))]` -/
def P14450539360942774853.Spec : Prop :=
  ∀ n, P14450539360942774853.a n = A112559 (n + 1)

end A112559

/-!
# A112560: Sieve performed by successive iterations of steps where step m is: keep m terms, remove the next 2 and repeat; as m = 1,2,3,.. the remaining terms form this sequence.

The programs for A112560, there is no canonical definition to state claims against.
-/

/-! ## A112560.P8172037510481681675

`A112564(∑[n+4]+2)`
-/

namespace A112560.P8172037510481681675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A112560.P8172037510481681675

/-! ## A112560.P3769189048429946529

`record[A112564(n)-A280480(n+4)]`
-/

namespace A112560.P3769189048429946529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 n - A280480 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112560.P3769189048429946529

/-! ## A112560.P485224166053458772

`A112564(A046691(n+2))+A004216(n+1)`
-/

namespace A112560.P485224166053458772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (A046691 (n + 2)).toNat + A004216 (n + 1)

end

end A112560.P485224166053458772

/-! ## A112560.P5698458439933027563

`A344973(n+1)+A112564(A046691(n+2))`
-/

namespace A112560.P5698458439933027563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344973 (n + 1) + A112564 (A046691 (n + 2)).toNat

end

end A112560.P5698458439933027563

/-!
# A112561: Sieve performed by successive iterations of steps where step m is: keep m terms, remove the next 3 and repeat; as m = 1,2,3,.. the remaining terms form this sequence.

The programs for A112561, there is no canonical definition to state claims against.
-/

/-! ## A112561.P10978183758220706675

`A112564(∑[n+5]+5)`
-/

namespace A112561.P10978183758220706675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A112561.P10978183758220706675

/-! ## A112561.P398865113598058321

`A242118(A305105(n))+1`
-/

namespace A112561.P398865113598058321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242118 (A305105 n).toNat + 1

end

end A112561.P398865113598058321

/-!
# A112562: Sieve performed by successive iterations of steps where step m is: keep m terms, remove the next 4 and repeat; as m = 1,2,3,.. the remaining terms form this sequence.

The programs for A112562, there is no canonical definition to state claims against.
-/

/-! ## A112562.P15603149631977361304

`A112564(A055999(n+3))`
-/

namespace A112562.P15603149631977361304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (A055999 (n + 3)).toNat

end

end A112562.P15603149631977361304

/-! ## A112562.P11415171402792992899

`A112564(A056119(n)+15)`
-/

namespace A112562.P11415171402792992899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (A056119 n + 15).toNat

end

end A112562.P11415171402792992899

/-! ## A112562.P11075933547014903247

`A112564(eq[5, A025581(n)])`
-/

namespace A112562.P11075933547014903247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112562.P11075933547014903247

/-!
# A112563: Sieve performed by successive iterations of steps where step m is: keep m terms, remove the next 5 and repeat; as m = 1,2,3,.. the remaining terms form this sequence.

The programs for A112563, there is no canonical definition to state claims against.
-/

/-! ## A112563.P5206063781678403557

`A112564(∑[n+7]+14)`
-/

namespace A112563.P5206063781678403557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (∑ j ∈ Finset.range (n + 1), f1 j + 14)

end

end A112563.P5206063781678403557

/-!
# A112564: Square array, read by ascending antidiagonals, where each row is a generalized Flavius Josephus sieve (A000960).

The programs for A112564, there is no canonical definition to state claims against.
-/

/-! ## A112564.P12988812928253286973

`A221167(A091234(n+1))+A113749(n+1)`
-/

namespace A112564.P12988812928253286973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221167 (A091234 (n + 1)).toNat + A113749 (n + 1)

end

end A112564.P12988812928253286973

/-! ## A112564.P14469862478269296665

`or(A040051(26*(n+1)²-1), A109225(n+1))`
-/

namespace A112564.P14469862478269296665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040051 (26 * (n + 1) ^ 2 - 1)) (A109225 (n + 1))

end

end A112564.P14469862478269296665

/-! ## A112564.P4549905231768886571

`A389182(A290569(n+1))`
-/

namespace A112564.P4549905231768886571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389182 (A290569 (n + 1)).toNat

end

end A112564.P4549905231768886571

/-! ## A112564.P9506624844666237494

`A111890(2*A047969(n))`
-/

namespace A112564.P9506624844666237494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111890 (2 * A047969 n).toNat

end

end A112564.P9506624844666237494

/-! ## A112564.P11133187261773962521

`A163352(A140995(n)+A133713(n+2))`
-/

namespace A112564.P11133187261773962521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A140995 n + A133713 (n + 2)).toNat

end

end A112564.P11133187261773962521

/-!
# A112565: Main diagonal of square table A112564 of generalized Flavius Josephus sieves.

The programs for A112565, there is no canonical definition to state claims against.
-/

/-! ## A112565.P12236287766212887003

`A112564(∑[4*n])`
-/

namespace A112565.P12236287766212887003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112565.P12236287766212887003

/-! ## A112565.P14678341125406024298

`n*A316355(n^n)+1`
-/

namespace A112565.P14678341125406024298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316355 (n ^ n) + 1

end

end A112565.P14678341125406024298

/-!
# A112566: a(n) = (A112565(n) - 1)/n for n>=1.

The programs for A112566, there is no canonical definition to state claims against.
-/

/-! ## A112566.P5975357060136658798

`(A112565(n+1)-1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112566.P5975357060136658798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112565 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A112566.P5975357060136658798

/-! ## A112566.P13737406765591900499

`A162537(A162551(n)+A015112(n))`
-/

namespace A112566.P13737406765591900499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162537 (A162551 n + A015112 n).toNat

end

end A112566.P13737406765591900499

/-! ## A112566.P7541926383274370102

`A015112(n)+A004526(A128650(n+2))`
-/

namespace A112566.P7541926383274370102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 n + A004526 (A128650 (n + 2)).toNat

end

end A112566.P7541926383274370102

/-!
# A112567: Self-convolution equals A112565.

The programs for A112567, there is no canonical definition to state claims against.
-/

/-! ## A112567.P5489797202453999215

`A307824(ceil(exp(n-1)))`
-/

namespace A112567.P5489797202453999215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A112567.P5489797202453999215

/-! ## A112567.P1662798990622264974

`A324338(n!/2^-n-n)`
-/

namespace A112567.P1662798990622264974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ) - (n : ℚ))).toNat

end

end A112567.P1662798990622264974

/-!
# A112568: Secondary diagonal of square table A112564 of generalized Flavius Josephus sieves.

The programs for A112568, there is no canonical definition to state claims against.
-/

/-! ## A112568.P17922687639276863067

`A112564((n+1)²+n*(n+2))`
-/

namespace A112568.P17922687639276863067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 ((n + 1) ^ 2 + n * (n + 2))

end

end A112568.P17922687639276863067

/-! ## A112568.P680871971617549444

`record[A006530(record[A112564(2*n+1)])]`
-/

namespace A112568.P680871971617549444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112564 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112568.P680871971617549444

/-!
# A112575: Chebyshev transform of the second kind of the Pell numbers.

The programs for A112575, the canonical program `A112575.P12568196279514189982` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112575 has offset 0).

The definition of A112575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112575.P15248625132262373415

`ogf(x/(1-2x+x^2-2x^3+x^4))`
-/

namespace A112575.P15248625132262373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 1, -2, 1] n

end

end A112575.P15248625132262373415

namespace A112575

/-- `ogf(x/(1-2x+x^2-2x^3+x^4))` -/
def P15248625132262373415.Spec : Prop :=
  ∀ n, P15248625132262373415.a n = A112575 n

end A112575

/-! ## A112575.P12568196279514189982

`A100048(n)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112575

/-- `A100048(n)+a(n-2)` -/
def P12568196279514189982.Spec : Prop :=
  ∀ n, P12568196279514189982.a n = A112575 n

theorem P12568196279514189982.correct : P12568196279514189982.Spec := by
  intro n
  simp only [A112575]

end A112575

/-! ## A112575.P5740499954684759289

`∑[(A027674(n+1)+A027674(n))/2]`
-/

namespace A112575.P5740499954684759289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027674 (n + 1) + A027674 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112575.P5740499954684759289

namespace A112575

/-- `∑[(A027674(n+1)+A027674(n))/2]` -/
def P5740499954684759289.Spec : Prop :=
  ∀ n, P5740499954684759289.a n = (A112575 n : ℚ)

end A112575

/-! ## A112575.P10936545293987378189

`A183324(n+1)-A367400(n)`
-/

namespace A112575.P10936545293987378189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) - A367400 n

end

end A112575.P10936545293987378189

namespace A112575

/-- `A183324(n+1)-A367400(n)` -/
def P10936545293987378189.Spec : Prop :=
  ∀ n, P10936545293987378189.a n = A112575 n

end A112575

/-! ## A112575.P6453634592878306532

`A183324(n+1)-Δ[A118870(n)]`
-/

namespace A112575.P6453634592878306532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) - (f1 (n + 1) - f1 n)

end

end A112575.P6453634592878306532

namespace A112575

/-- `A183324(n+1)-Δ[A118870(n)]` -/
def P6453634592878306532.Spec : Prop :=
  ∀ n, P6453634592878306532.a n = A112575 n

end A112575

/-! ## A112575.P3287686698705476204

`A288380(n)-(Δ[A118870(n)]+1)`
-/

namespace A112575.P3287686698705476204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288380 n - (f1 (n + 1) - f1 n + 1)

end

end A112575.P3287686698705476204

namespace A112575

/-- `A288380(n)-(Δ[A118870(n)]+1)` -/
def P3287686698705476204.Spec : Prop :=
  ∀ n, P3287686698705476204.a n = A112575 n

end A112575

/-! ## A112575.P16185438608092774685

`A183324(A000027(n+1))%Δ[A118870(n)]`
-/

namespace A112575.P16185438608092774685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183324 (A000027 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A112575.P16185438608092774685

namespace A112575

/-- `A183324(A000027(n+1))%Δ[A118870(n)]` -/
def P16185438608092774685.Spec : Prop :=
  ∀ n, P16185438608092774685.a n = A112575 n

end A112575

/-! ## A112575.P15847983178099846303

`A100048(n)+A118870(n)-Δ[A118870(n)]`
-/

namespace A112575.P15847983178099846303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100048 n + (A118870 n - (f1 (n + 1) - f1 n))

end

end A112575.P15847983178099846303

namespace A112575

/-- `A100048(n)+A118870(n)-Δ[A118870(n)]` -/
def P15847983178099846303.Spec : Prop :=
  ∀ n, P15847983178099846303.a n = A112575 n

end A112575

/-! ## A112575.P16405986256696316866

`A183324(n+1)+A118870(n)-A118870(n+1)`
-/

namespace A112575.P16405986256696316866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) + (A118870 n - A118870 (n + 1))

end

end A112575.P16405986256696316866

namespace A112575

/-- `A183324(n+1)+A118870(n)-A118870(n+1)` -/
def P16405986256696316866.Spec : Prop :=
  ∀ n, P16405986256696316866.a n = A112575 n

end A112575

/-! ## A112575.P9989702907918606127

`A033305(n+1)+A033305(n+2)-Δ[A118870(n)]`
-/

namespace A112575.P9989702907918606127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + A033305 (n + 2) - (f1 (n + 1) - f1 n)

end

end A112575.P9989702907918606127

namespace A112575

/-- `A033305(n+1)+A033305(n+2)-Δ[A118870(n)]` -/
def P9989702907918606127.Spec : Prop :=
  ∀ n, P9989702907918606127.a n = A112575 n

end A112575

/-! ## A112575.P7972206728617182253

`A118870(n+2)-A367400(n+2)`
-/

namespace A112575.P7972206728617182253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 (n + 2) - A367400 (n + 2)

end

end A112575.P7972206728617182253

namespace A112575

/-- `A118870(n+2)-A367400(n+2)` -/
def P7972206728617182253.Spec : Prop :=
  ∀ n, P7972206728617182253.a n = A112575 n

end A112575

/-! ## A112575.P3435265667298759431

`Δ[Δ[A099854(n)]-A099846(n)]`
-/

namespace A112575.P3435265667298759431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A099846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112575.P3435265667298759431

namespace A112575

/-- `Δ[Δ[A099854(n)]-A099846(n)]` -/
def P3435265667298759431.Spec : Prop :=
  ∀ n, P3435265667298759431.a n = A112575 n

end A112575

/-! ## A112575.P5299962765604531508

`A118870(n+1)-Δ[Δ[A118870(n+1)]]`
-/

namespace A112575.P5299962765604531508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118870 (n + 1) - (f1 (n + 1) - f1 n)

end

end A112575.P5299962765604531508

namespace A112575

/-- `A118870(n+1)-Δ[Δ[A118870(n+1)]]` -/
def P5299962765604531508.Spec : Prop :=
  ∀ n, P5299962765604531508.a n = A112575 n

end A112575

/-!
# A112576: A Chebyshev-related transform of the Fibonacci numbers.

The programs for A112576, the canonical program `A112576.P9656253935790537593` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112576 has offset 0).

The definition of A112576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112576.P9656253935790537593

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112576

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P9656253935790537593.Spec : Prop :=
  ∀ n, P9656253935790537593.a n = A112576 n

theorem P9656253935790537593.correct : P9656253935790537593.Spec := by
  intro n
  simp only [A112576]

end A112576

/-! ## A112576.P16621940047379124134

`ogf(x/(1-x-3x^2+x^3+x^4))`
-/

namespace A112576.P16621940047379124134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -3, 1, 1] n

end

end A112576.P16621940047379124134

namespace A112576

/-- `ogf(x/(1-x-3x^2+x^3+x^4))` -/
def P16621940047379124134.Spec : Prop :=
  ∀ n, P16621940047379124134.a n = A112576 n

end A112576

/-! ## A112576.P3757192129675356308

`A131322(n)-A192232(n+1)`
-/

namespace A112576.P3757192129675356308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n - A192232 (n + 1)

end

end A112576.P3757192129675356308

namespace A112576

/-- `A131322(n)-A192232(n+1)` -/
def P3757192129675356308.Spec : Prop :=
  ∀ n, P3757192129675356308.a n = A112576 n

end A112576

/-! ## A112576.P9103918088637198364

`A192232(n+2)+A192232(n+2)-A192421(n+1)`
-/

namespace A112576.P9103918088637198364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (n + 2) + (A192232 (n + 2) - A192421 (n + 1))

end

end A112576.P9103918088637198364

namespace A112576

/-- `A192232(n+2)+A192232(n+2)-A192421(n+1)` -/
def P9103918088637198364.Spec : Prop :=
  ∀ n, P9103918088637198364.a n = A112576 n

end A112576

/-! ## A112576.P7628450839894808056

`A192232(A065475(n+1))-A192232(A028310(n))`
-/

namespace A112576.P7628450839894808056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192232 (A065475 (n + 1)).toNat - A192232 (A028310 n).toNat

end

end A112576.P7628450839894808056

namespace A112576

/-- `A192232(A065475(n+1))-A192232(A028310(n))` -/
def P7628450839894808056.Spec : Prop :=
  ∀ n, P7628450839894808056.a n = A112576 n

end A112576

/-! ## A112576.P17168592803097159708

`A289846(n)-A131322(n)`
-/

namespace A112576.P17168592803097159708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289846 n - A131322 n

end

end A112576.P17168592803097159708

namespace A112576

/-- `A289846(n)-A131322(n)` -/
def P17168592803097159708.Spec : Prop :=
  ∀ n, P17168592803097159708.a n = A112576 n

end A112576

/-! ## A112576.P6737884412948605883

`(A289846(n)-A192232(n+1))/2`
-/

namespace A112576.P6737884412948605883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289846 n - A192232 (n + 1) : ℚ) / 2

end

end A112576.P6737884412948605883

namespace A112576

/-- `(A289846(n)-A192232(n+1))/2` -/
def P6737884412948605883.Spec : Prop :=
  ∀ n, P6737884412948605883.a n = (A112576 n : ℚ)

end A112576

/-! ## A112576.P4340761690194626076

`A183314(n+1)-A131322(n+2)`
-/

namespace A112576.P4340761690194626076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183314 (n + 1) - A131322 (n + 2)

end

end A112576.P4340761690194626076

namespace A112576

/-- `A183314(n+1)-A131322(n+2)` -/
def P4340761690194626076.Spec : Prop :=
  ∀ n, P4340761690194626076.a n = A112576 n

end A112576

/-! ## A112576.P12724224973769022651

`∑[A289846(n+2)%A289846(n+1)]`
-/

namespace A112576.P12724224973769022651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289846 (n + 2)) (A289846 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112576.P12724224973769022651

namespace A112576

/-- `∑[A289846(n+2)%A289846(n+1)]` -/
def P12724224973769022651.Spec : Prop :=
  ∀ n, P12724224973769022651.a n = A112576 n

end A112576

/-! ## A112576.P1808114642517626872

`A183314(n+1)%(A183314(n+5)%A183314(n+4))`
-/

namespace A112576.P1808114642517626872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183314 (n + 1)) (Int.tmod (A183314 (n + 5)) (A183314 (n + 4)))

end

end A112576.P1808114642517626872

namespace A112576

/-- `A183314(n+1)%(A183314(n+5)%A183314(n+4))` -/
def P1808114642517626872.Spec : Prop :=
  ∀ n, P1808114642517626872.a n = A112576 n

end A112576

/-! ## A112576.P10082422543093092253

`A192387(n+1)/2^n`
-/

namespace A112576.P10082422543093092253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192387 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A112576.P10082422543093092253

namespace A112576

/-- `A192387(n+1)/2^n` -/
def P10082422543093092253.Spec : Prop :=
  ∀ n, P10082422543093092253.a n = (A112576 n : ℚ)

end A112576

/-! ## A112576.P10624650739906268243

`A192388(n+1)/2^(n-1)`
-/

namespace A112576.P10624650739906268243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192388 (n + 1) : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A112576.P10624650739906268243

namespace A112576

/-- `A192388(n+1)/2^(n-1)` -/
def P10624650739906268243.Spec : Prop :=
  ∀ n, P10624650739906268243.a n = (A112576 n : ℚ)

end A112576

/-! ## A112576.P14281913581948807670

`1/A011782(n)*A192388(n+1)`
-/

namespace A112576.P14281913581948807670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A011782 n : ℚ) * (A192388 (n + 1) : ℚ)

end

end A112576.P14281913581948807670

namespace A112576

/-- `1/A011782(n)*A192388(n+1)` -/
def P14281913581948807670.Spec : Prop :=
  ∀ n, P14281913581948807670.a n = (A112576 n : ℚ)

end A112576

/-!
# A112577: A Chebyshev-related transform of the Jacobsthal numbers.

The programs for A112577, the canonical program `A112577.P5405651547640153875` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112577 has offset 0).

The definition of A112577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112577.P14835204195780161916

`ogf(x/(1-x-4x^2+x^3+x^4))`
-/

namespace A112577.P14835204195780161916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -4, 1, 1] n

end

end A112577.P14835204195780161916

namespace A112577

/-- `ogf(x/(1-x-4x^2+x^3+x^4))` -/
def P14835204195780161916.Spec : Prop :=
  ∀ n, P14835204195780161916.a n = A112577 n

end A112577

/-! ## A112577.P7750849492392297229

`A334396(n+2)/2`
-/

namespace A112577.P7750849492392297229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334396 (n + 2) : ℚ) / 2

end

end A112577.P7750849492392297229

namespace A112577

/-- `A334396(n+2)/2` -/
def P7750849492392297229.Spec : Prop :=
  ∀ n, P7750849492392297229.a n = (A112577 n : ℚ)

end A112577

/-! ## A112577.P5405651547640153875

`A291227(n)%A077985(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112577

/-- `A291227(n)%A077985(n)` -/
def P5405651547640153875.Spec : Prop :=
  ∀ n, P5405651547640153875.a n = A112577 n

theorem P5405651547640153875.correct : P5405651547640153875.Spec := by
  intro n
  simp only [A112577]

end A112577

/-! ## A112577.P4515456711791526601

`A291227(n)-∑[A001333(n)]`
-/

namespace A112577.P4515456711791526601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291227 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112577.P4515456711791526601

namespace A112577

/-- `A291227(n)-∑[A001333(n)]` -/
def P4515456711791526601.Spec : Prop :=
  ∀ n, P4515456711791526601.a n = A112577 n

end A112577

/-! ## A112577.P13765441676839031775

`A291227(n)-A000129(n+1)`
-/

namespace A112577.P13765441676839031775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291227 n - A000129 (n + 1)

end

end A112577.P13765441676839031775

namespace A112577

/-- `A291227(n)-A000129(n+1)` -/
def P13765441676839031775.Spec : Prop :=
  ∀ n, P13765441676839031775.a n = A112577 n

end A112577

/-! ## A112577.P17950670269392096519

`A291227(n)-Δ[A024537(n)]`
-/

namespace A112577.P17950670269392096519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291227 n - (f1 (n + 1) - f1 n)

end

end A112577.P17950670269392096519

namespace A112577

/-- `A291227(n)-Δ[A024537(n)]` -/
def P17950670269392096519.Spec : Prop :=
  ∀ n, P17950670269392096519.a n = A112577 n

end A112577

/-!
# A112582: Number of partitions of n into distinct 5-smooth parts.

The programs for A112582, there is no canonical definition to state claims against.
-/

/-! ## A112582.P10612630646823834289

`A008619(record[A193280(A160718(n))])`
-/

namespace A112582.P10612630646823834289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193280 (A160718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112582.P10612630646823834289

/-! ## A112582.P17021621605557745549

`A184956(A319055(n+3)+A082325(n))`
-/

namespace A112582.P17021621605557745549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184956 (A319055 (n + 3) + A082325 n).toNat

end

end A112582.P17021621605557745549

/-! ## A112582.P9832942769375872652

`A184956(A319055(n+3)+A082342(n))`
-/

namespace A112582.P9832942769375872652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184956 (A319055 (n + 3) + A082342 n).toNat

end

end A112582.P9832942769375872652

/-! ## A112582.P4339015346379204513

`A048766(∑[A059268(n)]*A288254(n+8))`
-/

namespace A112582.P4339015346379204513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((∑ j ∈ Finset.range (n + 1), f1 j) * A288254 (n + 8)).toNat

end

end A112582.P4339015346379204513

/-! ## A112582.P5809161688777182616

`A060584(A175676(n+1))+A048766(A209816(n+1))`
-/

namespace A112582.P5809161688777182616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060584 (A175676 (n + 1)).toNat + A048766 (A209816 (n + 1)).toNat

end

end A112582.P5809161688777182616

/-!
# A112583: Lengths of the loop of the sequences "Sum of last n digits" beginning with (n-1) zeros followed by digit 4.

The programs for A112583, there is no canonical definition to state claims against.
-/

/-! ## A112583.P15341717876568151942

`A112589(A043320(n+1))`
-/

namespace A112583.P15341717876568151942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112589 (A043320 (n + 1)).toNat

end

end A112583.P15341717876568151942

/-! ## A112583.P2001129572991605448

`A112589(A044917(n+1))`
-/

namespace A112583.P2001129572991605448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112589 (A044917 (n + 1)).toNat

end

end A112583.P2001129572991605448

/-! ## A112583.P12606842387173011684

`A112589(A055645(n+1))`
-/

namespace A112583.P12606842387173011684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112589 (A055645 (n + 1)).toNat

end

end A112583.P12606842387173011684

/-! ## A112583.P17899737314071837013

`A112589(A161953(n+1))`
-/

namespace A112583.P17899737314071837013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112589 (A161953 (n + 1)).toNat

end

end A112583.P17899737314071837013

/-! ## A112583.P13148309045833723468

`A112589(A187829(n+1))`
-/

namespace A112583.P13148309045833723468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112589 (A187829 (n + 1)).toNat

end

end A112583.P13148309045833723468

/-!
# A112586: Lengths of the loop of the sequences "Sum of last n digits" beginning with (n-1) zeros followed by digit 7.

The programs for A112586, there is no canonical definition to state claims against.
-/

/-! ## A112586.P18410543048301109606

`A159573(A215214(n+1))`
-/

namespace A112586.P18410543048301109606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159573 (A215214 (n + 1)).toNat

end

end A112586.P18410543048301109606

/-!
# A112587: Numbers m such that phi(m) <= 2*tau(m), where phi=A000010 and tau=A000005.

The programs for A112587, there is no canonical definition to state claims against.
-/

/-! ## A112587.P18061655754620210576

`lt[ϕ, ∏{d}[n², (n+1)/#]]`
-/

namespace A112587.P18061655754620210576
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (n + 1 : ℚ) / (d : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A112587.P18061655754620210576

/-! ## A112587.P6702271753892225471

`lt[ceil(xor(1, n)/2), ∏{e}[n, 3*#]]`
-/

namespace A112587.P6702271753892225471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 * Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A112587.P6702271753892225471

/-! ## A112587.P5523880804838292345

`lt[round(xor(1, n)/2), ∏{e}[n, 3*#]]`
-/

namespace A112587.P5523880804838292345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 3 * Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A112587.P5523880804838292345

/-! ## A112587.P6158059339524722922

`lt[ceil(xor(1, n)/2), A226602(n)]`
-/

namespace A112587.P6158059339524722922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112587.P6158059339524722922

/-! ## A112587.P14410065035282544853

`lt[n-1, A322328(n+1)]+1`
-/

namespace A112587.P14410065035282544853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A112587.P14410065035282544853

/-!
# A112588: Numbers m such that phi(m) > 2*tau(m), where phi = A000010 and tau = A000005.

The programs for A112588, the canonical program `A112588.P10447318389527751841` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112588 has offset 1).

The definition of A112588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112588.P10447318389527751841

`lt[A000005(A253909(n)), A254528(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112588

/-- `lt[A000005(A253909(n)), A254528(n)]` -/
def P10447318389527751841.Spec : Prop :=
  ∀ n, (P10447318389527751841.a n : ℤ) = A112588 (n + 1)

theorem P10447318389527751841.correct : P10447318389527751841.Spec := by
  intro n
  simp only [A112588, Nat.add_sub_cancel]

end A112588

/-!
# A112590: Lengths of the loop of the sequences "Sum of last n digits" beginning with (n-1) zeros followed by digit 9.

The programs for A112590, there is no canonical definition to state claims against.
-/

/-! ## A112590.P4660961633241917750

`A112547(A375728(n+2))`
-/

namespace A112590.P4660961633241917750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112547 (A375728 (n + 2)).toNat

end

end A112590.P4660961633241917750

/-!
# A112591: a(n) = prime(n) XOR prime(n + 1).

The programs for A112591, the canonical program `A112591.P881006363963480545` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112591 has offset 1).

The definition of A112591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112591.P12933596515801332030

`xor(record[A093074(n+1)], p?[2*n+1])`
-/

namespace A112591.P12933596515801332030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A112591.P12933596515801332030

namespace A112591

/-- `xor(record[A093074(n+1)], p?[2*n+1])` -/
def P12933596515801332030.Spec : Prop :=
  ∀ n, P12933596515801332030.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P4649704426524400140

`xor(record[A006530(n+2)], p?[2*n+1])`
-/

namespace A112591.P4649704426524400140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A112591.P4649704426524400140

namespace A112591

/-- `xor(record[A006530(n+2)], p?[2*n+1])` -/
def P4649704426524400140.Spec : Prop :=
  ∀ n, P4649704426524400140.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P10342924302755829652

`xor(record[A014963(n+2)], p?[2*n+1])`
-/

namespace A112591.P10342924302755829652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A112591.P10342924302755829652

namespace A112591

/-- `xor(record[A014963(n+2)], p?[2*n+1])` -/
def P10342924302755829652.Spec : Prop :=
  ∀ n, P10342924302755829652.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P13546265429165755170

`xor(record[A020639(n+2)], p?[2*n+1])`
-/

namespace A112591.P13546265429165755170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A112591.P13546265429165755170

namespace A112591

/-- `xor(record[A020639(n+2)], p?[2*n+1])` -/
def P13546265429165755170.Spec : Prop :=
  ∀ n, P13546265429165755170.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P8358651638919282386

`xor(Δ[A007504(n)], A065091(n+1))`
-/

namespace A112591.P8358651638919282386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A065091 (n + 1))

end

end A112591.P8358651638919282386

namespace A112591

/-- `xor(Δ[A007504(n)], A065091(n+1))` -/
def P8358651638919282386.Spec : Prop :=
  ∀ n, P8358651638919282386.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P14749248016681433010

`xor(Δ[A007504(n)], A000040(n+2))`
-/

namespace A112591.P14749248016681433010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A000040 (n + 2))

end

end A112591.P14749248016681433010

namespace A112591

/-- `xor(Δ[A007504(n)], A000040(n+2))` -/
def P14749248016681433010.Spec : Prop :=
  ∀ n, P14749248016681433010.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P8922091845898514007

`A175329(n+1)-A175330(n+1)`
-/

namespace A112591.P8922091845898514007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175329 (n + 1) - A175330 (n + 1)

end

end A112591.P8922091845898514007

namespace A112591

/-- `A175329(n+1)-A175330(n+1)` -/
def P8922091845898514007.Spec : Prop :=
  ∀ n, P8922091845898514007.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P881006363963480545

`xor(A000040(n+1), A065091(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112591

/-- `xor(A000040(n+1), A065091(n+1))` -/
def P881006363963480545.Spec : Prop :=
  ∀ n, P881006363963480545.a n = A112591 (n + 1)

theorem P881006363963480545.correct : P881006363963480545.Spec := by
  intro n
  simp only [A112591, Nat.add_sub_cancel]

end A112591

/-! ## A112591.P1393088329850539157

`xor(A000040(n+1), A000040(n+2))`
-/

namespace A112591.P1393088329850539157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A000040 (n + 2))

end

end A112591.P1393088329850539157

namespace A112591

/-- `xor(A000040(n+1), A000040(n+2))` -/
def P1393088329850539157.Spec : Prop :=
  ∀ n, P1393088329850539157.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P2823923623858388256

`xor(A006093(n+2), A039915(n+1))`
-/

namespace A112591.P2823923623858388256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006093 (n + 2)) (A039915 (n + 1))

end

end A112591.P2823923623858388256

namespace A112591

/-- `xor(A006093(n+2), A039915(n+1))` -/
def P2823923623858388256.Spec : Prop :=
  ∀ n, P2823923623858388256.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P12365400264633425658

`xor(A008578(n+2), A065091(n+1))`
-/

namespace A112591.P12365400264633425658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008578 (n + 2)) (A065091 (n + 1))

end

end A112591.P12365400264633425658

namespace A112591

/-- `xor(A008578(n+2), A065091(n+1))` -/
def P12365400264633425658.Spec : Prop :=
  ∀ n, P12365400264633425658.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P1610767177835291397

`xor(A039915(n+1), A039915(n+2))`
-/

namespace A112591.P1610767177835291397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039915 (n + 1)) (A039915 (n + 2))

end

end A112591.P1610767177835291397

namespace A112591

/-- `xor(A039915(n+1), A039915(n+2))` -/
def P1610767177835291397.Spec : Prop :=
  ∀ n, P1610767177835291397.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P16386810188271473617

`xor(A065091(n+1), A134735(Δ[n²]))`
-/

namespace A112591.P16386810188271473617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065091 (n + 1)) (A134735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A112591.P16386810188271473617

namespace A112591

/-- `xor(A065091(n+1), A134735(Δ[n²]))` -/
def P16386810188271473617.Spec : Prop :=
  ∀ n, P16386810188271473617.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P3643070296216528887

`2*A175329(n+1)-A001043(n+1)`
-/

namespace A112591.P3643070296216528887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175329 (n + 1) - A001043 (n + 1)

end

end A112591.P3643070296216528887

namespace A112591

/-- `2*A175329(n+1)-A001043(n+1)` -/
def P3643070296216528887.Spec : Prop :=
  ∀ n, P3643070296216528887.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P18438096054741030384

`A001043(n+1)-2*A175330(n+1)`
-/

namespace A112591.P18438096054741030384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 2 * A175330 (n + 1)

end

end A112591.P18438096054741030384

namespace A112591

/-- `A001043(n+1)-2*A175330(n+1)` -/
def P18438096054741030384.Spec : Prop :=
  ∀ n, P18438096054741030384.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P11201391014818720587

`xor(A006093(n+1)+1, A065091(n+1))`
-/

namespace A112591.P11201391014818720587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006093 (n + 1) + 1) (A065091 (n + 1))

end

end A112591.P11201391014818720587

namespace A112591

/-- `xor(A006093(n+1)+1, A065091(n+1))` -/
def P11201391014818720587.Spec : Prop :=
  ∀ n, P11201391014818720587.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P7247064494387811147

`xor(A008864(n+1)-1, A065091(n+1))`
-/

namespace A112591.P7247064494387811147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008864 (n + 1) - 1) (A065091 (n + 1))

end

end A112591.P7247064494387811147

namespace A112591

/-- `xor(A008864(n+1)-1, A065091(n+1))` -/
def P7247064494387811147.Spec : Prop :=
  ∀ n, P7247064494387811147.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P8562923531084226537

`xor(A065091(n+1), A067747(2*n+1))`
-/

namespace A112591.P8562923531084226537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A065091 (n + 1)) (A067747 (2 * n + 1))

end

end A112591.P8562923531084226537

namespace A112591

/-- `xor(A065091(n+1), A067747(2*n+1))` -/
def P8562923531084226537.Spec : Prop :=
  ∀ n, P8562923531084226537.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P7035077424478307568

`xor(eq[n+2, A000203(n+1)]+1, A207790(2*(n+2)))`
-/

namespace A112591.P7035077424478307568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A207790 (2 * (n + 2)))

end

end A112591.P7035077424478307568

namespace A112591

/-- `xor(eq[n+2, A000203(n+1)]+1, A207790(2*(n+2)))` -/
def P7035077424478307568.Spec : Prop :=
  ∀ n, P7035077424478307568.a n = A112591 (n + 1)

end A112591

/-! ## A112591.P615655746592966077

`xor(A067747(2*n+1), A073920(A067747(2*(n+1))))`
-/

namespace A112591.P615655746592966077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067747 (2 * n + 1)) (A073920 (A067747 (2 * (n + 1))).toNat)

end

end A112591.P615655746592966077

namespace A112591

/-- `xor(A067747(2*n+1), A073920(A067747(2*(n+1))))` -/
def P615655746592966077.Spec : Prop :=
  ∀ n, P615655746592966077.a n = A112591 (n + 1)

end A112591

/-!
# A112592: Triangle where a(1,1) = 0, a(n,m) = number of terms of row (n-1) which are coprime to m.

The programs for A112592, there is no canonical definition to state claims against.
-/

/-! ## A112592.P12800416309420006800

`A160093(A001970(n+1))-A204459(n)`
-/

namespace A112592.P12800416309420006800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A001970 (n + 1)).toNat - A204459 n

end

end A112592.P12800416309420006800

/-! ## A112592.P11537536361756324936

`A001222(or(A128042(n+3), A292216(n)))`
-/

namespace A112592.P11537536361756324936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A128042 (n + 3)) (A292216 n)).toNat

end

end A112592.P11537536361756324936

/-! ## A112592.P4035525582415227343

`A196564(A002417(n+1)-A260003(n+1))`
-/

namespace A112592.P4035525582415227343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A002417 (n + 1) - A260003 (n + 1)).toNat

end

end A112592.P4035525582415227343

/-! ## A112592.P11684920170890696487

`A037888(A127002(n+1)+A090698(n+1))`
-/

namespace A112592.P11684920170890696487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (A127002 (n + 1) + A090698 (n + 1)).toNat

end

end A112592.P11684920170890696487

/-!
# A112594: Natural function used for generating x^2 and sqrt(x) only using iteration and Q(x) (the characteristic function of sqrt).

The programs for A112594, the canonical program `A112594.P8927385987181911973` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112594 has offset 0).

The definition of A112594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112594.P8927385987181911973

`n+2*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112594

/-- `n+2*floor(sqrt(n))` -/
def P8927385987181911973.Spec : Prop :=
  ∀ n, (P8927385987181911973.a n : ℤ) = A112594 n

theorem P8927385987181911973.correct : P8927385987181911973.Spec := by
  intro n
  simp only [A112594]

end A112594

/-! ## A112594.P9495027032102257060

`comp[∑[gcd(n, n%2)]-2]`
-/

namespace A112594.P9495027032102257060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A112594.P9495027032102257060

namespace A112594

/-- `comp[∑[gcd(n, n%2)]-2]` -/
def P9495027032102257060.Spec : Prop :=
  ∀ n, (P9495027032102257060.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P5168731727605945714

`comp[∑[C(xor(1, n), n)]+n]`
-/

namespace A112594.P5168731727605945714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A112594.P5168731727605945714

namespace A112594

/-- `comp[∑[C(xor(1, n), n)]+n]` -/
def P5168731727605945714.Spec : Prop :=
  ∀ n, (P5168731727605945714.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P16941407069166831119

`comp[∑[char[lcm(2, n)]]²+n]`
-/

namespace A112594.P16941407069166831119
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A112594.P16941407069166831119

namespace A112594

/-- `comp[∑[char[lcm(2, n)]]²+n]` -/
def P16941407069166831119.Spec : Prop :=
  ∀ n, (P16941407069166831119.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P2990540240730534714

`comp[∑[(n+1)%2]²+n]`
-/

namespace A112594.P2990540240730534714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A112594.P2990540240730534714

namespace A112594

/-- `comp[∑[(n+1)%2]²+n]` -/
def P2990540240730534714.Spec : Prop :=
  ∀ n, (P2990540240730534714.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P4048250608176091607

`comp[∑[and(1, n+1)]²+n]`
-/

namespace A112594.P4048250608176091607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A112594.P4048250608176091607

namespace A112594

/-- `comp[∑[and(1, n+1)]²+n]` -/
def P4048250608176091607.Spec : Prop :=
  ∀ n, (P4048250608176091607.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P15816124329461503363

`∑[xor(1, A000122(n))]`
-/

namespace A112594.P15816124329461503363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000122 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112594.P15816124329461503363

namespace A112594

/-- `∑[xor(1, A000122(n))]` -/
def P15816124329461503363.Spec : Prop :=
  ∀ n, P15816124329461503363.a n = A112594 n

end A112594

/-! ## A112594.P16023539240587017777

`comp[∑[A134082(n)]-2]`
-/

namespace A112594.P16023539240587017777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A112594.P16023539240587017777

namespace A112594

/-- `comp[∑[A134082(n)]-2]` -/
def P16023539240587017777.Spec : Prop :=
  ∀ n, (P16023539240587017777.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P12397295633216088319

`comp[A008619(n)²+n]`
-/

namespace A112594.P12397295633216088319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A112594.P12397295633216088319

namespace A112594

/-- `comp[A008619(n)²+n]` -/
def P12397295633216088319.Spec : Prop :=
  ∀ n, (P12397295633216088319.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P1118998290327208625

`eq[1, A267776(n)]`
-/

namespace A112594.P1118998290327208625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267776 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112594.P1118998290327208625

namespace A112594

/-- `eq[1, A267776(n)]` -/
def P1118998290327208625.Spec : Prop :=
  ∀ n, (P1118998290327208625.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P12301257418995524805

`eq[A267919(n), A267922(n)]`
-/

namespace A112594.P12301257418995524805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112594.P12301257418995524805

namespace A112594

/-- `eq[A267919(n), A267922(n)]` -/
def P12301257418995524805.Spec : Prop :=
  ∀ n, (P12301257418995524805.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P4329948135240762932

`eq[0, A267006(n+1)]`
-/

namespace A112594.P4329948135240762932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112594.P4329948135240762932

namespace A112594

/-- `eq[0, A267006(n+1)]` -/
def P4329948135240762932.Spec : Prop :=
  ∀ n, (P4329948135240762932.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P3690940168427264186

`eq[A267922(n), A352080(n+2)]`
-/

namespace A112594.P3690940168427264186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352080 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112594.P3690940168427264186

namespace A112594

/-- `eq[A267922(n), A352080(n+2)]` -/
def P3690940168427264186.Spec : Prop :=
  ∀ n, (P3690940168427264186.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P9970387417109130943

`eq[0, A266298(n+3)]`
-/

namespace A112594.P9970387417109130943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112594.P9970387417109130943

namespace A112594

/-- `eq[0, A266298(n+3)]` -/
def P9970387417109130943.Spec : Prop :=
  ∀ n, (P9970387417109130943.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P18437662968627809777

`lt[1, A092488(n+2)]`
-/

namespace A112594.P18437662968627809777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092488 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112594.P18437662968627809777

namespace A112594

/-- `lt[1, A092488(n+2)]` -/
def P18437662968627809777.Spec : Prop :=
  ∀ n, (P18437662968627809777.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P8352841089949716807

`filter[A092942(n), A267776(#)]`
-/

namespace A112594.P8352841089949716807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267776 (f1 j).toNat = 1) n)

end

end A112594.P8352841089949716807

namespace A112594

/-- `filter[A092942(n), A267776(#)]` -/
def P8352841089949716807.Spec : Prop :=
  ∀ n, P8352841089949716807.a n = A112594 n

end A112594

/-! ## A112594.P18084958702963265676

`comp[n-A297191(n+1)]`
-/

namespace A112594.P18084958702963265676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A297191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A112594.P18084958702963265676

namespace A112594

/-- `comp[n-A297191(n+1)]` -/
def P18084958702963265676.Spec : Prop :=
  ∀ n, (P18084958702963265676.a n : ℤ) = A112594 n

end A112594

/-! ## A112594.P1343310217739407466

`filter[A179820(2*n), A267776(#)]`
-/

namespace A112594.P1343310217739407466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267776 (f1 j).toNat = 1) n)

end

end A112594.P1343310217739407466

namespace A112594

/-- `filter[A179820(2*n), A267776(#)]` -/
def P1343310217739407466.Spec : Prop :=
  ∀ n, P1343310217739407466.a n = A112594 n

end A112594

/-! ## A112594.P12774774452362873478

`filter[A267530(2*n), A267776(#)]`
-/

namespace A112594.P12774774452362873478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267530 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267776 (f1 j).toNat = 1) n)

end

end A112594.P12774774452362873478

namespace A112594

/-- `filter[A267530(2*n), A267776(#)]` -/
def P12774774452362873478.Spec : Prop :=
  ∀ n, P12774774452362873478.a n = A112594 n

end A112594

/-! ## A112594.P14306008294567425686

`filter[A249037(2*n+1), A267776(#)]`
-/

namespace A112594.P14306008294567425686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249037 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267776 (f1 j).toNat = 1) n)

end

end A112594.P14306008294567425686

namespace A112594

/-- `filter[A249037(2*n+1), A267776(#)]` -/
def P14306008294567425686.Spec : Prop :=
  ∀ n, P14306008294567425686.a n = A112594 n

end A112594

/-!
# A112595: Sequence of numerators of the continued fraction derived from the sequence of the number of distinct factors of a number (A001221, also called omega(n)).

The programs for A112595, there is no canonical definition to state claims against.
-/

/-! ## A112595.P17967010808749202222

`a(n-2)+a(n-1)*A001221(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A112595.P17967010808749202222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A001221 (n + 1)

end

end A112595.P17967010808749202222

/-! ## A112595.P12333612870473555938

`a(n-2)+a(n-1)*A318369(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A112595.P12333612870473555938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A318369 (n + 1)

end

end A112595.P12333612870473555938

/-! ## A112595.P6715432943816773429

`a(n-2)+a(n-1)*A345926(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A112595.P6715432943816773429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A345926 (n + 1)

end

end A112595.P6715432943816773429

/-!
# A112596: Sequence of denominators of the continued fraction derived from the sequence of the numbers of distinct factors of a number (A001221, also called omega(n)).

The programs for A112596, there is no canonical definition to state claims against.
-/

/-! ## A112596.P16721897951894803575

`a(n-2)+a(n-1)*A001221(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A112596.P16721897951894803575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A001221 (n + 1)

end

end A112596.P16721897951894803575

/-! ## A112596.P17357940342268877870

`a(n-2)+a(n-1)*A318369(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A112596.P17357940342268877870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A318369 (n + 1)

end

end A112596.P17357940342268877870

/-! ## A112596.P4387374757835641491

`a(n-2)+a(n-1)*A345926(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A112596.P4387374757835641491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A345926 (n + 1)

end

end A112596.P4387374757835641491

/-! ## A112596.P16155479699009407496

`A093873(∑[∏[A034444(n+1)]])`
-/

namespace A112596.P16155479699009407496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112596.P16155479699009407496

/-! ## A112596.P16737980404714379884

`A093873(∑[∏[A228849(n+1)]])`
-/

namespace A112596.P16737980404714379884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228849 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112596.P16737980404714379884

