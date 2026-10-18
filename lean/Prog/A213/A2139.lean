import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A213900: The minimum number of 11's in the relation n*[n,11,11,...,11,n] = [x,...,x] between simple terminating continued fractions.

The programs for A213900, there is no canonical definition to state claims against.
-/

/-! ## A213900.P8732170707569663290

`and(A198277(A269376(n+1)), A213648(n+2))`
-/

namespace A213900.P8732170707569663290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198277 (A269376 (n + 1)).toNat) (A213648 (n + 2))

end

end A213900.P8732170707569663290

/-! ## A213900.P7936304041000081534

`and(A001177(n+2)-1, A198277(A269376(n+1)))`
-/

namespace A213900.P7936304041000081534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001177 (n + 2) - 1) (A198277 (A269376 (n + 1)).toNat)

end

end A213900.P7936304041000081534

/-! ## A213900.P3683643221596666947

`gcd(A213648(n+2), A365550(A247464(2*(n+1))))`
-/

namespace A213900.P3683643221596666947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213648 (n + 2)) (A365550 (A247464 (2 * (n + 1))).toNat)

end

end A213900.P3683643221596666947

/-! ## A213900.P15601030569691544372

`A213648(n+2)%A338738(A325784(2*(n+2)))`
-/

namespace A213900.P15601030569691544372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213648 (n + 2)) (A338738 (A325784 (2 * (n + 2))).toNat)

end

end A213900.P15601030569691544372

/-! ## A213900.P10701470790130089076

`A213648(n+2)%A000290(A189398(n+1))`
-/

namespace A213900.P10701470790130089076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213648 (n + 2)) (A000290 (A189398 (n + 1)).toNat)

end

end A213900.P10701470790130089076

/-!
# A213901: Fixed points of a sequence that gives the minimum length of a chain of 1,2,1,2,1,... so that the equation n*[n,1,2,1,...,n] = [x,...,y] between terminating continued fractions has a solution with x >= n^2 and y >= n^2.

The programs for A213901, there is no canonical definition to state claims against.
-/

/-! ## A213901.P17242414814855648740

`A118751(xor(A191128(n+1), A270832(n+1)))`
-/

namespace A213901.P17242414814855648740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (Int.xor (A191128 (n + 1)) (A270832 (n + 1))).toNat

end

end A213901.P17242414814855648740

/-! ## A213901.P7898382410596209820

`A128824(A290592(n+1))`
-/

namespace A213901.P7898382410596209820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128824 (A290592 (n + 1)).toNat

end

end A213901.P7898382410596209820

/-!
# A213902: Number of integers of the form 6*k+1 and 6*k-1 between prime(n) and prime(n+1).

The programs for A213902, the canonical program `A213902.P8697298374266597207` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213902 has offset 1).

The definition of A213902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213902.P8697298374266597207

`A004523(A100820(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213902

/-- `A004523(A100820(n+1))` -/
def P8697298374266597207.Spec : Prop :=
  ∀ n, P8697298374266597207.a n = A213902 (n + 1)

theorem P8697298374266597207.correct : P8697298374266597207.Spec := by
  intro n
  simp only [A213902, Nat.add_sub_cancel]

end A213902

/-! ## A213902.P10710222830530985976

`A063276(A001223(n+1)+2)`
-/

namespace A213902.P10710222830530985976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063276 (A001223 (n + 1) + 2).toNat

end

end A213902.P10710222830530985976

namespace A213902

/-- `A063276(A001223(n+1)+2)` -/
def P10710222830530985976.Spec : Prop :=
  ∀ n, P10710222830530985976.a n = A213902 (n + 1)

end A213902

/-! ## A213902.P14176653165722853096

`A063276(Δ[A000040(n+1)]+2)`
-/

namespace A213902.P14176653165722853096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063276 (f1 (n + 1) - f1 n + 2).toNat

end

end A213902.P14176653165722853096

namespace A213902

/-- `A063276(Δ[A000040(n+1)]+2)` -/
def P14176653165722853096.Spec : Prop :=
  ∀ n, P14176653165722853096.a n = A213902 (n + 1)

end A213902

/-! ## A213902.P14226509481324265741

`A004523(Δ[A111333(n+1)]-1)`
-/

namespace A213902.P14226509481324265741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (f1 (n + 1) - f1 n - 1).toNat

end

end A213902.P14226509481324265741

namespace A213902

/-- `A004523(Δ[A111333(n+1)]-1)` -/
def P14226509481324265741.Spec : Prop :=
  ∀ n, P14226509481324265741.a n = A213902 (n + 1)

end A213902

/-! ## A213902.P7769514621539969096

`A123108(Δ[A323703(n+1)])-1`
-/

namespace A213902.P7769514621539969096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (n + 1) - f1 n).toNat - 1

end

end A213902.P7769514621539969096

namespace A213902

/-- `A123108(Δ[A323703(n+1)])-1` -/
def P7769514621539969096.Spec : Prop :=
  ∀ n, P7769514621539969096.a n = A213902 (n + 1)

end A213902

/-! ## A213902.P136624076079345900

`A002264(Δ[A055670(n+1)]-2)`
-/

namespace A213902.P136624076079345900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n - 2).toNat

end

end A213902.P136624076079345900

namespace A213902

/-- `A002264(Δ[A055670(n+1)]-2)` -/
def P136624076079345900.Spec : Prop :=
  ∀ n, P136624076079345900.a n = A213902 (n + 1)

end A213902

/-! ## A213902.P14494564057949441138

`A051274(Δ[A000040(n+1)]+1)-1`
-/

namespace A213902.P14494564057949441138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A213902.P14494564057949441138

namespace A213902

/-- `A051274(Δ[A000040(n+1)]+1)-1` -/
def P14494564057949441138.Spec : Prop :=
  ∀ n, P14494564057949441138.a n = A213902 (n + 1)

end A213902

/-! ## A213902.P8254369700884082304

`A002264(Δ[A093515(2*n+1)]-2)`
-/

namespace A213902.P8254369700884082304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n - 2).toNat

end

end A213902.P8254369700884082304

namespace A213902

/-- `A002264(Δ[A093515(2*n+1)]-2)` -/
def P8254369700884082304.Spec : Prop :=
  ∀ n, P8254369700884082304.a n = A213902 (n + 1)

end A213902

/-!
# A213903: Least number x such that there are n numbers of the form 6k-1 or 6k+1 between prime(x) and prime(x+1).

The programs for A213903, there is no canonical definition to state claims against.
-/

/-! ## A213903.P12517271600295652233

`A192176(eq[A080584(n), A244135(n)])`
-/

namespace A213903.P12517271600295652233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192176 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A213903.P12517271600295652233

/-!
# A213905: G.f. satisfies: A(x) = x^2 + x^3 + A(A(x)).

The programs for A213905, there is no canonical definition to state claims against.
-/

/-! ## A213905.P13831155269371050191

`A247832(A151381(n))`
-/

namespace A213905.P13831155269371050191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A151381 n).toNat

end

end A213905.P13831155269371050191

/-! ## A213905.P6953251615133297891

`A058386(A147770(n)+1+n)`
-/

namespace A213905.P6953251615133297891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (A147770 n + 1 + (n : ℤ)).toNat

end

end A213905.P6953251615133297891

/-! ## A213905.P5331450616183272124

`A058386(n+1)+A000007(A062399(n))`
-/

namespace A213905.P5331450616183272124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (n + 1) + A000007 (A062399 n).toNat

end

end A213905.P5331450616183272124

/-! ## A213905.P16380633017324360608

`A058386(A062399(n)+A100910(n)+1)`
-/

namespace A213905.P16380633017324360608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058386 (A062399 n + (A100910 n + 1)).toNat

end

end A213905.P16380633017324360608

/-! ## A213905.P835620747556183519

`C(A058385(n+1), A117054(A002061(n)))`
-/

namespace A213905.P835620747556183519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A058385 (n + 1)).toNat (A117054 (A002061 n).toNat).toNat

end

end A213905.P835620747556183519

/-!
# A213906: G.f. satisfies: A(x) = x^2/(1-x) + A(A(x)).

The programs for A213906, there is no canonical definition to state claims against.
-/

/-! ## A213906.P12886362444405568419

`A113822(n)+A069849(A069853(n))`
-/

namespace A213906.P12886362444405568419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113822 n + A069849 (A069853 n).toNat

end

end A213906.P12886362444405568419

/-! ## A213906.P326819558791949496

`A113822(n)+A100910(A149196(n))`
-/

namespace A213906.P326819558791949496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113822 n + A100910 (A149196 n).toNat

end

end A213906.P326819558791949496

/-! ## A213906.P18299107588572048361

`A113822(n)+A055641(A213907(n))`
-/

namespace A213906.P18299107588572048361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113822 n + A055641 (A213907 n).toNat

end

end A213906.P18299107588572048361

/-! ## A213906.P8291113216111358304

`A113822(n)+A102683(A205801(n))`
-/

namespace A213906.P8291113216111358304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113822 n + A102683 (A205801 n).toNat

end

end A213906.P8291113216111358304

/-!
# A213908: Minimal number of terms in the series 1/n + 1/(n+1) + 1/(n+2) + ... to obtain a sum >= 1.

The programs for A213908, the canonical program `A213908.P5623755903322932494` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213908 has offset 1).

The definition of A213908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213908.P5623755903322932494

`A103762(n+1)-n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213908

/-- `A103762(n+1)-n` -/
def P5623755903322932494.Spec : Prop :=
  ∀ n, P5623755903322932494.a n = A213908 (n + 1)

theorem P5623755903322932494.correct : P5623755903322932494.Spec := by
  intro n
  simp only [A213908, Nat.add_sub_cancel]

end A213908

/-! ## A213908.P692701823901988041

`A065475(A136617(n+1))`
-/

namespace A213908.P692701823901988041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A136617 (n + 1)).toNat

end

end A213908.P692701823901988041

namespace A213908

/-- `A065475(A136617(n+1))` -/
def P692701823901988041.Spec : Prop :=
  ∀ n, P692701823901988041.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P11345054275482106123

`A184985(A136617(n+1)+1)`
-/

namespace A213908.P11345054275482106123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A136617 (n + 1) + 1).toNat

end

end A213908.P11345054275482106123

namespace A213908

/-- `A184985(A136617(n+1)+1)` -/
def P11345054275482106123.Spec : Prop :=
  ∀ n, P11345054275482106123.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P17860260017588861220

`A136617(n+1)+A057427(n)`
-/

namespace A213908.P17860260017588861220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + A057427 n

end

end A213908.P17860260017588861220

namespace A213908

/-- `A136617(n+1)+A057427(n)` -/
def P17860260017588861220.Spec : Prop :=
  ∀ n, P17860260017588861220.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P17428504294843576553

`A136617(n+1)-A057428(n)`
-/

namespace A213908.P17428504294843576553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) - A057428 n

end

end A213908.P17428504294843576553

namespace A213908

/-- `A136617(n+1)-A057428(n)` -/
def P17428504294843576553.Spec : Prop :=
  ∀ n, P17428504294843576553.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P987997510295920317

`A136617(n+1)%A008574(n)+1`
-/

namespace A213908.P987997510295920317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136617 (n + 1)) (A008574 n) + 1

end

end A213908.P987997510295920317

namespace A213908

/-- `A136617(n+1)%A008574(n)+1` -/
def P987997510295920317.Spec : Prop :=
  ∀ n, P987997510295920317.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P16081729501129615027

`A136617(n+1)+char[A055120(n+1)]`
-/

namespace A213908.P16081729501129615027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A213908.P16081729501129615027

namespace A213908

/-- `A136617(n+1)+char[A055120(n+1)]` -/
def P16081729501129615027.Spec : Prop :=
  ∀ n, P16081729501129615027.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P12338026578666062610

`A136617(n+1)+A000040(n+1)%2`
-/

namespace A213908.P12338026578666062610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A213908.P12338026578666062610

namespace A213908

/-- `A136617(n+1)+A000040(n+1)%2` -/
def P12338026578666062610.Spec : Prop :=
  ∀ n, P12338026578666062610.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P8804616801120273286

`A136617(n+1)+(A004277(n)+1)%2`
-/

namespace A213908.P8804616801120273286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136617 (n + 1) + Int.tmod (A004277 n + 1) 2

end

end A213908.P8804616801120273286

namespace A213908

/-- `A136617(n+1)+(A004277(n)+1)%2` -/
def P8804616801120273286.Spec : Prop :=
  ∀ n, P8804616801120273286.a n = A213908 (n + 1)

end A213908

/-! ## A213908.P2618619561314433584

`A136617(n+1)+and(1, A017305(a(n-1)))` with `a(0)=1`
-/

namespace A213908.P2618619561314433584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136617 (n + 1) + Int.land 1 (A017305 (a (n - 1)).toNat)

end

end A213908.P2618619561314433584

namespace A213908

/-- `A136617(n+1)+and(1, A017305(a(n-1)))` -/
def P2618619561314433584.Spec : Prop :=
  ∀ n, P2618619561314433584.a n = A213908 (n + 1)

end A213908

/-!
# A213909: Sum of all even numbers in Collatz (3x+1) trajectory of n.

The programs for A213909, there is no canonical definition to state claims against.
-/

/-! ## A213909.P16441196571034592362

`2*(A285098(n+1)-(n+1))`
-/

namespace A213909.P16441196571034592362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285098 (n + 1) - (n + 1 : ℤ))

end

end A213909.P16441196571034592362

/-! ## A213909.P1733491022345783979

`A213917(n+1)+A213916(n+1)`
-/

namespace A213909.P1733491022345783979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (n + 1) + A213916 (n + 1)

end

end A213909.P1733491022345783979

/-! ## A213909.P17243439816005379417

`A033493(n+1)-A213916(n+1)`
-/

namespace A213909.P17243439816005379417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A213916 (n + 1)

end

end A213909.P17243439816005379417

/-! ## A213909.P17895754962624764693

`(A213917(n+1)+A033493(n+1))/2`
-/

namespace A213909.P17895754962624764693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213917 (n + 1) + A033493 (n + 1) : ℚ) / 2

end

end A213909.P17895754962624764693

/-! ## A213909.P10319085649067155906

`A270814(2*(n+1))-A213916(n+1)`
-/

namespace A213909.P10319085649067155906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (2 * (n + 1)) - A213916 (n + 1)

end

end A213909.P10319085649067155906

/-! ## A213909.P9999142969293067626

`2*A265946(2*(n+1))`
-/

namespace A213909.P9999142969293067626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265946 (2 * (n + 1))

end

end A213909.P9999142969293067626

/-! ## A213909.P3157599933446963418

`A213917(n+1)+A014682(A033493(n+1)-A213917(n+1))`
-/

namespace A213909.P3157599933446963418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (n + 1) + A014682 (A033493 (n + 1) - A213917 (n + 1)).toNat

end

end A213909.P3157599933446963418

/-!
# A213911: Number of runs of consecutive zeros in the Zeckendorf (binary) representation of n.

The programs for A213911, the canonical program `A213911.P10704289243874186372` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213911 has offset 0).

The definition of A213911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213911.P10704289243874186372

`A007895(n)-A003849(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213911

/-- `A007895(n)-A003849(n)` -/
def P10704289243874186372.Spec : Prop :=
  ∀ n, P10704289243874186372.a n = A213911 n

theorem P10704289243874186372.correct : P10704289243874186372.Spec := by
  intro n
  simp only [A213911]

end A213911

/-! ## A213911.P12635679855191433613

`A104324(n)-A007895(n)`
-/

namespace A213911.P12635679855191433613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n - A007895 n

end

end A213911.P12635679855191433613

namespace A213911

/-- `A104324(n)-A007895(n)` -/
def P12635679855191433613.Spec : Prop :=
  ∀ n, P12635679855191433613.a n = A213911 n

end A213911

/-! ## A213911.P6087269922243913725

`A004526(A104324(n))`
-/

namespace A213911.P6087269922243913725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A104324 n).toNat

end

end A213911.P6087269922243913725

namespace A213911

/-- `A004526(A104324(n))` -/
def P6087269922243913725.Spec : Prop :=
  ∀ n, P6087269922243913725.a n = A213911 n

end A213911

/-! ## A213911.P4261449013342071602

`A007895(A319433(n))`
-/

namespace A213911.P4261449013342071602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A319433 n).toNat

end

end A213911.P4261449013342071602

namespace A213911

/-- `A007895(A319433(n))` -/
def P4261449013342071602.Spec : Prop :=
  ∀ n, P4261449013342071602.a n = A213911 n

end A213911

/-! ## A213911.P201256771714153080

`A007895(A193564(n+1))`
-/

namespace A213911.P201256771714153080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A193564 (n + 1)).toNat

end

end A213911.P201256771714153080

namespace A213911

/-- `A007895(A193564(n+1))` -/
def P201256771714153080.Spec : Prop :=
  ∀ n, P201256771714153080.a n = A213911 n

end A213911

/-! ## A213911.P14521159716168293115

`A058065(n)-A219640(n)`
-/

namespace A213911.P14521159716168293115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n - A219640 n

end

end A213911.P14521159716168293115

namespace A213911

/-- `A058065(n)-A219640(n)` -/
def P14521159716168293115.Spec : Prop :=
  ∀ n, P14521159716168293115.a n = A213911 n

end A213911

/-! ## A213911.P10091044783844172780

`A102364(n)-A212278(n)`
-/

namespace A213911.P10091044783844172780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 n - A212278 n

end

end A213911.P10091044783844172780

namespace A213911

/-- `A102364(n)-A212278(n)` -/
def P10091044783844172780.Spec : Prop :=
  ∀ n, P10091044783844172780.a n = A213911 n

end A213911

/-! ## A213911.P11639546516679888623

`A007895(A005206(n+1)-1)`
-/

namespace A213911.P11639546516679888623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A005206 (n + 1) - 1).toNat

end

end A213911.P11639546516679888623

namespace A213911

/-- `A007895(A005206(n+1)-1)` -/
def P11639546516679888623.Spec : Prop :=
  ∀ n, P11639546516679888623.a n = A213911 n

end A213911

/-! ## A213911.P15009343763577942510

`A034888(A104324(n)+1)-1`
-/

namespace A213911.P15009343763577942510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A104324 n + 1).toNat - 1

end

end A213911.P15009343763577942510

namespace A213911

/-- `A034888(A104324(n)+1)-1` -/
def P15009343763577942510.Spec : Prop :=
  ∀ n, P15009343763577942510.a n = A213911 n

end A213911

/-! ## A213911.P10547260892381162316

`A065033(A104324(n)+1)-1`
-/

namespace A213911.P10547260892381162316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A104324 n + 1).toNat - 1

end

end A213911.P10547260892381162316

namespace A213911

/-- `A065033(A104324(n)+1)-1` -/
def P10547260892381162316.Spec : Prop :=
  ∀ n, P10547260892381162316.a n = A213911 n

end A213911

/-! ## A213911.P12701564977810478944

`A110654(A104324(n)+1)-1`
-/

namespace A213911.P12701564977810478944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A104324 n + 1).toNat - 1

end

end A213911.P12701564977810478944

namespace A213911

/-- `A110654(A104324(n)+1)-1` -/
def P12701564977810478944.Spec : Prop :=
  ∀ n, P12701564977810478944.a n = A213911 n

end A213911

/-! ## A213911.P4589908299640704434

`A080513(A104324(n)+1)-2`
-/

namespace A213911.P4589908299640704434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A104324 n + 1).toNat - 2

end

end A213911.P4589908299640704434

namespace A213911

/-- `A080513(A104324(n)+1)-2` -/
def P4589908299640704434.Spec : Prop :=
  ∀ n, P4589908299640704434.a n = A213911 n

end A213911

/-! ## A213911.P17130827883240313375

`A007895(n-A005614(n+1))`
-/

namespace A213911.P17130827883240313375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((n : ℤ) - A005614 (n + 1)).toNat

end

end A213911.P17130827883240313375

namespace A213911

/-- `A007895(n-A005614(n+1))` -/
def P17130827883240313375.Spec : Prop :=
  ∀ n, P17130827883240313375.a n = A213911 n

end A213911

/-! ## A213911.P18340188772041131968

`A143299(n+1)-A003842(n)`
-/

namespace A213911.P18340188772041131968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1) - A003842 n

end

end A213911.P18340188772041131968

namespace A213911

/-- `A143299(n+1)-A003842(n)` -/
def P18340188772041131968.Spec : Prop :=
  ∀ n, P18340188772041131968.a n = A213911 n

end A213911

/-! ## A213911.P3588394386581317941

`A007895(n-(1-A005614(n)))`
-/

namespace A213911.P3588394386581317941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((n : ℤ) - (1 - A005614 n)).toNat

end

end A213911.P3588394386581317941

namespace A213911

/-- `A007895(n-(1-A005614(n)))` -/
def P3588394386581317941.Spec : Prop :=
  ∀ n, P3588394386581317941.a n = A213911 n

end A213911

/-! ## A213911.P11023673880604750817

`A007895(n)+A014675(n)-2`
-/

namespace A213911.P11023673880604750817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + (A014675 n - 2)

end

end A213911.P11023673880604750817

namespace A213911

/-- `A007895(n)+A014675(n)-2` -/
def P11023673880604750817.Spec : Prop :=
  ∀ n, P11023673880604750817.a n = A213911 n

end A213911

/-! ## A213911.P14508619259404785339

`A104324(n)+A219641(n)-n`
-/

namespace A213911.P14508619259404785339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n + (A219641 n - (n : ℤ))

end

end A213911.P14508619259404785339

namespace A213911

/-- `A104324(n)+A219641(n)-n` -/
def P14508619259404785339.Spec : Prop :=
  ∀ n, P14508619259404785339.a n = A213911 n

end A213911

/-! ## A213911.P13931835733243014010

`A104324(n)-∑{digits}[A014417(n), #]`
-/

namespace A213911.P13931835733243014010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104324 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A213911.P13931835733243014010

namespace A213911

/-- `A104324(n)-∑{digits}[A014417(n), #]` -/
def P13931835733243014010.Spec : Prop :=
  ∀ n, P13931835733243014010.a n = A213911 n

end A213911

/-! ## A213911.P7845018845084129453

`A007895(A026273(n+1)-(n+1))`
-/

namespace A213911.P7845018845084129453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A026273 (n + 1) - (n + 1 : ℤ)).toNat

end

end A213911.P7845018845084129453

namespace A213911

/-- `A007895(A026273(n+1)-(n+1))` -/
def P7845018845084129453.Spec : Prop :=
  ∀ n, P7845018845084129453.a n = A213911 n

end A213911

/-! ## A213911.P14529800445161861557

`A287659(n+1)-A288625(n+1)`
-/

namespace A213911.P14529800445161861557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287659 (n + 1) - A288625 (n + 1)

end

end A213911.P14529800445161861557

namespace A213911

/-- `A287659(n+1)-A288625(n+1)` -/
def P14529800445161861557.Spec : Prop :=
  ∀ n, P14529800445161861557.a n = A213911 n

end A213911

/-!
# A213916: Sum of all odd numbers in Collatz (3x+1) trajectory of n.

The programs for A213916, there is no canonical definition to state claims against.
-/

/-! ## A213916.P14571680469190725545

`A033493(n+1)-A213909(n+1)`
-/

namespace A213916.P14571680469190725545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - A213909 (n + 1)

end

end A213916.P14571680469190725545

/-! ## A213916.P3548799319878343748

`A213909(n+1)-A213917(n+1)`
-/

namespace A213916.P3548799319878343748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213909 (n + 1) - A213917 (n + 1)

end

end A213916.P3548799319878343748

/-! ## A213916.P3113419558129251062

`(A033493(n+1)-A213917(n+1))/2`
-/

namespace A213916.P3113419558129251062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033493 (n + 1) - A213917 (n + 1) : ℚ) / 2

end

end A213916.P3113419558129251062

/-! ## A213916.P1456652517621281841

`A049074(2*(n+1))-A213909(2*(n+1))`
-/

namespace A213916.P1456652517621281841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049074 (2 * (n + 1)) - A213909 (2 * (n + 1))

end

end A213916.P1456652517621281841

/-! ## A213916.P4339122308041525592

`A033493(4*(n+1))%A285098(2*(n+1))`
-/

namespace A213916.P4339122308041525592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033493 (4 * (n + 1))) (A285098 (2 * (n + 1)))

end

end A213916.P4339122308041525592

/-! ## A213916.P16470491923486638483

`A014682(A033493(n+1)-A213917(n+1))`
-/

namespace A213916.P16470491923486638483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A033493 (n + 1) - A213917 (n + 1)).toNat

end

end A213916.P16470491923486638483

/-!
# A213917: Difference between sum of all even and the sum of all odd numbers in Collatz (3x+1) trajectory of n.

The programs for A213917, there is no canonical definition to state claims against.
-/

/-! ## A213917.P5723538777126436641

`A213909(n+1)-A213916(n+1)`
-/

namespace A213917.P5723538777126436641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213909 (n + 1) - A213916 (n + 1)

end

end A213917.P5723538777126436641

/-! ## A213917.P6273067325404611171

`2*A213909(n+1)-A033493(n+1)`
-/

namespace A213917.P6273067325404611171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213909 (n + 1) - A033493 (n + 1)

end

end A213917.P6273067325404611171

/-! ## A213917.P3847311950978159053

`A033493(n+1)-2*A213916(n+1)`
-/

namespace A213917.P3847311950978159053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - 2 * A213916 (n + 1)

end

end A213917.P3847311950978159053

/-! ## A213917.P4732444569276438521

`2*A213909(n+1)-A270814(2*(n+1))`
-/

namespace A213917.P4732444569276438521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213909 (n + 1) - A270814 (2 * (n + 1))

end

end A213917.P4732444569276438521

/-! ## A213917.P17660435766119346855

`A270814(2*(n+1))-2*A213916(n+1)`
-/

namespace A213917.P17660435766119346855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (2 * (n + 1)) - 2 * A213916 (n + 1)

end

end A213917.P17660435766119346855

/-! ## A213917.P1883188764820926445

`2*A213909(n+1)-A049074(n+1)%A058795(n)`
-/

namespace A213917.P1883188764820926445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213909 (n + 1) - Int.tmod (A049074 (n + 1)) (A058795 n)

end

end A213917.P1883188764820926445

/-! ## A213917.P13314990454293467654

`A213909(n+1)+A198242((-1)^n+4)*A213916(n+1)`
-/

namespace A213917.P13314990454293467654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213909 (n + 1) + A198242 ((-1) ^ n + 4).toNat * A213916 (n + 1)

end

end A213917.P13314990454293467654

/-! ## A213917.P6803689849358749505

`A033493(n+1)-(A213916(n+1)+A213916(A103517(n)))`
-/

namespace A213917.P6803689849358749505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1) - (A213916 (n + 1) + A213916 (A103517 n).toNat)

end

end A213917.P6803689849358749505

/-!
# A213918: a(n) = smallest possible element of a set of n positive integers s_1, s_2, ..., s_n such that for i != j, |s_i - s_j| = gcd(s_i, s_j), where |x| denotes absolute value.

The programs for A213918, there is no canonical definition to state claims against.
-/

/-! ## A213918.P2621642863815195580

`A286601(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A213918.P2621642863815195580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A286601 (a (n - 1) ^ 2).toNat

end

end A213918.P2621642863815195580

/-! ## A213918.P2504404362761297175

`n*A053784(a(n-1))` with `a(0)=1`
-/

namespace A213918.P2504404362761297175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A053784 (a (n - 1)).toNat

end

end A213918.P2504404362761297175

/-!
# A213919: Triangle read by rows: T(n,m) = (n/k)^(k-1), where k is the m-th divisor of n, 1 <= m <= tau(n).

The programs for A213919, there is no canonical definition to state claims against.
-/

/-! ## A213919.P2672672186320174840

`A393397(n+1)/A056538(n+1)`
-/

namespace A213919.P2672672186320174840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A393397 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ)

end

end A213919.P2672672186320174840

/-! ## A213919.P2825294491615886074

`A056538(n+1)^A263730(n+2)`
-/

namespace A213919.P2825294491615886074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℚ) ^ (A263730 (n + 2) : ℤ)

end

end A213919.P2825294491615886074

/-! ## A213919.P1588297596835628434

`abs(A233772(n+1))^A263730(n+2)`
-/

namespace A213919.P1588297596835628434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A233772 (n + 1)| : ℚ) ^ (A263730 (n + 2) : ℤ)

end

end A213919.P1588297596835628434

/-! ## A213919.P13428719406705004533

`A056538(n+1)^(A027750(n+1)-1)`
-/

namespace A213919.P13428719406705004533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℚ) ^ (A027750 (n + 1) - 1 : ℤ)

end

end A213919.P13428719406705004533

/-! ## A213919.P2148893109070559132

`(val(A272919(n+1), 2)+1)^A263730(n+2)`
-/

namespace A213919.P2148893109070559132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A272919 (n + 1)).toNat 2 + 1 : ℚ) ^ (A263730 (n + 2) : ℤ)

end

end A213919.P2148893109070559132

/-! ## A213919.P9055638888427227141

`∑{d}[A233772(n+1), A000010(#)]^A263730(n+2)`
-/

namespace A213919.P9055638888427227141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233772 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d : ℤ) : ℚ) ^ (A263730 (n + 2) : ℤ)

end

end A213919.P9055638888427227141

/-! ## A213919.P7027531229765066303

`A056538(n+1)^(lcm(A020985(n), A233773(n+1))-1)`
-/

namespace A213919.P7027531229765066303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℚ) ^ ((Int.lcm (A020985 n) (A233773 (n + 1)) : ℤ) - 1 : ℤ)

end

end A213919.P7027531229765066303

/-! ## A213919.P1156296068621387771

`A056538(n+1)^(A061017(n+1)/A056538(n+1)-1)`
-/

namespace A213919.P1156296068621387771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℝ) ^ ((A061017 (n + 1) : ℚ) / (A056538 (n + 1) : ℚ) - 1 : ℝ)

end

end A213919.P1156296068621387771

/-! ## A213919.P9357489310469070088

`A126988(record[n%(A126988(n+1)+n)]+1)^A263730(n+2)`
-/

namespace A213919.P9357489310469070088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A126988 (n + 1) + (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126988 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat : ℚ) ^ (A263730 (n + 2) : ℤ)

end

end A213919.P9357489310469070088

/-! ## A213919.P2483770657883357060

`A056538(n+1)^A004905(A027750(n+1))`
-/

namespace A213919.P2483770657883357060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056538 (n + 1) : ℚ) ^ (A004905 (A027750 (n + 1)).toNat : ℤ)

end

end A213919.P2483770657883357060

/-!
# A213920: Number of rooted trees with n nodes such that no more than two subtrees corresponding to children of any node have the same number of nodes.

The programs for A213920, there is no canonical definition to state claims against.
-/

/-! ## A213920.P13103147725396255025

`A318753(∑[n+3])`
-/

namespace A213920.P13103147725396255025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213920.P13103147725396255025

/-! ## A213920.P13645702152177005111

`ceil((2*A318753(A027379(n+1))-1)/2)`
-/

namespace A213920.P13645702152177005111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A318753 (A027379 (n + 1)).toNat - 1 : ℚ) / 2⌉

end

end A213920.P13645702152177005111

/-! ## A213920.P11702288530991458455

`A057427(n)*A318753(A027379(n+1))`
-/

namespace A213920.P11702288530991458455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A318753 (A027379 (n + 1)).toNat

end

end A213920.P11702288530991458455

/-! ## A213920.P4780836994433053700

`A054977(n)*A318753(A055998(n+1))`
-/

namespace A213920.P4780836994433053700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A318753 (A055998 (n + 1)).toNat

end

end A213920.P4780836994433053700

/-! ## A213920.P15363089765757788639

`A057427(n)*A318753(A055998(n+1))`
-/

namespace A213920.P15363089765757788639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A318753 (A055998 (n + 1)).toNat

end

end A213920.P15363089765757788639

/-! ## A213920.P17055695084754770656

`A318753(A055998(n+1))%A000244(n)`
-/

namespace A213920.P17055695084754770656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318753 (A055998 (n + 1)).toNat) (A000244 n)

end

end A213920.P17055695084754770656

/-! ## A213920.P8916602634652400534

`A318753(A027379(n+1))%A126285(n)`
-/

namespace A213920.P8916602634652400534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318753 (A027379 (n + 1)).toNat) (A126285 n)

end

end A213920.P8916602634652400534

/-! ## A213920.P10938744963670307683

`and(A057428(n), A318753(A027379(n+1)))`
-/

namespace A213920.P10938744963670307683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A318753 (A027379 (n + 1)).toNat)

end

end A213920.P10938744963670307683

/-! ## A213920.P6082692820027186153

`and(A057428(n), A318753(A055998(n+1)))`
-/

namespace A213920.P6082692820027186153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A318753 (A055998 (n + 1)).toNat)

end

end A213920.P6082692820027186153

/-! ## A213920.P4829925888987560496

`A318753(A027379(n+1))+A000007(n+1)`
-/

namespace A213920.P4829925888987560496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A213920.P4829925888987560496

/-! ## A213920.P4921666173455888308

`A318753(A055998(n+1))+A000007(n+1)`
-/

namespace A213920.P4921666173455888308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A213920.P4921666173455888308

/-!
# A213922: Natural numbers placed in table T(n,k) layer by layer. The order of placement: T(n,n), T(n-1,n), T(n,n-1), ... T(1,n), T(n,1). Table T(n,k) read by antidiagonals.

The programs for A213922, the canonical program `A213922.P6928355750704519945` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213922 has offset 1).

The definition of A213922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213922.P6928355750704519945

`A051125(n+1)²+1-A210535(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A213922

/-- `A051125(n+1)²+1-A210535(n+1)` -/
def P6928355750704519945.Spec : Prop :=
  ∀ n, P6928355750704519945.a n = A213922 (n + 1)

theorem P6928355750704519945.correct : P6928355750704519945.Spec := by
  intro n
  simp only [A213922, Nat.add_sub_cancel]

end A213922

/-! ## A213922.P16010473814358892145

`A002522(A051125(n+1))-A210535(n+1)`
-/

namespace A213922.P16010473814358892145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A051125 (n + 1)).toNat - A210535 (n + 1)

end

end A213922.P16010473814358892145

namespace A213922

/-- `A002522(A051125(n+1))-A210535(n+1)` -/
def P16010473814358892145.Spec : Prop :=
  ∀ n, P16010473814358892145.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P11757570332805835623

`A253146(n+1)+A003984(n)²`
-/

namespace A213922.P11757570332805835623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1) + A003984 n ^ 2

end

end A213922.P11757570332805835623

namespace A213922

/-- `A253146(n+1)+A003984(n)²` -/
def P11757570332805835623.Spec : Prop :=
  ∀ n, P11757570332805835623.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P16198646673415610149

`A253146(n+1)+(1-A051125(n+1))²`
-/

namespace A213922.P16198646673415610149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1) + (1 - A051125 (n + 1)) ^ 2

end

end A213922.P16198646673415610149

namespace A213922

/-- `A253146(n+1)+(1-A051125(n+1))²` -/
def P16198646673415610149.Spec : Prop :=
  ∀ n, P16198646673415610149.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P3023226253837488367

`A253146(n+1)+A024000(A051125(n+1))²`
-/

namespace A213922.P3023226253837488367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1) + A024000 (A051125 (n + 1)).toNat ^ 2

end

end A213922.P3023226253837488367

namespace A213922

/-- `A253146(n+1)+A024000(A051125(n+1))²` -/
def P3023226253837488367.Spec : Prop :=
  ∀ n, P3023226253837488367.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P11764579699209591300

`A253146(n+1)+A004526(A204022(n+1))²`
-/

namespace A213922.P11764579699209591300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1) + A004526 (A204022 (n + 1)).toNat ^ 2

end

end A213922.P11764579699209591300

namespace A213922

/-- `A253146(n+1)+A004526(A204022(n+1))²` -/
def P11764579699209591300.Spec : Prop :=
  ∀ n, P11764579699209591300.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P17696857445901402873

`A020703(A375510(n))`
-/

namespace A213922.P17696857445901402873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A375510 n).toNat

end

end A213922.P17696857445901402873

namespace A213922

/-- `A020703(A375510(n))` -/
def P17696857445901402873.Spec : Prop :=
  ∀ n, P17696857445901402873.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P16440813905445645046

`A068344(n)+A020703(A185725(n+1))`
-/

namespace A213922.P16440813905445645046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n + A020703 (A185725 (n + 1)).toNat

end

end A213922.P16440813905445645046

namespace A213922

/-- `A068344(n)+A020703(A185725(n+1))` -/
def P16440813905445645046.Spec : Prop :=
  ∀ n, P16440813905445645046.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P10601667112203788725

`A253146(n+1)+A003987(A286150(n))²`
-/

namespace A213922.P10601667112203788725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1) + A003987 (A286150 n).toNat ^ 2

end

end A213922.P10601667112203788725

namespace A213922

/-- `A253146(n+1)+A003987(A286150(n))²` -/
def P10601667112203788725.Spec : Prop :=
  ∀ n, P10601667112203788725.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P11210720464347820431

`A170949(A060736(n+1))`
-/

namespace A213922.P11210720464347820431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (A060736 (n + 1)).toNat

end

end A213922.P11210720464347820431

namespace A213922

/-- `A170949(A060736(n+1))` -/
def P11210720464347820431.Spec : Prop :=
  ∀ n, P11210720464347820431.a n = A213922 (n + 1)

end A213922

/-! ## A213922.P10744070361646641990

`A170949(A220508(n)+1)`
-/

namespace A213922.P10744070361646641990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (A220508 n + 1).toNat

end

end A213922.P10744070361646641990

namespace A213922

/-- `A170949(A220508(n)+1)` -/
def P10744070361646641990.Spec : Prop :=
  ∀ n, P10744070361646641990.a n = A213922 (n + 1)

end A213922

/-!
# A213923: Minimal lengths of formulas representing n only using addition, multiplication and the constant 1.

The programs for A213923, there is no canonical definition to state claims against.
-/

/-! ## A213923.P2088932839950250323

`2*A005245(n+1)-1`
-/

namespace A213923.P2088932839950250323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005245 (n + 1) - 1

end

end A213923.P2088932839950250323

/-! ## A213923.P3188429929516162750

`A004273(A005245(n+1))`
-/

namespace A213923.P3188429929516162750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005245 (n + 1)).toNat

end

end A213923.P3188429929516162750

/-! ## A213923.P9154707807807686643

`A316355(A005245(n+1)²)`
-/

namespace A213923.P9154707807807686643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A005245 (n + 1) ^ 2).toNat

end

end A213923.P9154707807807686643

/-! ## A213923.P15082145402351186107

`A005408(A005245(n+1)-1)`
-/

namespace A213923.P15082145402351186107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005245 (n + 1) - 1).toNat

end

end A213923.P15082145402351186107

/-! ## A213923.P7651943005764743682

`A023443(2*A005245(n+1))`
-/

namespace A213923.P7651943005764743682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A005245 (n + 1)).toNat

end

end A213923.P7651943005764743682

/-! ## A213923.P16906546755994473803

`A258069(2*A005245(n+1))`
-/

namespace A213923.P16906546755994473803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (2 * A005245 (n + 1)).toNat

end

end A213923.P16906546755994473803

/-! ## A213923.P17434719074611161938

`A140106(4*A005245(n+1))`
-/

namespace A213923.P17434719074611161938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (4 * A005245 (n + 1)).toNat

end

end A213923.P17434719074611161938

/-! ## A213923.P9106411934645727508

`A316355(A005245(n+1)*A005245(n+1))`
-/

namespace A213923.P9106411934645727508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A005245 (n + 1) * A005245 (n + 1)).toNat

end

end A213923.P9106411934645727508

/-! ## A213923.P6666167879244593113

`A005245(A000027(n+1))+A005245(n+1)-1`
-/

namespace A213923.P6666167879244593113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A000027 (n + 1)).toNat + (A005245 (n + 1) - 1)

end

end A213923.P6666167879244593113

/-! ## A213923.P14808250773077694355

`A000265(A005245(n+1)+A005245(n+1)-1)`
-/

namespace A213923.P14808250773077694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005245 (n + 1) + (A005245 (n + 1) - 1)).toNat

end

end A213923.P14808250773077694355

/-! ## A213923.P11529586724724381163

`A026741(A005245(n+1)+A005245(n+1)-1)`
-/

namespace A213923.P11529586724724381163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A005245 (n + 1) + (A005245 (n + 1) - 1)).toNat

end

end A213923.P11529586724724381163

/-!
# A213924: Minimal lengths of formulas representing n only using addition, exponentiation and the constant 1.

The programs for A213924, there is no canonical definition to state claims against.
-/

/-! ## A213924.P2629722740646949436

`2*A348262(n+1)-1`
-/

namespace A213924.P2629722740646949436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348262 (n + 1) - 1

end

end A213924.P2629722740646949436

/-! ## A213924.P6384543207968427867

`A004273(A348262(n+1))`
-/

namespace A213924.P6384543207968427867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A348262 (n + 1)).toNat

end

end A213924.P6384543207968427867

/-! ## A213924.P14172163854702592931

`A005408(A348262(n+1)-1)`
-/

namespace A213924.P14172163854702592931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A348262 (n + 1) - 1).toNat

end

end A213924.P14172163854702592931

/-! ## A213924.P1614558259519207960

`A033619(2*A348262(n+1))`
-/

namespace A213924.P1614558259519207960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (2 * A348262 (n + 1)).toNat

end

end A213924.P1614558259519207960

/-! ## A213924.P17739176039971059024

`A005843(A348262(n+1)-1)+1`
-/

namespace A213924.P17739176039971059024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A348262 (n + 1) - 1).toNat + 1

end

end A213924.P17739176039971059024

/-! ## A213924.P12587867194591125117

`A033999(A171435(n+1))+2*A348262(n+1)`
-/

namespace A213924.P12587867194591125117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A171435 (n + 1)).toNat + 2 * A348262 (n + 1)

end

end A213924.P12587867194591125117

/-! ## A213924.P2538742490353646155

`A033999(A171435(n+1))+A005843(A348262(n+1))`
-/

namespace A213924.P2538742490353646155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A171435 (n + 1)).toNat + A005843 (A348262 (n + 1)).toNat

end

end A213924.P2538742490353646155

/-!
# A213926: prime(n^2) - prime(n).

The programs for A213926, the canonical program `A213926.P7531459219814302167` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213926 has offset 1).

The definition of A213926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213926.P7531459219814302167

`A000040((n+1)²)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213926

/-- `A000040((n+1)²)-A000040(n+1)` -/
def P7531459219814302167.Spec : Prop :=
  ∀ n, P7531459219814302167.a n = A213926 (n + 1)

theorem P7531459219814302167.correct : P7531459219814302167.Spec := by
  intro n
  simp only [A213926, Nat.add_sub_cancel]

end A213926

/-! ## A213926.P15286182652573985365

`A011757(n+1)-Δ[A007504(n)]`
-/

namespace A213926.P15286182652573985365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - (f1 (n + 1) - f1 n)

end

end A213926.P15286182652573985365

namespace A213926

/-- `A011757(n+1)-Δ[A007504(n)]` -/
def P15286182652573985365.Spec : Prop :=
  ∀ n, P15286182652573985365.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P6602564944987293573

`A141129(n+1)+A073497(n+1)`
-/

namespace A213926.P6602564944987293573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141129 (n + 1) + A073497 (n + 1)

end

end A213926.P6602564944987293573

namespace A213926

/-- `A141129(n+1)+A073497(n+1)` -/
def P6602564944987293573.Spec : Prop :=
  ∀ n, P6602564944987293573.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P10425480043354138373

`A011757(n+1)-A000040(n+1)`
-/

namespace A213926.P10425480043354138373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - A000040 (n + 1)

end

end A213926.P10425480043354138373

namespace A213926

/-- `A011757(n+1)-A000040(n+1)` -/
def P10425480043354138373.Spec : Prop :=
  ∀ n, P10425480043354138373.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P16222996279053846038

`A036689(n+1)-A123914(n+1)`
-/

namespace A213926.P16222996279053846038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A123914 (n + 1)

end

end A213926.P16222996279053846038

namespace A213926

/-- `A036689(n+1)-A123914(n+1)` -/
def P16222996279053846038.Spec : Prop :=
  ∀ n, P16222996279053846038.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P16524128484381451612

`A011757(n+1)-A008578(n+2)`
-/

namespace A213926.P16524128484381451612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - A008578 (n + 2)

end

end A213926.P16524128484381451612

namespace A213926

/-- `A011757(n+1)-A008578(n+2)` -/
def P16524128484381451612.Spec : Prop :=
  ∀ n, P16524128484381451612.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P12930725640688132737

`A011757(n+1)-abs(Δ[A064365(n)])`
-/

namespace A213926.P12930725640688132737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - |f1 (n + 1) - f1 n|

end

end A213926.P12930725640688132737

namespace A213926

/-- `A011757(n+1)-abs(Δ[A064365(n)])` -/
def P12930725640688132737.Spec : Prop :=
  ∀ n, P12930725640688132737.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P12498758376989109709

`A011757(n+1)-sqrt(A001248(n+1))`
-/

namespace A213926.P12498758376989109709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A011757 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A213926.P12498758376989109709

namespace A213926

/-- `A011757(n+1)-sqrt(A001248(n+1))` -/
def P12498758376989109709.Spec : Prop :=
  ∀ n, P12498758376989109709.a n = (A213926 (n + 1) : ℝ)

end A213926

/-! ## A213926.P17929631419019505501

`A011757(n+1)-∑[A054541(n+1)]`
-/

namespace A213926.P17929631419019505501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213926.P17929631419019505501

namespace A213926

/-- `A011757(n+1)-∑[A054541(n+1)]` -/
def P17929631419019505501.Spec : Prop :=
  ∀ n, P17929631419019505501.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P7599064836879849816

`A011757(n+1)-(A006093(n+1)+1)`
-/

namespace A213926.P7599064836879849816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - (A006093 (n + 1) + 1)

end

end A213926.P7599064836879849816

namespace A213926

/-- `A011757(n+1)-(A006093(n+1)+1)` -/
def P7599064836879849816.Spec : Prop :=
  ∀ n, P7599064836879849816.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P1734358193775886488

`A011757(n+1)+1-A008864(n+1)`
-/

namespace A213926.P1734358193775886488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + (1 - A008864 (n + 1))

end

end A213926.P1734358193775886488

namespace A213926

/-- `A011757(n+1)+1-A008864(n+1)` -/
def P1734358193775886488.Spec : Prop :=
  ∀ n, P1734358193775886488.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P12573645275654979069

`A011757(n+1)-(A040976(n+1)+2)`
-/

namespace A213926.P12573645275654979069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - (A040976 (n + 1) + 2)

end

end A213926.P12573645275654979069

namespace A213926

/-- `A011757(n+1)-(A040976(n+1)+2)` -/
def P12573645275654979069.Spec : Prop :=
  ∀ n, P12573645275654979069.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P10040194056717988573

`A011757(n+1)+2-A052147(n+1)`
-/

namespace A213926.P10040194056717988573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + (2 - A052147 (n + 1))

end

end A213926.P10040194056717988573

namespace A213926

/-- `A011757(n+1)+2-A052147(n+1)` -/
def P10040194056717988573.Spec : Prop :=
  ∀ n, P10040194056717988573.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P1284224908185737377

`A011757(n+1)-A067747(2*n+1)`
-/

namespace A213926.P1284224908185737377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - A067747 (2 * n + 1)

end

end A213926.P1284224908185737377

namespace A213926

/-- `A011757(n+1)-A067747(2*n+1)` -/
def P1284224908185737377.Spec : Prop :=
  ∀ n, P1284224908185737377.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P1931845833630318118

`A092504(n+1)-A100484(n+1)`
-/

namespace A213926.P1931845833630318118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - A100484 (n + 1)

end

end A213926.P1931845833630318118

namespace A213926

/-- `A092504(n+1)-A100484(n+1)` -/
def P1931845833630318118.Spec : Prop :=
  ∀ n, P1931845833630318118.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P8283020494882843236

`A092504(n+1)-2*A000040(n+1)`
-/

namespace A213926.P8283020494882843236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - 2 * A000040 (n + 1)

end

end A213926.P8283020494882843236

namespace A213926

/-- `A092504(n+1)-2*A000040(n+1)` -/
def P8283020494882843236.Spec : Prop :=
  ∀ n, P8283020494882843236.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P5376266694487118307

`2*A011757(n+1)-A092504(n+1)`
-/

namespace A213926.P5376266694487118307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011757 (n + 1) - A092504 (n + 1)

end

end A213926.P5376266694487118307

namespace A213926

/-- `2*A011757(n+1)-A092504(n+1)` -/
def P5376266694487118307.Spec : Prop :=
  ∀ n, P5376266694487118307.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P3366494075683485590

`A323526(n+2)-A000040(n+1)`
-/

namespace A213926.P3366494075683485590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323526 (n + 2) - A000040 (n + 1)

end

end A213926.P3366494075683485590

namespace A213926

/-- `A323526(n+2)-A000040(n+1)` -/
def P3366494075683485590.Spec : Prop :=
  ∀ n, P3366494075683485590.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P2357520944159708803

`A011757(n+1)-p?[A014681(n)]`
-/

namespace A213926.P2357520944159708803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213926.P2357520944159708803

namespace A213926

/-- `A011757(n+1)-p?[A014681(n)]` -/
def P2357520944159708803.Spec : Prop :=
  ∀ n, P2357520944159708803.a n = A213926 (n + 1)

end A213926

/-! ## A213926.P8259731517034313363

`A296857(A182986(n+2))-A182986(n+2)`
-/

namespace A213926.P8259731517034313363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296857 (A182986 (n + 2)).toNat - A182986 (n + 2)

end

end A213926.P8259731517034313363

namespace A213926

/-- `A296857(A182986(n+2))-A182986(n+2)` -/
def P8259731517034313363.Spec : Prop :=
  ∀ n, P8259731517034313363.a n = A213926 (n + 1)

end A213926

/-!
# A213931: Smallest number k such that the sum of divisors of k equals n times a nontrivial integer power.

The programs for A213931, there is no canonical definition to state claims against.
-/

/-! ## A213931.P16035606341095960210

`A070982(4*A187829(n+1))`
-/

namespace A213931.P16035606341095960210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (4 * A187829 (n + 1)).toNat

end

end A213931.P16035606341095960210

/-! ## A213931.P3760233910420876124

`A070982(4*A077168(n))`
-/

namespace A213931.P3760233910420876124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (4 * A077168 n).toNat

end

end A213931.P3760233910420876124

/-! ## A213931.P12273334114074973239

`A213401(n+1)-A091225(A213351(n+9))`
-/

namespace A213931.P12273334114074973239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213401 (n + 1) - A091225 (A213351 (n + 9)).toNat

end

end A213931.P12273334114074973239

/-!
# A213933: G.f.: (1+x+x^2+2*x^5-2*x^10)/(1-3*x^3).

The programs for A213933, there is no canonical definition to state claims against.
-/

/-! ## A213933.P4171019844604503242

`A091916(n)-A324192(A080039(n))`
-/

namespace A213933.P4171019844604503242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 n - A324192 (A080039 n).toNat

end

end A213933.P4171019844604503242

/-! ## A213933.P14157181998040969270

`A083658(A004523(n))-A324192(A080039(n))`
-/

namespace A213933.P14157181998040969270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004523 n).toNat - A324192 (A080039 n).toNat

end

end A213933.P14157181998040969270

/-! ## A213933.P5456480536040300965

`A083658(A002264(2*n))-A324192(A080039(n))`
-/

namespace A213933.P5456480536040300965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A002264 (2 * n)).toNat - A324192 (A080039 n).toNat

end

end A213933.P5456480536040300965

/-! ## A213933.P1921682607316648760

`A091916(n)-A000038(A077727(n+1))`
-/

namespace A213933.P1921682607316648760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 n - A000038 (A077727 (n + 1)).toNat

end

end A213933.P1921682607316648760

/-! ## A213933.P9587933687798234133

`A091916(n)-A033909(A276075(n+1))`
-/

namespace A213933.P9587933687798234133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 n - A033909 (A276075 (n + 1)).toNat

end

end A213933.P9587933687798234133

/-!
# A213935: Triangle with entry a(n,m) giving the total number of necklaces of n beads (C_n symmetry) with n colors available for each bead, but only m distinct colors present, with m from {1, 2, ..., n} and n >= 1.

The programs for A213935, there is no canonical definition to state claims against.
-/

/-! ## A213935.P3048677594840291390

`A087854(n+1)*A135278(n)`
-/

namespace A213935.P3048677594840291390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087854 (n + 1) * A135278 n

end

end A213935.P3048677594840291390

/-! ## A213935.P13790627846667601650

`A008279(n)*A258170(comp[∑[n]])`
-/

namespace A213935.P13790627846667601650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A258170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A213935.P13790627846667601650

/-! ## A213935.P5317179346432058424

`A074909(n+1)*A087854(n+1)`
-/

namespace A213935.P5317179346432058424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A087854 (n + 1)

end

end A213935.P5317179346432058424

/-! ## A213935.P9252268208477957863

`A007318(comp[∑[n]])*A087854(n+1)`
-/

namespace A213935.P9252268208477957863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A087854 (n + 1)

end

end A213935.P9252268208477957863

/-! ## A213935.P15417057428921274708

`A214306(n+1)+A135278(n)*A305541(n+1)`
-/

namespace A213935.P15417057428921274708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (n + 1) + A135278 n * A305541 (n + 1)

end

end A213935.P15417057428921274708

/-! ## A213935.P125547134005059974

`A214306(n+1)+A007318(A014132(n+1))*A305541(n+1)`
-/

namespace A213935.P125547134005059974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214306 (n + 1) + A007318 (A014132 (n + 1)).toNat * A305541 (n + 1)

end

end A213935.P125547134005059974

/-!
# A213936: Number triangle with entry a(n,k), n>=1, m=1, 2, ..., n, giving the number of representative necklaces with n beads (C_n symmetry) corresponding to the color multinomial c[1]^k*c[2]*...*c[n+1-k].

The programs for A213936, there is no canonical definition to state claims against.
-/

/-! ## A213936.P1881175043287324425

`A094587(char[comp[∑[n-1]]]+n)`
-/

namespace A213936.P1881175043287324425
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A213936.P1881175043287324425

/-! ## A213936.P12532713536873178997

`ceil(A173333(n+1)/round(sqrt(2*(n+1))))`
-/

namespace A213936.P12532713536873178997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173333 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℚ)⌉

end

end A213936.P12532713536873178997

/-! ## A213936.P8137454192529601189

`ceil(A094587(n)/(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A213936.P8137454192529601189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094587 n : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)⌉

end

end A213936.P8137454192529601189

/-! ## A213936.P5501451470339966096

`A008279(∑[2*n]%comp[∑[n]]-char[comp[∑[n-1]]])`
-/

namespace A213936.P5501451470339966096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - (if ∃ j, f4 j = n then 1 else 0))

end

end A213936.P5501451470339966096

/-! ## A213936.P8657442315642786249

`A124774(∏[char[∑[n+1]]+1]-2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A213936.P8657442315642786249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A213936.P8657442315642786249

/-! ## A213936.P2081132662329602053

`A124774(A173787(n))`
-/

namespace A213936.P2081132662329602053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A173787 n).toNat

end

end A213936.P2081132662329602053

/-! ## A213936.P7309712914595322049

`A094587(n)/A128227(n)`
-/

namespace A213936.P7309712914595322049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) / (A128227 n : ℚ)

end

end A213936.P7309712914595322049

/-! ## A213936.P14049266426891654531

`abs(A094587(n)/A176484(n))`
-/

namespace A213936.P14049266426891654531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A094587 n : ℚ) / (A176484 n : ℚ)|

end

end A213936.P14049266426891654531

/-! ## A213936.P18097380439418309762

`A306015(A127648(n)+1+n)`
-/

namespace A213936.P18097380439418309762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (A127648 n + 1 + (n : ℤ)).toNat

end

end A213936.P18097380439418309762

/-! ## A213936.P7276573246890556403

`gcd(A094587(n+1), A094587(n))`
-/

namespace A213936.P7276573246890556403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094587 (n + 1)) (A094587 n)

end

end A213936.P7276573246890556403

/-!
# A213937: Row sums a(n) of triangle A213936: number of representative necklaces with n beads (C_N symmetry) corresponding to all color signatures given by the partitions [1^n], [2,1^(n-2)], ..., [n-1,1], [n].

The programs for A213937, the canonical program `A213937.P14672044274802373282` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213937 has offset 1).

The definition of A213937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213937.P14672044274802373282

`1+A002627(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213937

/-- `1+A002627(n)` -/
def P14672044274802373282.Spec : Prop :=
  ∀ n, P14672044274802373282.a n = A213937 (n + 1)

theorem P14672044274802373282.correct : P14672044274802373282.Spec := by
  intro n
  simp only [A213937, Nat.add_sub_cancel]

end A213937

/-! ## A213937.P14388982758881894256

`n*(a(n-1)-1)+2` with `a(0)=1`
-/

namespace A213937.P14388982758881894256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) - 1) + 2

end

end A213937.P14388982758881894256

namespace A213937

/-- `n*(a(n-1)-1)+2` -/
def P14388982758881894256.Spec : Prop :=
  ∀ n, P14388982758881894256.a n = A213937 (n + 1)

end A213937

/-! ## A213937.P8927841088707939425

`2-n*(1-a(n-1))` with `a(0)=1`
-/

namespace A213937.P8927841088707939425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (n : ℤ) * (1 - a (n - 1))

end

end A213937.P8927841088707939425

namespace A213937

/-- `2-n*(1-a(n-1))` -/
def P8927841088707939425.Spec : Prop :=
  ∀ n, P8927841088707939425.a n = A213937 (n + 1)

end A213937

/-! ## A213937.P5841038444879089551

`2-(n-a(n-1)/tan(acot(n)))` with `a(0)=1`
-/

namespace A213937.P5841038444879089551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((n : ℝ) - a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)))

end

end A213937.P5841038444879089551

namespace A213937

/-- `2-(n-a(n-1)/tan(acot(n)))` -/
def P5841038444879089551.Spec : Prop :=
  ∀ n, P5841038444879089551.a n = (A213937 (n + 1) : ℝ)

end A213937

/-! ## A213937.P15372520250888245088

`a(n-1)/cot(atan(n))+2-n` with `a(0)=1`
-/

namespace A213937.P15372520250888245088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (n : ℝ)) + 2 - (n : ℝ)

end

end A213937.P15372520250888245088

namespace A213937

/-- `a(n-1)/cot(atan(n))+2-n` -/
def P15372520250888245088.Spec : Prop :=
  ∀ n, P15372520250888245088.a n = (A213937 (n + 1) : ℝ)

end A213937

/-! ## A213937.P13907375396983524502

`2-A166554(n)`
-/

namespace A213937.P13907375396983524502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A166554 n

end

end A213937.P13907375396983524502

namespace A213937

/-- `2-A166554(n)` -/
def P13907375396983524502.Spec : Prop :=
  ∀ n, P13907375396983524502.a n = A213937 (n + 1)

end A213937

/-! ## A213937.P7584466159931484101

`A082459(2*n)+2`
-/

namespace A213937.P7584466159931484101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 (2 * n) + 2

end

end A213937.P7584466159931484101

namespace A213937

/-- `A082459(2*n)+2` -/
def P7584466159931484101.Spec : Prop :=
  ∀ n, P7584466159931484101.a n = A213937 (n + 1)

end A213937

/-! ## A213937.P9332457430333746025

`(A286282(n+1)+n+1)/2`
-/

namespace A213937.P9332457430333746025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286282 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A213937.P9332457430333746025

namespace A213937

/-- `(A286282(n+1)+n+1)/2` -/
def P9332457430333746025.Spec : Prop :=
  ∀ n, P9332457430333746025.a n = (A213937 (n + 1) : ℚ)

end A213937

/-! ## A213937.P4657706332131240081

`A000522(n)-A033312(n)`
-/

namespace A213937.P4657706332131240081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - A033312 n

end

end A213937.P4657706332131240081

namespace A213937

/-- `A000522(n)-A033312(n)` -/
def P4657706332131240081.Spec : Prop :=
  ∀ n, P4657706332131240081.a n = A213937 (n + 1)

end A213937

/-!
# A213938: The n-th multiset representative in Abramowitz-Stegun order is a partition of a(n).

The programs for A213938, there is no canonical definition to state claims against.
-/

/-! ## A213938.P1246773896000315150

`A318283(A185974(n+1))`
-/

namespace A213938.P1246773896000315150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A185974 (n + 1)).toNat

end

end A213938.P1246773896000315150

/-! ## A213938.P3305327137589333054

`A318283(A334438(n+1))`
-/

namespace A213938.P3305327137589333054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A334438 (n + 1)).toNat

end

end A213938.P3305327137589333054

/-! ## A213938.P4451838198592388175

`A304793(A036035(n+1))`
-/

namespace A213938.P4451838198592388175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A036035 (n + 1)).toNat

end

end A213938.P4451838198592388175

/-! ## A213938.P2811095053632110669

`A304793(A059901(n+1))`
-/

namespace A213938.P2811095053632110669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A059901 (n + 1)).toNat

end

end A213938.P2811095053632110669

/-! ## A213938.P3276830226497658645

`A304793(A087443(n+1))`
-/

namespace A213938.P3276830226497658645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A087443 (n + 1)).toNat

end

end A213938.P3276830226497658645

/-!
# A213939: Partition array for the number of representative bracelets (dihedral symmetry D_n) with n beads, each available in n colors. Only the color type (signature) matters.

The programs for A213939, there is no canonical definition to state claims against.
-/

/-! ## A213939.P6860309264994815574

`A213941(n+1)/A035206(n+1)`
-/

namespace A213939.P6860309264994815574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213941 (n + 1) : ℚ) / (A035206 (n + 1) : ℚ)

end

end A213939.P6860309264994815574

/-! ## A213939.P16138269132488162008

`A212359(n+1)/A212360(n+1)*A213941(n+1)`
-/

namespace A213939.P16138269132488162008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212359 (n + 1) : ℚ) / (A212360 (n + 1) : ℚ) * (A213941 (n + 1) : ℚ)

end

end A213939.P16138269132488162008

/-!
# A213941: Partition array a(n,k) with the total number of bracelets (D_n symmetry) with n beads, each available in n colors, with color signature given by the k-th partition of n in Abramowitz-Stegun(A-St) order.

The programs for A213941, there is no canonical definition to state claims against.
-/

/-! ## A213941.P13541372815342748547

`A035206(n+1)*A213939(n+1)`
-/

namespace A213941.P13541372815342748547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (n + 1) * A213939 (n + 1)

end

end A213941.P13541372815342748547

/-! ## A213941.P4190630851258941540

`A212360(n+1)/A212359(n+1)*A213939(n+1)`
-/

namespace A213941.P4190630851258941540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212360 (n + 1) : ℚ) / (A212359 (n + 1) : ℚ) * (A213939 (n + 1) : ℚ)

end

end A213941.P4190630851258941540

/-! ## A213941.P12134009658054053262

`A210238(A153679(n+1))*A213939(n+1)`
-/

namespace A213941.P12134009658054053262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210238 (A153679 (n + 1)).toNat * A213939 (n + 1)

end

end A213941.P12134009658054053262

/-! ## A213941.P7714571560163671444

`A118759(A210238(n+1))*A213939(n+1)`
-/

namespace A213941.P7714571560163671444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A210238 (n + 1)).toNat * A213939 (n + 1)

end

end A213941.P7714571560163671444

/-! ## A213941.P2077834098962196448

`A210238(A187829(n+1))*A213939(n+1)`
-/

namespace A213941.P2077834098962196448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210238 (A187829 (n + 1)).toNat * A213939 (n + 1)

end

end A213941.P2077834098962196448

/-!
# A213942: a(n) is the number of representative two-color bracelets (necklaces with turnover allowed) with n beads for n >= 2.

The programs for A213942, there is no canonical definition to state claims against.
-/

/-! ## A213942.P1135804507133443110

`A213940(∑[n+1]+2)`
-/

namespace A213942.P1135804507133443110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213940 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213942.P1135804507133443110

/-! ## A213942.P14312917286077705725

`A213940(A133263(n+1))%A017346(n)`
-/

namespace A213942.P14312917286077705725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213940 (A133263 (n + 1)).toNat) (A017346 n)

end

end A213942.P14312917286077705725

/-! ## A213942.P892638695212003140

`gcd(A000038(n), A213940(A133263(n+1)))`
-/

namespace A213942.P892638695212003140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213940 (A133263 (n + 1)).toNat)

end

end A213942.P892638695212003140

/-! ## A213942.P7084444549731938979

`A122314(A066983(n+2)-A026810(n))`
-/

namespace A213942.P7084444549731938979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A066983 (n + 2) - A026810 n).toNat

end

end A213942.P7084444549731938979

/-! ## A213942.P7263866591445337189

`A198296(n)+A005089(A061446(3*(n+1)))`
-/

namespace A213942.P7263866591445337189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198296 n + A005089 (A061446 (3 * (n + 1))).toNat

end

end A213942.P7263866591445337189

/-!
# A213943: Row sums of partition array A213939 and triangle A213940: number of representative bracelets with n beads and up to n colors.

The programs for A213943, there is no canonical definition to state claims against.
-/

/-! ## A213943.P17954987068507374153

`∑[A214366(n)%n!+1]`
-/

namespace A213943.P17954987068507374153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214366 n) (Nat.factorial n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213943.P17954987068507374153

/-! ## A213943.P5411964881442257140

`A306676(A027118(n))`
-/

namespace A213943.P5411964881442257140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306676 (A027118 n).toNat

end

end A213943.P5411964881442257140

/-!
# A213944: Triangle read by rows, with column k defined by partial sums of the finite sequence that contains k three times.

The programs for A213944, there is no canonical definition to state claims against.
-/

/-! ## A213944.P9852423399884097131

`A177443(n)*A333381(A143683(n))`
-/

namespace A213944.P9852423399884097131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177443 n * A333381 (A143683 n).toNat

end

end A213944.P9852423399884097131

/-! ## A213944.P7070576238028938003

`lcm(A001221(A094048(n+1)), A351776(n))`
-/

namespace A213944.P7070576238028938003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A094048 (n + 1)).toNat) (A351776 n)

end

end A213944.P7070576238028938003

/-! ## A213944.P6295951186155049812

`C(A238966(A001405(n+2)), A368848(n))`
-/

namespace A213944.P6295951186155049812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238966 (A001405 (n + 2)).toNat).toNat (A368848 n).toNat

end

end A213944.P6295951186155049812

/-! ## A213944.P1642416990576087742

`A360675(n)*A360678(A360646(3*n+5))`
-/

namespace A213944.P1642416990576087742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360675 n * A360678 (A360646 (3 * n + 5)).toNat

end

end A213944.P1642416990576087742

/-!
# A213947: Triangle read by rows: columns are finite differences of the INVERT transform of (1, 2, 3, ...) terms.

The programs for A213947, there is no canonical definition to state claims against.
-/

/-! ## A213947.P4644770085444220765

`A162453(n+1)*A329317(A034802(n))`
-/

namespace A213947.P4644770085444220765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162453 (n + 1) * A329317 (A034802 n).toNat

end

end A213947.P4644770085444220765

/-!
# A213949: One half of largest prime gap up to 10^n.

The programs for A213949, there is no canonical definition to state claims against.
-/

/-! ## A213949.P13984931433768971997

`A038460(n+1)/2`
-/

namespace A213949.P13984931433768971997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038460 (n + 1) : ℚ) / 2

end

end A213949.P13984931433768971997

/-! ## A213949.P13995380609257682559

`A001281(A038460(n+1))`
-/

namespace A213949.P13995380609257682559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A038460 (n + 1)).toNat

end

end A213949.P13995380609257682559

/-! ## A213949.P16346331591492150143

`record[ratio[A038460(A158416(n))]]`
-/

namespace A213949.P16346331591492150143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038460 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213949.P16346331591492150143

/-! ## A213949.P8406354302159526697

`A004524(A038460(n+1)+1)`
-/

namespace A213949.P8406354302159526697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A038460 (n + 1) + 1).toNat

end

end A213949.P8406354302159526697

/-! ## A213949.P4112480664819298127

`A004526(A038460(n+1)+1)`
-/

namespace A213949.P4112480664819298127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038460 (n + 1) + 1).toNat

end

end A213949.P4112480664819298127

/-!
# A213950: Number of free poly-IH9-tiles (holes allowed) with n cells.

The programs for A213950, there is no canonical definition to state claims against.
-/

/-! ## A213950.P8264014071181971721

`A197553(n+1)+A055641(A002064(n))`
-/

namespace A213950.P8264014071181971721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197553 (n + 1) + A055641 (A002064 n).toNat

end

end A213950.P8264014071181971721

/-! ## A213950.P14216335126250951273

`A197553(n+1)+A085974(A007051(n))`
-/

namespace A213950.P14216335126250951273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197553 (n + 1) + A085974 (A007051 n).toNat

end

end A213950.P14216335126250951273

/-! ## A213950.P5935541538283524324

`A000027(A197553(n+1)+A102681(n))`
-/

namespace A213950.P5935541538283524324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A197553 (n + 1) + A102681 n).toNat

end

end A213950.P5935541538283524324

/-! ## A213950.P17539364120407462817

`A197553(n+1)+A185284(A079599(n))`
-/

namespace A213950.P17539364120407462817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197553 (n + 1) + A185284 (A079599 n).toNat

end

end A213950.P17539364120407462817

/-! ## A213950.P1068090951282778391

`A000027(A308995(n)+A197553(n+1))`
-/

namespace A213950.P1068090951282778391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A308995 n + A197553 (n + 1)).toNat

end

end A213950.P1068090951282778391

/-!
# A213951: Number of free poly-IH16-tiles (holes allowed) with n cells.

The programs for A213951, there is no canonical definition to state claims against.
-/

/-! ## A213951.P1031431954817213446

`A333750(A295197(n+1))+A197554(n+1)`
-/

namespace A213951.P1031431954817213446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A295197 (n + 1)).toNat + A197554 (n + 1)

end

end A213951.P1031431954817213446

/-! ## A213951.P8879420112189553201

`A197554(n+1)+A007814(A333143(3*n+2))`
-/

namespace A213951.P8879420112189553201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197554 (n + 1) + A007814 (A333143 (3 * n + 2)).toNat

end

end A213951.P8879420112189553201

/-! ## A213951.P7541516011120390236

`A197554(n+1)+A197554(2*(n+1))%A034444(n+1)`
-/

namespace A213951.P7541516011120390236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197554 (n + 1) + Int.tmod (A197554 (2 * (n + 1))) (A034444 (n + 1))

end

end A213951.P7541516011120390236

/-!
# A213953: Triangle by rows, inverse of A208891.

The programs for A213953, there is no canonical definition to state claims against.
-/

/-! ## A213953.P13288764915584502797

`Δ[A124778(A004273(n))-A178090(n)]`
-/

namespace A213953.P13288764915584502797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A004273 n).toNat - A178090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213953.P13288764915584502797

/-! ## A213953.P5270125272015616932

`Δ[A116433(n)]-A330936(A049020(n))²`
-/

namespace A213953.P5270125272015616932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A330936 (A049020 n).toNat ^ 2

end

end A213953.P5270125272015616932

/-! ## A213953.P5787132352567292099

`Δ[A116433(A055645(n))]`
-/

namespace A213953.P5787132352567292099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (A055645 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213953.P5787132352567292099

/-! ## A213953.P15342567444482804879

`Δ[A087116(A262071(n)²)]`
-/

namespace A213953.P15342567444482804879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A262071 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213953.P15342567444482804879

/-! ## A213953.P6906714326713409342

`Δ[A332201(A075117(n)²)]`
-/

namespace A213953.P6906714326713409342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332201 (A075117 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213953.P6906714326713409342

/-!
# A213955: Number of n X n 0..1 matrices with row and column i=1..n having sum <= i.

The programs for A213955, there is no canonical definition to state claims against.
-/

/-! ## A213955.P11155747327289586929

`A213962(∑[n+1])`
-/

namespace A213955.P11155747327289586929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213955.P11155747327289586929

/-! ## A213955.P7847216188062188759

`record[A213962(A286158(n+1))]`
-/

namespace A213955.P7847216188062188759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A286158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213955.P7847216188062188759

/-! ## A213955.P12509511783104191636

`record[A213962(gcd(n, A276588(n)))]`
-/

namespace A213955.P12509511783104191636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (Int.gcd (n : ℤ) (A276588 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213955.P12509511783104191636

/-! ## A213955.P2437771284357611772

`record[root(A213962(n+1), A101897(n))]`
-/

namespace A213955.P2437771284357611772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A213962 (n + 1) : ℝ) ^ (1 / (A101897 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213955.P2437771284357611772

/-! ## A213955.P7611418948703391856

`record[gcd(A025581(n), A213962(n+1))]`
-/

namespace A213955.P7611418948703391856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A213962 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213955.P7611418948703391856

/-!
# A213956: Number of n X n 0..2 matrices with row and column i=1..n having sum <= i*2.

The programs for A213956, there is no canonical definition to state claims against.
-/

/-! ## A213956.P10798998879315622129

`A213962(∑[n+2])`
-/

namespace A213956.P10798998879315622129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213956.P10798998879315622129

/-!
# A213957: Number of n X n 0..3 matrices with row and column i=1..n having sum <= i*3.

The programs for A213957, there is no canonical definition to state claims against.
-/

/-! ## A213957.P18396219912597315471

`A213962(∑[n+3]+1)`
-/

namespace A213957.P18396219912597315471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213957.P18396219912597315471

/-!
# A213958: Number of n X n 0..4 matrices with row and column i=1..n having sum <= i*4.

The programs for A213958, there is no canonical definition to state claims against.
-/

/-! ## A213958.P14718142521701009847

`A213962(A141214(n+1))`
-/

namespace A213958.P14718142521701009847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A141214 (n + 1)).toNat

end

end A213958.P14718142521701009847

/-! ## A213958.P4352108002401257338

`A213962(A155212(n)+5)`
-/

namespace A213958.P4352108002401257338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A155212 n + 5).toNat

end

end A213958.P4352108002401257338

/-! ## A213958.P7672270254469630629

`A213962(A056000(n)+7)`
-/

namespace A213958.P7672270254469630629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A056000 n + 7).toNat

end

end A213958.P7672270254469630629

/-!
# A213960: 

The programs for A213960, there is no canonical definition to state claims against.
-/

/-! ## A213960.P15933084460031422686

`A213962(A052905(n+3))`
-/

namespace A213960.P15933084460031422686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A052905 (n + 3)).toNat

end

end A213960.P15933084460031422686

/-!
# A213962: T(n,k)=Number of n X n 0..k matrices with row and column i=1..n having sum <= i*k.

The programs for A213962, there is no canonical definition to state claims against.
-/

/-! ## A213962.P7999504071934164943

`A146623(A024575(n+1))*A202864(n+1)`
-/

namespace A213962.P7999504071934164943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146623 (A024575 (n + 1)).toNat * A202864 (n + 1)

end

end A213962.P7999504071934164943

/-! ## A213962.P17467974531083180983

`A143051(A250841(n+1))%A234576(n+4)`
-/

namespace A213962.P17467974531083180983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143051 (A250841 (n + 1)).toNat) (A234576 (n + 4))

end

end A213962.P17467974531083180983

/-!
# A213963: Number of 3X3 0..n matrices with row and column 1..3 having sum <= i*n.

The programs for A213963, there is no canonical definition to state claims against.
-/

/-! ## A213963.P8195413748435055993

`A213962(∑[n+2]+4)`
-/

namespace A213963.P8195413748435055993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213963.P8195413748435055993

/-! ## A213963.P2140274449578293292

`A213962(A167614(n+1))+A014083(n)`
-/

namespace A213963.P2140274449578293292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A167614 (n + 1)).toNat + A014083 n

end

end A213963.P2140274449578293292

/-! ## A213963.P5890513413815980623

`A213962(A167614(n+1))+A025439(n)`
-/

namespace A213963.P5890513413815980623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A167614 (n + 1)).toNat + A025439 n

end

end A213963.P5890513413815980623

/-! ## A213963.P8055786697963955702

`A213962(A167614(n+1))+A025469(n)`
-/

namespace A213963.P8055786697963955702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A167614 (n + 1)).toNat + A025469 n

end

end A213963.P8055786697963955702

/-!
# A213964: Number of 4X4 0..n matrices with row and column 1..4 having sum <= i*n.

The programs for A213964, there is no canonical definition to state claims against.
-/

/-! ## A213964.P2215623528550133678

`A213962(A141214(n)+7)`
-/

namespace A213964.P2215623528550133678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A141214 n + 7).toNat

end

end A213964.P2215623528550133678

/-! ## A213964.P1464540849376156834

`A213962(A052905(n)+9)`
-/

namespace A213964.P1464540849376156834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A052905 n + 9).toNat

end

end A213964.P1464540849376156834

/-! ## A213964.P9690424106845115867

`A213962(A055999(n)+10)`
-/

namespace A213964.P9690424106845115867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A055999 n + 10).toNat

end

end A213964.P9690424106845115867

/-!
# A213965: 

The programs for A213965, there is no canonical definition to state claims against.
-/

/-! ## A213965.P17549995983430468167

`A213962(A167499(n+3))`
-/

namespace A213965.P17549995983430468167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A167499 (n + 3)).toNat

end

end A213965.P17549995983430468167

/-! ## A213965.P8731127321376157581

`A213962(A155212(n)+13)`
-/

namespace A213965.P8731127321376157581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (A155212 n + 13).toNat

end

end A213965.P8731127321376157581

/-!
# A213966: 

The programs for A213966, there is no canonical definition to state claims against.
-/

/-! ## A213966.P13656023252770521828

`A213962(eq[7, A131818(n+1)])`
-/

namespace A213966.P13656023252770521828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213966.P13656023252770521828

/-!
# A213967: a(n)=n for n<=3; thereafter a(n)=a(n-1)+a(n-2)+a(n-3)+1.

The programs for A213967, the canonical program `A213967.P458744745567570496` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213967 has offset 0).

The definition of A213967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+1` (program `A213967.P458744745567570496`, by `A213967.P458744745567570496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213967.P458744745567570496

`a(n-1)+a(n-2)+a(n-3)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213967

/-- `a(n-1)+a(n-2)+a(n-3)+1` -/
def P458744745567570496.Spec : Prop :=
  ∀ n, (P458744745567570496.a n : ℤ) = A213967 n

theorem P458744745567570496.correct : P458744745567570496.Spec := by
  intro n
  simp only [A213967]

end A213967

/-! ## A213967.P8331118511102927047

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7`
-/

namespace A213967.P8331118511102927047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 7] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A213967.P8331118511102927047

namespace A213967

/-- `2*a(n-1)-a(n-4)` -/
def P8331118511102927047.Spec : Prop :=
  ∀ n, P8331118511102927047.a n = A213967 n

end A213967

/-! ## A213967.P932195899321371292

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7`
-/

namespace A213967.P932195899321371292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 7] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A213967.P932195899321371292

namespace A213967

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P932195899321371292.Spec : Prop :=
  ∀ n, P932195899321371292.a n = A213967 n

end A213967

/-! ## A213967.P13812875518068289670

`record[A081172(n)]-A192804(n)`
-/

namespace A213967.P13812875518068289670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A192804 n

end

end A213967.P13812875518068289670

namespace A213967

/-- `record[A081172(n)]-A192804(n)` -/
def P13812875518068289670.Spec : Prop :=
  ∀ n, P13812875518068289670.a n = A213967 n

end A213967

/-! ## A213967.P16733242332601618062

`A196700(n+1)-(∑[A000073(n)]+1)`
-/

namespace A213967.P16733242332601618062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213967.P16733242332601618062

namespace A213967

/-- `A196700(n+1)-(∑[A000073(n)]+1)` -/
def P16733242332601618062.Spec : Prop :=
  ∀ n, P16733242332601618062.a n = A213967 n

end A213967

/-! ## A213967.P8060267195349359024

`A089068(n+1)-a(n-1)-A001590(n)` with `a(0)=0, a(1)=1`
-/

namespace A213967.P8060267195349359024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A089068 (n + 1) - a (n - 1) - A001590 n

end

end A213967.P8060267195349359024

namespace A213967

/-- `A089068(n+1)-a(n-1)-A001590(n)` -/
def P8060267195349359024.Spec : Prop :=
  ∀ n, P8060267195349359024.a n = A213967 n

end A213967

/-! ## A213967.P16743663658033134459

`∑[record[A081172(n)]]-A135491(n)`
-/

namespace A213967.P16743663658033134459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A135491 n

end

end A213967.P16743663658033134459

namespace A213967

/-- `∑[record[A081172(n)]]-A135491(n)` -/
def P16743663658033134459.Spec : Prop :=
  ∀ n, P16743663658033134459.a n = A213967 n

end A213967

/-! ## A213967.P2056160737832148050

`record[A141036(n)]-∑[A141036(n)]`
-/

namespace A213967.P2056160737832148050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213967.P2056160737832148050

namespace A213967

/-- `record[A141036(n)]-∑[A141036(n)]` -/
def P2056160737832148050.Spec : Prop :=
  ∀ n, P2056160737832148050.a n = A213967 n

end A213967

/-! ## A213967.P1696672754075733799

`∑[record[A081172(n+1)]]%A135491(n)`
-/

namespace A213967.P1696672754075733799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A135491 n)

end

end A213967.P1696672754075733799

namespace A213967

/-- `∑[record[A081172(n+1)]]%A135491(n)` -/
def P1696672754075733799.Spec : Prop :=
  ∀ n, P1696672754075733799.a n = A213967 n

end A213967

/-!
# A213969: List of primitive words over the alphabet {1,2}.

The programs for A213969, there is no canonical definition to state claims against.
-/

/-! ## A213969.P10981822410446095299

`A048379(A213970(n+1))/2`
-/

namespace A213969.P10981822410446095299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048379 (A213970 (n + 1)).toNat : ℚ) / 2

end

end A213969.P10981822410446095299

/-! ## A213969.P5878137019695323284

`(A213971(n+1)+A213970(n+1))/3`
-/

namespace A213969.P5878137019695323284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213971 (n + 1) + A213970 (n + 1) : ℚ) / 3

end

end A213969.P5878137019695323284

/-! ## A213969.P12664940481542228561

`A035044(A213970(n+1))`
-/

namespace A213969.P12664940481542228561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A213970 (n + 1)).toNat

end

end A213969.P12664940481542228561

/-! ## A213969.P14222014553701812345

`A167679(A213971(n+1))`
-/

namespace A213969.P14222014553701812345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167679 (A213971 (n + 1)).toNat

end

end A213969.P14222014553701812345

/-! ## A213969.P2403848237965654122

`A064770(2*A213970(n+1))`
-/

namespace A213969.P2403848237965654122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (2 * A213970 (n + 1)).toNat

end

end A213969.P2403848237965654122

/-!
# A213970: List of primitive words over the alphabet {1,3}.

The programs for A213970, there is no canonical definition to state claims against.
-/

/-! ## A213970.P7921734181425967483

`3*A213969(n+1)-A213971(n+1)`
-/

namespace A213970.P7921734181425967483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213969 (n + 1) - A213971 (n + 1)

end

end A213970.P7921734181425967483

/-! ## A213970.P17582159878774287202

`A035044(A213969(n+1))`
-/

namespace A213970.P17582159878774287202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (A213969 (n + 1)).toNat

end

end A213970.P17582159878774287202

/-! ## A213970.P8664251090108467768

`A035043(A213971(n+1))`
-/

namespace A213970.P8664251090108467768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A213971 (n + 1)).toNat

end

end A213970.P8664251090108467768

/-! ## A213970.P3159706002663589706

`A235049(2*A213969(n+1))`
-/

namespace A213970.P3159706002663589706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (2 * A213969 (n + 1)).toNat

end

end A213970.P3159706002663589706

/-! ## A213970.P16812860314693768433

`A106747(3*A213969(n+1))`
-/

namespace A213970.P16812860314693768433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (3 * A213969 (n + 1)).toNat

end

end A213970.P16812860314693768433

/-!
# A213971: List of primitive words over the alphabet {2,3}.

The programs for A213971, there is no canonical definition to state claims against.
-/

/-! ## A213971.P16963609015325993116

`A048379(A213969(n+1))`
-/

namespace A213971.P16963609015325993116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A213969 (n + 1)).toNat

end

end A213971.P16963609015325993116

/-! ## A213971.P12295321120591441196

`3*A213969(n+1)-A213970(n+1)`
-/

namespace A213971.P12295321120591441196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213969 (n + 1) - A213970 (n + 1)

end

end A213971.P12295321120591441196

/-! ## A213971.P8973658415324522061

`A035043(A213970(n+1))`
-/

namespace A213971.P8973658415324522061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A213970 (n + 1)).toNat

end

end A213971.P8973658415324522061

/-! ## A213971.P8311498133954979810

`A222234(2*A213969(n+1))`
-/

namespace A213971.P8311498133954979810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (2 * A213969 (n + 1)).toNat

end

end A213971.P8311498133954979810

/-! ## A213971.P6184905152080099079

`A216556(or(char[3], A213969(n+1)))`
-/

namespace A213971.P6184905152080099079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213969 (n + 1))).toNat

end

end A213971.P6184905152080099079

/-!
# A213972: List of imprimitive words over the alphabet {1,2}.

The programs for A213972, there is no canonical definition to state claims against.
-/

/-! ## A213972.P5176232075261778965

`∩[A007931(n+1), A239018(n+1)]`
-/

namespace A213972.P5176232075261778965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213972.P5176232075261778965

/-! ## A213972.P18168441617099713490

`∩[A085184(n+1), A239018(n+1)]`
-/

namespace A213972.P18168441617099713490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213972.P18168441617099713490

/-! ## A213972.P122437527447987006

`∩[A239018(n+1), A007089(n)]`
-/

namespace A213972.P122437527447987006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213972.P122437527447987006

/-! ## A213972.P1923780662385580390

`∩[A239018(n+1), A344939(n)]`
-/

namespace A213972.P1923780662385580390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213972.P1923780662385580390

/-! ## A213972.P2734029791186796272

`∩[A007931(n+1), A239019(n+1)]`
-/

namespace A213972.P2734029791186796272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213972.P2734029791186796272

/-!
# A213973: List of imprimitive words over the alphabet {1,3}.

The programs for A213973, there is no canonical definition to state claims against.
-/

/-! ## A213973.P7733116675946040713

`∩[A032917(n+1), A239018(n+1)]`
-/

namespace A213973.P7733116675946040713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213973.P7733116675946040713

/-! ## A213973.P4422788255880265630

`∩[A032917(n+1), A239019(n+1)]`
-/

namespace A213973.P4422788255880265630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213973.P4422788255880265630

/-! ## A213973.P12715243124141037457

`∩[A174813(n+1), A239018(n+1)]`
-/

namespace A213973.P12715243124141037457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213973.P12715243124141037457

/-! ## A213973.P17672709017773786724

`3*A213972(n+1)-A213974(n+1)`
-/

namespace A213973.P17672709017773786724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213972 (n + 1) - A213974 (n + 1)

end

end A213973.P17672709017773786724

/-! ## A213973.P5867159219632007926

`∩[A239018(n+1), A007284(n)]`
-/

namespace A213973.P5867159219632007926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213973.P5867159219632007926

/-!
# A213974: List of imprimitive words over the alphabet {2,3}.

The programs for A213974, there is no canonical definition to state claims against.
-/

/-! ## A213974.P13157907737387010104

`∩[A032810(n+1), A239018(n+1)]`
-/

namespace A213974.P13157907737387010104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213974.P13157907737387010104

/-! ## A213974.P638272199464123490

`∩[A032810(n+1), A239019(n+1)]`
-/

namespace A213974.P638272199464123490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213974.P638272199464123490

/-! ## A213974.P4119497637406340960

`3*A213972(n+1)-A213973(n+1)`
-/

namespace A213974.P4119497637406340960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213972 (n + 1) - A213973 (n + 1)

end

end A213974.P4119497637406340960

/-! ## A213974.P16113003386957077320

`∩[A061371(n+1), A239018(n+1)]`
-/

namespace A213974.P16113003386957077320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213974.P16113003386957077320

/-! ## A213974.P16515748292599499138

`∩[A046034(n+1), A239018(n+1)]`
-/

namespace A213974.P16515748292599499138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213974.P16515748292599499138

/-!
# A213975: List of subwords of A003842 arranged in lexicographic order.

The programs for A213975, there is no canonical definition to state claims against.
-/

/-! ## A213975.P11532662272010574685

`A007931(A214207(n+1))`
-/

namespace A213975.P11532662272010574685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A214207 (n + 1)).toNat

end

end A213975.P11532662272010574685

/-! ## A213975.P12040347335615908707

`∩[A203565(n+1), A214215(n+1)]`
-/

namespace A213975.P12040347335615908707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213975.P12040347335615908707

/-! ## A213975.P8685548456746465125

`∩[A203565(n+1), A376677(n+1)]`
-/

namespace A213975.P8685548456746465125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213975.P8685548456746465125

/-! ## A213975.P18291252123687351477

`A214215(lt[A101417(n), A001223(n+1)])`
-/

namespace A213975.P18291252123687351477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214215 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A213975.P18291252123687351477

/-! ## A213975.P4972319599682550383

`A376677(lt[A030272(n), A001223(n+1)])`
-/

namespace A213975.P4972319599682550383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376677 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A213975.P4972319599682550383

/-!
# A213976: a(n) = n-th term of A106750 reversed.

The programs for A213976, there is no canonical definition to state claims against.
-/

/-! ## A213976.P17934393322229730608

`3*A108047(n+1)-A008352(n)`
-/

namespace A213976.P17934393322229730608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108047 (n + 1) - A008352 n

end

end A213976.P17934393322229730608

/-! ## A213976.P13829211951413791850

`3*A131293(n+1)-A008352(n)`
-/

namespace A213976.P13829211951413791850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131293 (n + 1) - A008352 n

end

end A213976.P13829211951413791850

/-! ## A213976.P14962633300760453328

`4*A108047(n+1)-A104458(n+1)`
-/

namespace A213976.P14962633300760453328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A108047 (n + 1) - A104458 (n + 1)

end

end A213976.P14962633300760453328

/-! ## A213976.P9562915821394468008

`4*A131293(n+1)-A104458(n+1)`
-/

namespace A213976.P9562915821394468008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131293 (n + 1) - A104458 (n + 1)

end

end A213976.P9562915821394468008

/-! ## A213976.P14382999675696538795

`A104458(n+1)+A108047(n+1)-A113526(n+1)`
-/

namespace A213976.P14382999675696538795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104458 (n + 1) + (A108047 (n + 1) - A113526 (n + 1))

end

end A213976.P14382999675696538795

/-!
# A213977: Number of n X n matrices with entries 0 and 1 and no 2 X 2 submatrix of form [ 1 1; 0 0 ].

The programs for A213977, there is no canonical definition to state claims against.
-/

/-! ## A213977.P14073348074213135193

`A269384(A055895(∑[n]))`
-/

namespace A213977.P14073348074213135193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269384 (A055895 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A213977.P14073348074213135193

/-!
# A213978: Number of solid standard Young tableaux of shape [[n,n,n],[n]].

The programs for A213978, there is no canonical definition to state claims against.
-/

/-! ## A213978.P17993631301087954544

`A214722(∑[n+3])`
-/

namespace A213978.P17993631301087954544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213978.P17993631301087954544

/-! ## A213978.P10585969893348580568

`lcm(A097807(n), A214722(A141214(n)))`
-/

namespace A213978.P10585969893348580568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A214722 (A141214 n).toNat)

end

end A213978.P10585969893348580568

/-! ## A213978.P2357925664991588010

`A214722(A141214(n))^A054977(n)²`
-/

namespace A213978.P2357925664991588010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214722 (A141214 n).toNat : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A213978.P2357925664991588010

/-! ## A213978.P1246431827793130818

`A214722(A141214(n))/A007318(C(2, n))`
-/

namespace A213978.P1246431827793130818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214722 (A141214 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A213978.P1246431827793130818

/-! ## A213978.P10916916913374637217

`A214722(A141214(n))/A000203(C(n, n²)!)`
-/

namespace A213978.P10916916913374637217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214722 (A141214 n).toNat : ℚ) / (A000203 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A213978.P10916916913374637217

/-!
# A213980: Let n = prime(1)^c_1 * prime(2)^c_2 * ... * prime(k)^c_k be the prime factorization of n. Set f(n) = n - 1 + c_1 + c_2 + ... + c_k and f_i, i>=0 (f_0(n) = n, f_1=f) is i-th iteration of f. a(n) is the minimal i such that f_i(n) is prime.

The programs for A213980, there is no canonical definition to state claims against.
-/

/-! ## A213980.P13785459438503920104

`A302242(A320924(3*n+4))%A072883(n+1)`
-/

namespace A213980.P13785459438503920104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302242 (A320924 (3 * n + 4)).toNat) (A072883 (n + 1))

end

end A213980.P13785459438503920104

/-! ## A213980.P15089786889116939178

`val(A312507(A007088(n)), A053669(n+1))`
-/

namespace A213980.P15089786889116939178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A312507 (A007088 n).toNat).toNat (A053669 (n + 1)).toNat

end

end A213980.P15089786889116939178

/-! ## A213980.P8701146246544579675

`A064532(A182937(n+1)+(n-A002522(n))²)`
-/

namespace A213980.P8701146246544579675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A182937 (n + 1) + ((n : ℤ) - A002522 n) ^ 2).toNat

end

end A213980.P8701146246544579675

/-! ## A213980.P13450475700734641782

`∑[A243144(n+5)]%A243145(n+1)`
-/

namespace A213980.P13450475700734641782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243144 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A243145 (n + 1))

end

end A213980.P13450475700734641782

/-! ## A213980.P10801863170195602012

`A102872(A102890(n+1))%A214340(n)`
-/

namespace A213980.P10801863170195602012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102872 (A102890 (n + 1)).toNat) (A214340 n)

end

end A213980.P10801863170195602012

/-!
# A213981: a(n) = the least prime p > prime(n+1) such that (p mod prime(n)) + (p mod prime(n+1)) is prime.

The programs for A213981, there is no canonical definition to state claims against.
-/

/-! ## A213981.P18047645727145282838

`p?[A089854(eq[1, A077008(n+2)])]`
-/

namespace A213981.P18047645727145282838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077008 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213981.P18047645727145282838

/-! ## A213981.P8586397371172631923

`p?[A077008(n+2)*A089854(n)]`
-/

namespace A213981.P8586397371172631923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077008 (n + 2) * A089854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213981.P8586397371172631923

/-!
# A213982: Least k >= 1 such that prime(n) +- k = 2^m * q, m >= 0, where q >= 2 is prime.

The programs for A213982, there is no canonical definition to state claims against.
-/

/-! ## A213982.P12865230062969453439

`gcd(A050873(A259862(n+1)), A196697(n+1))`
-/

namespace A213982.P12865230062969453439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050873 (A259862 (n + 1)).toNat) (A196697 (n + 1))

end

end A213982.P12865230062969453439

/-! ## A213982.P2897101980102626239

`gcd(A144331(n), A327103(A000203(n+1)))`
-/

namespace A213982.P2897101980102626239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144331 n) (A327103 (A000203 (n + 1)).toNat)

end

end A213982.P2897101980102626239

/-! ## A213982.P1824672909291217347

`A327103(gcd(A000203(n+1), A002805(n+1)))`
-/

namespace A213982.P1824672909291217347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (Int.gcd (A000203 (n + 1)) (A002805 (n + 1)))

end

end A213982.P1824672909291217347

/-! ## A213982.P12831462432648197331

`A030599(A048623(n+2))`
-/

namespace A213982.P12831462432648197331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030599 (A048623 (n + 2)).toNat

end

end A213982.P12831462432648197331

/-! ## A213982.P6811207408466567864

`gcd(A152831(n), A193050(n))`
-/

namespace A213982.P6811207408466567864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152831 n) (A193050 n)

end

end A213982.P6811207408466567864

/-!
# A213983: Smallest integer x >= 0 satisfying x^2 - y^2 = n^3.

The programs for A213983, there is no canonical definition to state claims against.
-/

/-! ## A213983.P18293304244233167313

`sqrt(n^3+A232267(n)²)`
-/

namespace A213983.P18293304244233167313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 3 : ℤ) + A232267 n ^ 2 : ℝ)

end

end A213983.P18293304244233167313

/-! ## A213983.P9708471711016305414

`floor(sqrt(A000578(n)+A232267(n)²))`
-/

namespace A213983.P9708471711016305414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000578 n + A232267 n ^ 2)

end

end A213983.P9708471711016305414

/-! ## A213983.P17862798863408545422

`sqrt(A000578(n)+A232267(n)²)*A054977(n)`
-/

namespace A213983.P17862798863408545422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000578 n + A232267 n ^ 2 : ℝ) * (A054977 n : ℝ)

end

end A213983.P17862798863408545422

/-! ## A213983.P2168122513706981058

`sqrt(A000578(n)+A232267(n)²)%A005904(n)`
-/

namespace A213983.P2168122513706981058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A000578 n + A232267 n ^ 2 : ℝ))) (A005904 n)

end

end A213983.P2168122513706981058

/-! ## A213983.P9740244889650459713

`sqrt((A000578(n)+A232267(n)²)%A027848(n+1))`
-/

namespace A213983.P9740244889650459713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A000578 n + A232267 n ^ 2) (A027848 (n + 1)) : ℝ)

end

end A213983.P9740244889650459713

/-! ## A213983.P14201797806919560343

`sqrt(A000578(n)+A232267(n)²)*A000040(n+1)%2`
-/

namespace A213983.P14201797806919560343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000578 n + A232267 n ^ 2 : ℝ) * (Int.tmod (A000040 (n + 1)) 2 : ℝ)

end

end A213983.P14201797806919560343

/-!
# A213984: Number of n X n 0..2 matrices whose square is also a 0..2 matrix.

The programs for A213984, there is no canonical definition to state claims against.
-/

/-! ## A213984.P17031870298066184601

`A213990(∑[n+2])`
-/

namespace A213984.P17031870298066184601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213984.P17031870298066184601

/-!
# A213985: Number of n X n 0..3 matrices whose square is also a 0..3 matrix.

The programs for A213985, there is no canonical definition to state claims against.
-/

/-! ## A213985.P5359769213093391103

`A213990(∑[n+3]+1)`
-/

namespace A213985.P5359769213093391103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213985.P5359769213093391103

/-!
# A213986: Number of n X n 0..4 matrices whose square is also a 0..4 matrix.

The programs for A213986, there is no canonical definition to state claims against.
-/

/-! ## A213986.P2272597167593029290

`A213990(∑[n+4]+3)`
-/

namespace A213986.P2272597167593029290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A213986.P2272597167593029290

/-!
# A213990: T(n,k)=Number of n X n 0..k matrices whose square is also a 0..k matrix.

The programs for A213990, there is no canonical definition to state claims against.
-/

/-! ## A213990.P2304560963550875834

`A094189(A025124(n+1)^3+1)`
-/

namespace A213990.P2304560963550875834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A025124 (n + 1) ^ 3 + 1).toNat

end

end A213990.P2304560963550875834

/-! ## A213990.P14484744791378173172

`A174617(A006882(n))+A067538(3*n+2)`
-/

namespace A213990.P14484744791378173172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174617 (A006882 n).toNat + A067538 (3 * n + 2)

end

end A213990.P14484744791378173172

/-!
# A213991: Number of 2 X 2 0..n matrices whose square is also a 0..n matrix.

The programs for A213991, there is no canonical definition to state claims against.
-/

/-! ## A213991.P210863049060438651

`A213990(∑[n+1]+2)`
-/

namespace A213991.P210863049060438651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213991.P210863049060438651

/-! ## A213991.P6561704165711229174

`record[gcd(A025581(n), A213990(n+3))]`
-/

namespace A213991.P6561704165711229174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A213990 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213991.P6561704165711229174

/-!
# A213992: Number of 3X3 0..n matrices whose square is also a 0..n matrix.

The programs for A213992, there is no canonical definition to state claims against.
-/

/-! ## A213992.P9987277333555289631

`A213990(∑[n+2]+4)`
-/

namespace A213992.P9987277333555289631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213992.P9987277333555289631

/-! ## A213992.P1637255605646436212

`A213990(A034856(n+1)+5)+char[7]`
-/

namespace A213992.P1637255605646436212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213992.P1637255605646436212

/-!
# A213993: Number of 4X4 0..n matrices whose square is also a 0..n matrix.

The programs for A213993, there is no canonical definition to state claims against.
-/

/-! ## A213993.P7515301400782152672

`A213990(A020752(n+1))`
-/

namespace A213993.P7515301400782152672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (A020752 (n + 1)).toNat

end

end A213993.P7515301400782152672

/-!
# A213996: Primes p=u^2+v^2 such that p+u or p+v is the next prime after p.

The programs for A213996, there is no canonical definition to state claims against.
-/

/-! ## A213996.P3378399827982231214

`record[A213995(n+1)^A214021(3*n+2)]`
-/

namespace A213996.P3378399827982231214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213995 (n + 1) : ℚ) ^ (A214021 (3 * n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213996.P3378399827982231214

/-! ## A213996.P591386216928543136

`A213995(∑[A003557(A003557(n!+2))])`
-/

namespace A213996.P591386216928543136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (Nat.factorial n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213996.P591386216928543136

/-! ## A213996.P13259080269917087851

`p?[C(A004773(n), A121444(n))]`
-/

namespace A213996.P13259080269917087851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004773 n).toNat (A121444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A213996.P13259080269917087851

/-!
# A213997: Number of integers between successive prime triples (p, p+2, p+6).

The programs for A213997, there is no canonical definition to state claims against.
-/

/-! ## A213997.P1183321586210479258

`floor((Δ[A098412(n+1)]-6)*tanh(7))`
-/

namespace A213997.P1183321586210479258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n - 6 : ℝ) * Real.tanh (7 : ℝ)⌋

end

end A213997.P1183321586210479258

/-! ## A213997.P9002744848999834645

`A014681(Δ[A073648(n+1)]-6)`
-/

namespace A213997.P9002744848999834645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (n + 1) - f1 n - 6).toNat

end

end A213997.P9002744848999834645

/-! ## A213997.P3463310154002198917

`A014681(Δ[A098412(n+1)]-6)`
-/

namespace A213997.P3463310154002198917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (n + 1) - f1 n - 6).toNat

end

end A213997.P3463310154002198917

/-! ## A213997.P11166853237510836829

`A004273((Δ[A073648(n+1)]-6)/2)`
-/

namespace A213997.P11166853237510836829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 6 : ℚ) / 2)).toNat

end

end A213997.P11166853237510836829

/-! ## A213997.P15979125288255328749

`A004273((Δ[A098412(n+1)]-6)/2)`
-/

namespace A213997.P15979125288255328749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 6 : ℚ) / 2)).toNat

end

end A213997.P15979125288255328749

/-! ## A213997.P11072003006585315966

`A004275(Δ[A098412(n+1)]-6)/2`
-/

namespace A213997.P11072003006585315966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (f1 (n + 1) - f1 n - 6).toNat : ℚ) / 2

end

end A213997.P11072003006585315966

/-! ## A213997.P12318610353772113798

`A163985((Δ[A098412(n+1)]-6)/2)`
-/

namespace A213997.P12318610353772113798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 6 : ℚ) / 2)).toNat

end

end A213997.P12318610353772113798

/-!
# A213998: Numerators of the triangle of fractions read by rows: pf(n,0) = 1, pf(n,n) = 1/(n+1) and pf(n+1,k) = pf(n,k) + pf(n,k-1) with 0 < k < n.

The programs for A213998, there is no canonical definition to state claims against.
-/

/-! ## A213998.P2070046230932541699

`A093411(A105954(n)*A347621(n))`
-/

namespace A213998.P2070046230932541699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A105954 n * A347621 n).toNat

end

end A213998.P2070046230932541699

/-! ## A213998.P3130644174724727048

`A093411(A105954(n)²)^(1/2)`
-/

namespace A213998.P3130644174724727048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A093411 (A105954 n ^ 2).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A213998.P3130644174724727048

/-! ## A213998.P12873375664162139946

`A000188(A093411(A105954(n)²))`
-/

namespace A213998.P12873375664162139946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A093411 (A105954 n ^ 2).toNat).toNat

end

end A213998.P12873375664162139946

/-! ## A213998.P18147205697718891355

`A093411(A105954(n)^A043283(n+1))`
-/

namespace A213998.P18147205697718891355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway ((A105954 n : ℚ) ^ (A043283 (n + 1) : ℤ))).toNat

end

end A213998.P18147205697718891355

/-! ## A213998.P10039982657401421665

`A093411(A105954(n)^A093818(n+1))`
-/

namespace A213998.P10039982657401421665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway ((A105954 n : ℚ) ^ (A093818 (n + 1) : ℤ))).toNat

end

end A213998.P10039982657401421665

/-!
# A213999: Denominators of the triangle of fractions read by rows: pf(n,0) = 1, pf(n,n) = 1/(n+1) and pf(n+1,k) = pf(n,k) + pf(n,k-1) with 0 < k < n.

The programs for A213999, there is no canonical definition to state claims against.
-/

/-! ## A213999.P6613587603274024129

`A002262(n)+A128428(A156953(n))²`
-/

namespace A213999.P6613587603274024129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A128428 (A156953 n).toNat ^ 2

end

end A213999.P6613587603274024129

/-! ## A213999.P5043820861896601703

`A002260(n+1)*A128428(A156953(n))`
-/

namespace A213999.P5043820861896601703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128428 (A156953 n).toNat

end

end A213999.P5043820861896601703

/-! ## A213999.P10860188248376451573

`A015052(A033918(n+1)*A247026(n))`
-/

namespace A213999.P10860188248376451573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A033918 (n + 1) * A247026 n).toNat

end

end A213999.P10860188248376451573

/-! ## A213999.P16747076943857315053

`A002260(n+1)*A092334(A274391(n))`
-/

namespace A213999.P16747076943857315053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A092334 (A274391 n).toNat

end

end A213999.P16747076943857315053

/-! ## A213999.P16082335169081910923

`A097285(2*n+1)*A225640(A354794(n))`
-/

namespace A213999.P16082335169081910923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * n + 1) * A225640 (A354794 n).toNat

end

end A213999.P16082335169081910923

