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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A230000: Triangular array read by rows: row n shows the coefficients of the polynomial u(n) = c(0) + c(1)*x + ... + c(k)*x^k which is the numerator of the n-th convergent of the continued fraction [1, 1/x, 1/x^2, ... ,1/x^n].

The programs for A230000, there is no canonical definition to state claims against.
-/

/-! ## A230000.P502486791251300752

`A367955(n+1)%A000005(A000230(n))`
-/

namespace A230000.P502486791251300752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367955 (n + 1)) (A000005 (A000230 n).toNat)

end

end A230000.P502486791251300752

/-! ## A230000.P3382903246040492262

`and(A323014(A242807(n+1)), A367955(n+1))`
-/

namespace A230000.P3382903246040492262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A323014 (A242807 (n + 1)).toNat) (A367955 (n + 1))

end

end A230000.P3382903246040492262

/-! ## A230000.P2894137466490587374

`A014577(A002473(n+1)*A020959(2*(n+2)))`
-/

namespace A230000.P2894137466490587374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A002473 (n + 1) * A020959 (2 * (n + 2))).toNat

end

end A230000.P2894137466490587374

/-! ## A230000.P13786736615250569467

`A133872(A112367(n)*A302929(n+1))`
-/

namespace A230000.P13786736615250569467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A112367 n * A302929 (n + 1)).toNat

end

end A230000.P13786736615250569467

/-! ## A230000.P17836234956820575462

`A354807(A288052(n)-char[A091926(n+1)]+2)`
-/

namespace A230000.P17836234956820575462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354807 (A288052 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 2).toNat

end

end A230000.P17836234956820575462

/-!
# A230001: Triangular array read by rows: row n shows the coefficients of the polynomial v(n) = d(0) + d(1)*x + ... + d(k)*x^k which is the denominator of the n-th convergent of the continued fraction [1, 1/x, 1/x^2, ... ,1/x^n].

The programs for A230001, there is no canonical definition to state claims against.
-/

/-! ## A230001.P16834551986137906638

`A000161(A234960(n+1))^A028242(A016116(n))`
-/

namespace A230001.P16834551986137906638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000161 (A234960 (n + 1)).toNat : ℚ) ^ (A028242 (A016116 n).toNat : ℤ)

end

end A230001.P16834551986137906638

/-! ## A230001.P456696493070076672

`A000161(A234960(n+1))^A280554(A133263(n))`
-/

namespace A230001.P456696493070076672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000161 (A234960 (n + 1)).toNat : ℚ) ^ (A280554 (A133263 n).toNat : ℤ)

end

end A230001.P456696493070076672

/-! ## A230001.P16207639737709481883

`A000161(A234960(n+1))^A125229(A279351(n+1))`
-/

namespace A230001.P16207639737709481883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000161 (A234960 (n + 1)).toNat : ℚ) ^ (A125229 (A279351 (n + 1)).toNat : ℤ)

end

end A230001.P16207639737709481883

/-! ## A230001.P4136850688733054363

`A000161(A234960(n+1))^A125229(A279355(n+1))`
-/

namespace A230001.P4136850688733054363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000161 (A234960 (n + 1)).toNat : ℚ) ^ (A125229 (A279355 (n + 1)).toNat : ℤ)

end

end A230001.P4136850688733054363

/-! ## A230001.P17089237996202372510

`A269242(A107826(n+1))^A048365(n)`
-/

namespace A230001.P17089237996202372510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269242 (A107826 (n + 1)).toNat : ℚ) ^ (A048365 n : ℤ)

end

end A230001.P17089237996202372510

/-!
# A230002: Array of coefficients of numerator polynomials of the rational function p(n, x - 1/x), where p(n,x) is the Fibonacci polynomial defined by p(1,x) = 1, p(2,x) = x, p(n,x) = x*p(n-1,x) + p(n-2,x).

The programs for A230002, there is no canonical definition to state claims against.
-/

/-! ## A230002.P9330828122561799668

`(-(comp[∑[2*n]]%2))^∑[n]`
-/

namespace A230002.P9330828122561799668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A230002.P9330828122561799668

/-! ## A230002.P11389765270782913720

`(-and(1, comp[∑[2*n]]))^∑[n]`
-/

namespace A230002.P11389765270782913720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A230002.P11389765270782913720

/-! ## A230002.P15097441934991781572

`sin((∑[char[n²]]²-n)*asin(1))`
-/

namespace A230002.P15097441934991781572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) : ℝ) * Real.arcsin (1 : ℝ))

end

end A230002.P15097441934991781572

/-! ## A230002.P4124283838838812324

`(-and(1, comp[n²+n])²)^∑[n]`
-/

namespace A230002.P4124283838838812324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2 : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A230002.P4124283838838812324

/-! ## A230002.P12327402672680460575

`((-1)^∑[n])%gcd(2, n-floor(sqrt(n)))`
-/

namespace A230002.P12327402672680460575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (Int.gcd 2 ((n : ℤ) - (Nat.sqrt n : ℤ)) : ℤ)

end

end A230002.P12327402672680460575

/-! ## A230002.P9521157671045362786

`(char[comp[∑[n]]+n]-1)^ceil(n/2)`
-/

namespace A230002.P9521157671045362786
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A230002.P9521157671045362786

/-! ## A230002.P12855171563195783007

`xor(n-floor(sqrt(n))², (-1)^∑[n])%2`
-/

namespace A230002.P12855171563195783007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A230002.P12855171563195783007

/-! ## A230002.P12222768213219596803

`((1-and(2, n+1))*comp[∑[2*n]])%2`
-/

namespace A230002.P12222768213219596803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (Nat.land 2 (n + 1) : ℤ)) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 2

end

end A230002.P12222768213219596803

/-! ## A230002.P8705107098663974741

`(round(1/2+n-round(sqrt(n))²)²/(1-and(2, n+1)))%2`
-/

namespace A230002.P8705107098663974741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2 : ℚ) / (1 - (Nat.land 2 (n + 1) : ℤ) : ℚ))) 2

end

end A230002.P8705107098663974741

/-! ## A230002.P16725113741371726128

`A056594(floor(sqrt(n))²+n)`
-/

namespace A230002.P16725113741371726128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Nat.sqrt n ^ 2 + n)

end

end A230002.P16725113741371726128

/-!
# A230008: E.g.f. A(x) satisfies: A'(x) = -1 + A(x) + A(x)^2.

The programs for A230008, there is no canonical definition to state claims against.
-/

/-! ## A230008.P2614230526173842601

`A005350(xor(round(n²/12), A005395(n+1)))`
-/

namespace A230008.P2614230526173842601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (Int.xor (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)) (A005395 (n + 1))).toNat

end

end A230008.P2614230526173842601

/-! ## A230008.P16535824449820357133

`A063195(A030973(n+1)+A001611(n))`
-/

namespace A230008.P16535824449820357133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A030973 (n + 1) + A001611 n).toNat

end

end A230008.P16535824449820357133

/-! ## A230008.P11166671784302647718

`A014200(A112709(n+1))-A033687(n)`
-/

namespace A230008.P11166671784302647718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A112709 (n + 1)).toNat - A033687 n

end

end A230008.P11166671784302647718

/-!
# A230010: a(n) = smallest prime p such that n*(p^2 + 1) + 1 is also prime or 0 if no such prime exists.

The programs for A230010, there is no canonical definition to state claims against.
-/

/-! ## A230010.P3137132801145222071

`A092419(floor(sqrt(A026862(n+2))))`
-/

namespace A230010.P3137132801145222071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092419 (Int.sqrt (A026862 (n + 2))).toNat

end

end A230010.P3137132801145222071

/-!
# A230016: Indices of primes in the tribonacci-like sequence, A214825.

The programs for A230016, there is no canonical definition to state claims against.
-/

/-! ## A230016.P10321406536147401283

`∑[dr(A293754(A006723(n)))]`
-/

namespace A230016.P10321406536147401283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A293754 (A006723 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230016.P10321406536147401283

/-! ## A230016.P10302450936174366764

`∑[A104619(A107247(n)+1)]`
-/

namespace A230016.P10302450936174366764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104619 (A107247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230016.P10302450936174366764

/-!
# A230017: Prime terms in the tribonacci-like sequence, A214825.

The programs for A230017, there is no canonical definition to state claims against.
-/

/-! ## A230017.P17576453768727751425

`A214825(A230016(n+1))`
-/

namespace A230017.P17576453768727751425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 (A230016 (n + 1)).toNat

end

end A230017.P17576453768727751425

/-! ## A230017.P10170041840842038249

`p?[a(n-gcd(2, n))+a(n-3)]` with `a(0)=3, a(1)=4, a(2)=3`
-/

namespace A230017.P10170041840842038249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 3] fun n f1 =>
  f1 (n - Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230017.P10170041840842038249

/-! ## A230017.P6712943843839405300

`p?[2*a(n-1)-a(n-4)]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7`
-/

namespace A230017.P6712943843839405300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230017.P6712943843839405300

/-! ## A230017.P6705852904747450413

`p?[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A230017.P6705852904747450413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230017.P6705852904747450413

/-! ## A230017.P16338211926433352401

`p?[A214825(n)]`
-/

namespace A230017.P16338211926433352401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230017.P16338211926433352401

/-!
# A230018: a(n) = (9*n^3 + 5*n)/2.

The programs for A230018, the canonical program `A230018.P11324627550067204267` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230018 has offset 1).

The definition of A230018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*(n+1)^3+5*(n+1))/2` (program `A230018.P13639776422963515060`, by `A230018.P13639776422963515060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230018.P13639776422963515060

`(9*(n+1)^3+5*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230018.P13639776422963515060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) ^ 3 + 5 * (n + 1) : ℚ) / 2

end

end A230018.P13639776422963515060

namespace A230018

/-- `(9*(n+1)^3+5*(n+1))/2` -/
def P13639776422963515060.Spec : Prop :=
  ∀ n, P13639776422963515060.a n = (A230018 (n + 1) : ℚ)

theorem P13639776422963515060.correct : P13639776422963515060.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A230018, Nat.add_sub_cancel, A230018.P13639776422963515060.a, A230018.P11324627550067204267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A230018, Nat.add_sub_cancel, A230018.P13639776422963515060.a, A230018.P11324627550067204267.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A230018

/-! ## A230018.P11324627550067204267

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=7, a(1)=41, a(2)=129, a(3)=298`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230018

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11324627550067204267.Spec : Prop :=
  ∀ n, P11324627550067204267.a n = A230018 (n + 1)

theorem P11324627550067204267.correct : P11324627550067204267.Spec := by
  intro n
  simp only [A230018, Nat.add_sub_cancel]

end A230018

/-! ## A230018.P15872979695610855865

`C(3*n+4, 3)+3*(n+1)`
-/

namespace A230018.P15872979695610855865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 4) 3 + 3 * (n + 1)

end

end A230018.P15872979695610855865

namespace A230018

/-- `C(3*n+4, 3)+3*(n+1)` -/
def P15872979695610855865.Spec : Prop :=
  ∀ n, (P15872979695610855865.a n : ℤ) = A230018 (n + 1)

end A230018

/-! ## A230018.P9412412999171347486

`A228887(n+1)+3*(n+1)`
-/

namespace A230018.P9412412999171347486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228887 (n + 1) + (3 * (n + 1) : ℤ)

end

end A230018.P9412412999171347486

namespace A230018

/-- `A228887(n+1)+3*(n+1)` -/
def P9412412999171347486.Spec : Prop :=
  ∀ n, P9412412999171347486.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P16907192461359052721

`A085788(n+1)+A005915(n)`
-/

namespace A230018.P16907192461359052721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1) + A005915 n

end

end A230018.P16907192461359052721

namespace A230018

/-- `A085788(n+1)+A005915(n)` -/
def P16907192461359052721.Spec : Prop :=
  ∀ n, P16907192461359052721.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P16540822633850469392

`A016777(n+1)*A143689(n+1)-1`
-/

namespace A230018.P16540822633850469392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) * A143689 (n + 1) - 1

end

end A230018.P16540822633850469392

namespace A230018

/-- `A016777(n+1)*A143689(n+1)-1` -/
def P16540822633850469392.Spec : Prop :=
  ∀ n, P16540822633850469392.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P6869938096175981356

`A289721(n+1)-2*(n+1)`
-/

namespace A230018.P6869938096175981356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289721 (n + 1) - (2 * (n + 1) : ℤ)

end

end A230018.P6869938096175981356

namespace A230018

/-- `A289721(n+1)-2*(n+1)` -/
def P6869938096175981356.Spec : Prop :=
  ∀ n, P6869938096175981356.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P2486526872573592914

`A081583(n+1)-(2*n+3)`
-/

namespace A230018.P2486526872573592914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081583 (n + 1) - (2 * n + 3 : ℤ)

end

end A230018.P2486526872573592914

namespace A230018

/-- `A081583(n+1)-(2*n+3)` -/
def P2486526872573592914.Spec : Prop :=
  ∀ n, P2486526872573592914.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P3541155948789422552

`9*A006003(n+1)-2*(n+1)`
-/

namespace A230018.P3541155948789422552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006003 (n + 1) - (2 * (n + 1) : ℤ)

end

end A230018.P3541155948789422552

namespace A230018

/-- `9*A006003(n+1)-2*(n+1)` -/
def P3541155948789422552.Spec : Prop :=
  ∀ n, P3541155948789422552.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P5305719967682614915

`A061804(n+1)+A006003(n+1)`
-/

namespace A230018.P5305719967682614915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 (n + 1) + A006003 (n + 1)

end

end A230018.P5305719967682614915

namespace A230018

/-- `A061804(n+1)+A006003(n+1)` -/
def P5305719967682614915.Spec : Prop :=
  ∀ n, P5305719967682614915.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P5359333307384017267

`A081266(n+1)+A006566(n+1)`
-/

namespace A230018.P5359333307384017267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 (n + 1) + A006566 (n + 1)

end

end A230018.P5359333307384017267

namespace A230018

/-- `A081266(n+1)+A006566(n+1)` -/
def P5359333307384017267.Spec : Prop :=
  ∀ n, P5359333307384017267.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P12339600304445458282

`A119536(n+1)+A004188(n+1)`
-/

namespace A230018.P12339600304445458282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 (n + 1) + A004188 (n + 1)

end

end A230018.P12339600304445458282

namespace A230018

/-- `A119536(n+1)+A004188(n+1)` -/
def P12339600304445458282.Spec : Prop :=
  ∀ n, P12339600304445458282.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P1436255226464492556

`A006003(n+1)+2*A061317(n+1)`
-/

namespace A230018.P1436255226464492556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + 2 * A061317 (n + 1)

end

end A230018.P1436255226464492556

namespace A230018

/-- `A006003(n+1)+2*A061317(n+1)` -/
def P1436255226464492556.Spec : Prop :=
  ∀ n, P1436255226464492556.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P10243841262923638916

`A003215(n+1)+n*A038764(n+1)`
-/

namespace A230018.P10243841262923638916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1) + (n : ℤ) * A038764 (n + 1)

end

end A230018.P10243841262923638916

namespace A230018

/-- `A003215(n+1)+n*A038764(n+1)` -/
def P10243841262923638916.Spec : Prop :=
  ∀ n, P10243841262923638916.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P6401072372095525888

`A169607(n+1)+A169607(n)-A000292(n)`
-/

namespace A230018.P6401072372095525888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169607 (n + 1) + (A169607 n - A000292 n)

end

end A230018.P6401072372095525888

namespace A230018

/-- `A169607(n+1)+A169607(n)-A000292(n)` -/
def P6401072372095525888.Spec : Prop :=
  ∀ n, P6401072372095525888.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P8635683744093776804

`A132112(n+1)+A132124(n+1)+A007585(n)`
-/

namespace A230018.P8635683744093776804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 (n + 1) + (A132124 (n + 1) + A007585 n)

end

end A230018.P8635683744093776804

namespace A230018

/-- `A132112(n+1)+A132124(n+1)+A007585(n)` -/
def P8635683744093776804.Spec : Prop :=
  ∀ n, P8635683744093776804.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P17181003421140401029

`A045943(n+1)+A228887(n+1)-A045943(n)`
-/

namespace A230018.P17181003421140401029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) + (A228887 (n + 1) - A045943 n)

end

end A230018.P17181003421140401029

namespace A230018

/-- `A045943(n+1)+A228887(n+1)-A045943(n)` -/
def P17181003421140401029.Spec : Prop :=
  ∀ n, P17181003421140401029.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P17386528674485960127

`A008589(n+1)+A000217(n+1)*A008591(n)`
-/

namespace A230018.P17386528674485960127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) + A000217 (n + 1) * A008591 n

end

end A230018.P17386528674485960127

namespace A230018

/-- `A008589(n+1)+A000217(n+1)*A008591(n)` -/
def P17386528674485960127.Spec : Prop :=
  ∀ n, P17386528674485960127.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P7542214079781926528

`A140090(n+1)+A005449(n+1)*A016777(n)`
-/

namespace A230018.P7542214079781926528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 (n + 1) + A005449 (n + 1) * A016777 n

end

end A230018.P7542214079781926528

namespace A230018

/-- `A140090(n+1)+A005449(n+1)*A016777(n)` -/
def P7542214079781926528.Spec : Prop :=
  ∀ n, P7542214079781926528.a n = A230018 (n + 1)

end A230018

/-! ## A230018.P10825023318719531647

`A006566(n+1)+A268685(n)/A095794(n+1)`
-/

namespace A230018.P10825023318719531647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006566 (n + 1) : ℚ) + (A268685 n : ℚ) / (A095794 (n + 1) : ℚ)

end

end A230018.P10825023318719531647

namespace A230018

/-- `A006566(n+1)+A268685(n)/A095794(n+1)` -/
def P10825023318719531647.Spec : Prop :=
  ∀ n, P10825023318719531647.a n = (A230018 (n + 1) : ℚ)

end A230018

/-!
# A230021: Numbers n such that sigma(n) = reversal(n+2).

The programs for A230021, there is no canonical definition to state claims against.
-/

/-! ## A230021.P6716175875699990897

`A230768(comp[7*n²])`
-/

namespace A230021.P6716175875699990897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230768 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A230021.P6716175875699990897

/-! ## A230021.P8975288929086415362

`record[A230768(n+1)/A088842(n+1)]`
-/

namespace A230021.P8975288929086415362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230768 (n + 1) : ℚ) / (A088842 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230021.P8975288929086415362

/-! ## A230021.P9052547089183516229

`A326461(n)+A230768(A230780(n+1))`
-/

namespace A230021.P9052547089183516229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326461 n + A230768 (A230780 (n + 1)).toNat

end

end A230021.P9052547089183516229

/-! ## A230021.P11036452313001215219

`or(A063524(n), A230768(A358521(n+1)))`
-/

namespace A230021.P11036452313001215219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A230768 (A358521 (n + 1)).toNat)

end

end A230021.P11036452313001215219

/-! ## A230021.P18224298772082230283

`A294929(n+1)+A230768(A358521(n+1))`
-/

namespace A230021.P18224298772082230283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (n + 1) + A230768 (A358521 (n + 1)).toNat

end

end A230021.P18224298772082230283

/-!
# A230022: a(n) = |{the number of primes in the interval (k*n, (k+1)*n]: k = 0, 1, ..., n-1}|.

The programs for A230022, there is no canonical definition to state claims against.
-/

/-! ## A230022.P7466272362291055357

`A213911(A212133(n)+A109823(n+1))`
-/

namespace A230022.P7466272362291055357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A212133 n + A109823 (n + 1)).toNat

end

end A230022.P7466272362291055357

/-! ## A230022.P13600076784052739202

`A006670(n+1)-A275947(A081668(n))`
-/

namespace A230022.P13600076784052739202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006670 (n + 1) - A275947 (A081668 n).toNat

end

end A230022.P13600076784052739202

/-! ## A230022.P8268138301664732973

`A000120(∑[A066048(A207500(n+1))])`
-/

namespace A230022.P8268138301664732973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A207500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230022.P8268138301664732973

/-! ## A230022.P6064940274356875653

`A092278(n)+A001221(A060692(n+1))`
-/

namespace A230022.P6064940274356875653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 n + A001221 (A060692 (n + 1)).toNat

end

end A230022.P6064940274356875653

/-!
# A230024: Final nonzero digit of n^n in base 16.

The programs for A230024, the canonical program `A230024.P6081935907338950513` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230024 has offset 1).

The definition of A230024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230024.P6081935907338950513

`((n+1)^A010873(n+1))%16`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230024

/-- `((n+1)^A010873(n+1))%16` -/
def P6081935907338950513.Spec : Prop :=
  ∀ n, P6081935907338950513.a n = A230024 (n + 1)

theorem P6081935907338950513.correct : P6081935907338950513.Spec := by
  intro n
  simp only [A230024, Nat.add_sub_cancel]

end A230024

/-!
# A230025: Triangular array: t(n, k) = number of occurrences of k as the number of outliers in all the partitions of n.

The programs for A230025, there is no canonical definition to state claims against.
-/

/-! ## A230025.P4321885102395341729

`A218907(∑[char[∑[n]]]²-n)`
-/

namespace A230025.P4321885102395341729
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A230025.P4321885102395341729

/-! ## A230025.P12275544068399953908

`A218907(A038722(n+1))%21`
-/

namespace A230025.P12275544068399953908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218907 (A038722 (n + 1)).toNat) 21

end

end A230025.P12275544068399953908

/-! ## A230025.P9299023231125309489

`A218907(A093995(n+1)-n)%21`
-/

namespace A230025.P9299023231125309489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218907 (A093995 (n + 1) - (n : ℤ)).toNat) 21

end

end A230025.P9299023231125309489

/-! ## A230025.P7156014411500717376

`A218907(A038722(n+1))+char[A017574(n)]`
-/

namespace A230025.P7156014411500717376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017574 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A230025.P7156014411500717376

/-! ## A230025.P16143136719672579928

`A218907(A038722(n+1))+val(A000040(n+5), 2)`
-/

namespace A230025.P16143136719672579928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 5)).toNat 2 : ℤ)

end

end A230025.P16143136719672579928

/-! ## A230025.P15504945141863591238

`A218907(A038722(n+1))^gcd(21, A000040(n+1))`
-/

namespace A230025.P15504945141863591238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (A038722 (n + 1)).toNat ^ Int.gcd 21 (A000040 (n + 1))

end

end A230025.P15504945141863591238

/-! ## A230025.P10724382543917610825

`A218907(A038722(n+1))^21^and(1, A000010(n+2))`
-/

namespace A230025.P10724382543917610825
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218907 (A038722 (n + 1)).toNat : ℝ) ^ ((21 : ℚ) ^ (Int.land 1 (A000010 (n + 2)) : ℤ) : ℝ)

end

end A230025.P10724382543917610825

/-! ## A230025.P10725599696009216997

`A218907(A038722(n+1))-(A000032(C(n, n+2))-2)`
-/

namespace A230025.P10725599696009216997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (A038722 (n + 1)).toNat - (A000032 (Nat.choose n (n + 2)) - 2)

end

end A230025.P10725599696009216997

/-! ## A230025.P1362978288030626011

`A218907(A038722(n+1))+char[(21*A005117(n+1))²]`
-/

namespace A230025.P1362978288030626011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * A005117 (n + 1)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218907 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A230025.P1362978288030626011

/-!
# A230026: Primes p such that f(f(p)) is prime, where f(n) = n^2-n-1 = A165900(n).

The programs for A230026, there is no canonical definition to state claims against.
-/

/-! ## A230026.P7603477620857689109

`ceil(sqrt(A237527(n+1)))`
-/

namespace A230026.P7603477620857689109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A237527 (n + 1) : ℝ)⌉

end

end A230026.P7603477620857689109

/-! ## A230026.P13351133129636328630

`A006530(floor(sqrt(A237527(n+1)))+1)`
-/

namespace A230026.P13351133129636328630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.sqrt (A237527 (n + 1)) + 1).toNat

end

end A230026.P13351133129636328630

/-! ## A230026.P10511559868016434712

`A007947(floor(sqrt(A237527(n+1)))+1)`
-/

namespace A230026.P10511559868016434712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.sqrt (A237527 (n + 1)) + 1).toNat

end

end A230026.P10511559868016434712

/-! ## A230026.P3483170481455543546

`A014963(floor(sqrt(A237527(n+1)))+1)`
-/

namespace A230026.P3483170481455543546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.sqrt (A237527 (n + 1)) + 1).toNat

end

end A230026.P3483170481455543546

/-! ## A230026.P9194675496523267998

`A020639(floor(sqrt(A237527(n+1)))+1)`
-/

namespace A230026.P9194675496523267998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.sqrt (A237527 (n + 1)) + 1).toNat

end

end A230026.P9194675496523267998

/-!
# A230027: Primes p such that f(f(p)) is prime, where f(x) = x^3-x^2-x-1.

The programs for A230027, there is no canonical definition to state claims against.
-/

/-! ## A230027.P9802901121604504597

`ceil(root(A237528(n+1), 3))`
-/

namespace A230027.P9802901121604504597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237528 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A230027.P9802901121604504597

/-! ## A230027.P17678843713012719444

`A020725(floor(root(A237528(n+1), 3)))`
-/

namespace A230027.P17678843713012719444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ⌊(A237528 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A230027.P17678843713012719444

/-! ## A230027.P15180537906321015470

`A014963(round(root(A237528(n+1), 3)))`
-/

namespace A230027.P15180537906321015470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A237528 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A230027.P15180537906321015470

/-! ## A230027.P14158378471548552225

`round(root(A237528(n+1), 3))%A189229(n+1)`
-/

namespace A230027.P14158378471548552225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A237528 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A189229 (n + 1))

end

end A230027.P14158378471548552225

/-!
# A230029: Primes p such that f(f(p)) is prime, where f(x) = x^4-x^3-x^2-x-1.

The programs for A230029, there is no canonical definition to state claims against.
-/

/-! ## A230029.P5453653701105667837

`ceil(root(A237639(n+1), 4))`
-/

namespace A230029.P5453653701105667837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A237639 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A230029.P5453653701105667837

/-! ## A230029.P6717235080886164339

`A006530(round(root(A237639(n+1), 4)))`
-/

namespace A230029.P6717235080886164339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A237639 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A230029.P6717235080886164339

/-! ## A230029.P16293466296747882973

`A014963(round(root(A237639(n+1), 4)))`
-/

namespace A230029.P16293466296747882973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A237639 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A230029.P16293466296747882973

/-! ## A230029.P17549796101614606234

`A020639(round(root(A237639(n+1), 4)))`
-/

namespace A230029.P17549796101614606234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A237639 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A230029.P17549796101614606234

/-!
# A230031: Number A(n,k) of tilings of a k X n rectangle using tetrominoes of any shape; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A230031, there is no canonical definition to state claims against.
-/

/-! ## A230031.P2012195714279654023

`A170959(A285192(n))²`
-/

namespace A230031.P2012195714279654023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170959 (A285192 n).toNat ^ 2

end

end A230031.P2012195714279654023

/-! ## A230031.P10595349898875477735

`val(A271826(A059922(n)), 6)`
-/

namespace A230031.P10595349898875477735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A271826 (A059922 n).toNat).toNat 6

end

end A230031.P10595349898875477735

/-! ## A230031.P13538009711903663066

`A035444(A001222(A118180(n)))²`
-/

namespace A230031.P13538009711903663066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A001222 (A118180 n).toNat).toNat ^ 2

end

end A230031.P13538009711903663066

/-! ## A230031.P3465746328886362551

`A023416(A001222(A154337(n)))²`
-/

namespace A230031.P3465746328886362551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001222 (A154337 n).toNat).toNat ^ 2

end

end A230031.P3465746328886362551

/-! ## A230031.P17159308761417172732

`A239261(C(A048720(n), A054576(2*n+1)))`
-/

namespace A230031.P17159308761417172732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239261 (Nat.choose (A048720 n).toNat (A054576 (2 * n + 1)).toNat)

end

end A230031.P17159308761417172732

/-!
# A230033: Number of perfect matchings in the graph C_7 X C_{2n}.

The programs for A230033, there is no canonical definition to state claims against.
-/

/-! ## A230033.P12181356961031679174

`A341741(A055999(n+5))`
-/

namespace A230033.P12181356961031679174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A055999 (n + 5)).toNat

end

end A230033.P12181356961031679174

/-! ## A230033.P7626682318897018832

`A341741(A052905(n+5)-1)`
-/

namespace A230033.P7626682318897018832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A052905 (n + 5) - 1).toNat

end

end A230033.P7626682318897018832

/-! ## A230033.P6844702816409657448

`A341741(A056115(n+3)+9)`
-/

namespace A230033.P6844702816409657448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A056115 (n + 3) + 9).toNat

end

end A230033.P6844702816409657448

/-! ## A230033.P15364107665412253766

`A341741(eq[7, A193592(n)]+1)`
-/

namespace A230033.P15364107665412253766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230033.P15364107665412253766

/-! ## A230033.P5260238756616805033

`A341741(eq[19, A033185(n+2)])`
-/

namespace A230033.P5260238756616805033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230033.P5260238756616805033

/-!
# A230034: Numbers which can't be represented as a sum of 3 relatively prime positive integers such that each pair of them is not coprime.

The programs for A230034, there is no canonical definition to state claims against.
-/

/-! ## A230034.P18102205850718262037

`lt[A063705(n), A024918(A024918(n+1))]`
-/

namespace A230034.P18102205850718262037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (A024918 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230034.P18102205850718262037

/-! ## A230034.P7151695749092747519

`lt[A324750(A328672(n)), A328672(n+1)]`
-/

namespace A230034.P7151695749092747519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (A328672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230034.P7151695749092747519

/-! ## A230034.P15921384268666456263

`lt[A066186(A127463(n)), A054964(2*n+1)]`
-/

namespace A230034.P15921384268666456263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A127463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230034.P15921384268666456263

/-! ## A230034.P14084241695327972265

`lt[A066186(A127463(n)), 2*n*A127046(3*n+1)]`
-/

namespace A230034.P14084241695327972265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A127463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A127046 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230034.P14084241695327972265

/-! ## A230034.P4017202272656960264

`lt[A051258(n), A033441(A033441(2*(n+1)))]`
-/

namespace A230034.P4017202272656960264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033441 (A033441 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230034.P4017202272656960264

/-! ## A230034.P2817644790189692908

`eq[1, A305195(A093178(n+1))]+1`
-/

namespace A230034.P2817644790189692908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A093178 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230034.P2817644790189692908

/-! ## A230034.P2798841754876020579

`eq[1, A305195(A093178(n*a(n-1)))]` with `a(0)=0`
-/

namespace A230034.P2798841754876020579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A305195 (A093178 ((n : ℤ) * f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230034.P2798841754876020579

/-! ## A230034.P132297813398081765

`eq[A054977(n), A305195(A093178(n))]`
-/

namespace A230034.P132297813398081765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230034.P132297813398081765

/-! ## A230034.P6818388556609177459

`eq[A057427(n), A305195(A093178(n))]`
-/

namespace A230034.P6818388556609177459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230034.P6818388556609177459

/-! ## A230034.P1743703184937465567

`eq[A178334(n), A305195(A093178(n))]`
-/

namespace A230034.P1743703184937465567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230034.P1743703184937465567

/-!
# A230035: Numbers which can be represented as a sum of 3 relatively prime positive integers such that each pair of them is not coprime.

The programs for A230035, there is no canonical definition to state claims against.
-/

/-! ## A230035.P16048341313136148609

`comp[A230034(n+1)-1]+1`
-/

namespace A230035.P16048341313136148609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230034 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A230035.P16048341313136148609

/-! ## A230035.P6469833725609109387

`lt[A082024(n), A337599(n)]`
-/

namespace A230035.P6469833725609109387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230035.P6469833725609109387

/-! ## A230035.P10624780053295354177

`comp[A023443(A230034(n+1))]+1`
-/

namespace A230035.P10624780053295354177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A230034 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A230035.P10624780053295354177

/-! ## A230035.P10589012875549637436

`comp[A230034(A028310(n))%A225723(n+1)]`
-/

namespace A230035.P10589012875549637436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230034 (A028310 n).toNat) (A225723 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230035.P10589012875549637436

/-! ## A230035.P1174553957399959562

`lt[A028982(A024816(2*n+3)), A063706(n)]`
-/

namespace A230035.P1174553957399959562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A024816 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230035.P1174553957399959562

/-!
# A230037: Number of ways to write n = x + y + z (0 < x <= y <= z) such that the four pairs {6*x-1, 6*x+1}, {6*y-1, 6*y+1}, {6*z-1, 6*z+1} and {6*x*y-1, 6*x*y+1} are twin prime pairs.

The programs for A230037, there is no canonical definition to state claims against.
-/

/-! ## A230037.P17462842029160555006

`A055734(A140144(n+1)*A334548(n))`
-/

namespace A230037.P17462842029160555006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055734 (A140144 (n + 1) * A334548 n).toNat

end

end A230037.P17462842029160555006

/-! ## A230037.P8304398165199049651

`A219025(A171820(n+1))%A317679(3*n+1)`
-/

namespace A230037.P8304398165199049651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219025 (A171820 (n + 1)).toNat) (A317679 (3 * n + 1))

end

end A230037.P8304398165199049651

/-! ## A230037.P3376347380466039004

`A128538(A231855(n+1))`
-/

namespace A230037.P3376347380466039004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128538 (A231855 (n + 1)).toNat

end

end A230037.P3376347380466039004

/-! ## A230037.P1900422963218915170

`A001221(or(floor(n/2)!, A004186(n)))`
-/

namespace A230037.P1900422963218915170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) (A004186 n)).toNat

end

end A230037.P1900422963218915170

/-! ## A230037.P18082270872918037165

`A001221(or(A004186(n), A081123(n)))`
-/

namespace A230037.P18082270872918037165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A004186 n) (A081123 n)).toNat

end

end A230037.P18082270872918037165

/-!
# A230038: Distance between n^2 and the smallest triangular number >= n^2.

The programs for A230038, the canonical program `A230038.P4892601751849355898` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230038 has offset 1).

The definition of A230038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230038.P5513862274329525568

`A057050(n+1)-1`
-/

namespace A230038.P5513862274329525568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057050 (n + 1) - 1

end

end A230038.P5513862274329525568

namespace A230038

/-- `A057050(n+1)-1` -/
def P5513862274329525568.Spec : Prop :=
  ∀ n, P5513862274329525568.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P1591624617438903670

`A023443(A057050(n+1))`
-/

namespace A230038.P1591624617438903670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A057050 (n + 1)).toNat

end

end A230038.P1591624617438903670

namespace A230038

/-- `A023443(A057050(n+1))` -/
def P1591624617438903670.Spec : Prop :=
  ∀ n, P1591624617438903670.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P4892601751849355898

`A064784(A022846(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230038

/-- `A064784(A022846(n+1))` -/
def P4892601751849355898.Spec : Prop :=
  ∀ n, P4892601751849355898.a n = A230038 (n + 1)

theorem P4892601751849355898.correct : P4892601751849355898.Spec := by
  intro n
  simp only [A230038, Nat.add_sub_cancel]

end A230038

/-! ## A230038.P2492127441775140872

`∑[A214848(n)]-A057049(n+1)`
-/

namespace A230038.P2492127441775140872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057049 (n + 1)

end

end A230038.P2492127441775140872

namespace A230038

/-- `∑[A214848(n)]-A057049(n+1)` -/
def P2492127441775140872.Spec : Prop :=
  ∀ n, P2492127441775140872.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P5996644488337344238

`A057049(A003153(n+1))-(n+1)`
-/

namespace A230038.P5996644488337344238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057049 (A003153 (n + 1)).toNat - (n + 1 : ℤ)

end

end A230038.P5996644488337344238

namespace A230038

/-- `A057049(A003153(n+1))-(n+1)` -/
def P5996644488337344238.Spec : Prop :=
  ∀ n, P5996644488337344238.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P13823942120809430888

`A022846(n+1)-A057049(n+1)`
-/

namespace A230038.P13823942120809430888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n + 1) - A057049 (n + 1)

end

end A230038.P13823942120809430888

namespace A230038

/-- `A022846(n+1)-A057049(n+1)` -/
def P13823942120809430888.Spec : Prop :=
  ∀ n, P13823942120809430888.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P17618125877772375471

`A000217(A022846(n+1))-A000290(n+1)`
-/

namespace A230038.P17618125877772375471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A022846 (n + 1)).toNat - A000290 (n + 1)

end

end A230038.P17618125877772375471

namespace A230038

/-- `A000217(A022846(n+1))-A000290(n+1)` -/
def P17618125877772375471.Spec : Prop :=
  ∀ n, P17618125877772375471.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P6983396404409679520

`A059253(A163357(n*(n+2)))`
-/

namespace A230038.P6983396404409679520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163357 (n * (n + 2))).toNat

end

end A230038.P6983396404409679520

namespace A230038

/-- `A059253(A163357(n*(n+2)))` -/
def P6983396404409679520.Spec : Prop :=
  ∀ n, P6983396404409679520.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P10262152733951610938

`A059252(A163359(n*(n+2)))`
-/

namespace A230038.P10262152733951610938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163359 (n * (n + 2))).toNat

end

end A230038.P10262152733951610938

namespace A230038

/-- `A059252(A163359(n*(n+2)))` -/
def P10262152733951610938.Spec : Prop :=
  ∀ n, P10262152733951610938.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P4636642492162113299

`A163528(A163334(n*(n+2)))`
-/

namespace A230038.P4636642492162113299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163334 (n * (n + 2))).toNat

end

end A230038.P4636642492162113299

namespace A230038

/-- `A163528(A163334(n*(n+2)))` -/
def P4636642492162113299.Spec : Prop :=
  ∀ n, P4636642492162113299.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P14420253698056917099

`A025581(n*(n+2))`
-/

namespace A230038.P14420253698056917099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n * (n + 2))

end

end A230038.P14420253698056917099

namespace A230038

/-- `A025581(n*(n+2))` -/
def P14420253698056917099.Spec : Prop :=
  ∀ n, P14420253698056917099.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P14439275879238075749

`sqrt(A095831((n+1)²))`
-/

namespace A230038.P14439275879238075749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A095831 ((n + 1) ^ 2) : ℝ)

end

end A230038.P14439275879238075749

namespace A230038

/-- `sqrt(A095831((n+1)²))` -/
def P14439275879238075749.Spec : Prop :=
  ∀ n, P14439275879238075749.a n = (A230038 (n + 1) : ℝ)

end A230038

/-! ## A230038.P16763352720868988783

`A004736((n+1)²)-1`
-/

namespace A230038.P16763352720868988783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 ((n + 1) ^ 2) - 1

end

end A230038.P16763352720868988783

namespace A230038

/-- `A004736((n+1)²)-1` -/
def P16763352720868988783.Spec : Prop :=
  ∀ n, P16763352720868988783.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P17604150760576723527

`A057554(2*(n+1)²)`
-/

namespace A230038.P17604150760576723527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * (n + 1) ^ 2)

end

end A230038.P17604150760576723527

namespace A230038

/-- `A057554(2*(n+1)²)` -/
def P17604150760576723527.Spec : Prop :=
  ∀ n, P17604150760576723527.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P6031457774984555038

`log2(A130321(n*(n+2)))`
-/

namespace A230038.P6031457774984555038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 (n * (n + 2)) : ℝ)

end

end A230038.P6031457774984555038

namespace A230038

/-- `log2(A130321(n*(n+2)))` -/
def P6031457774984555038.Spec : Prop :=
  ∀ n, P6031457774984555038.a n = (A230038 (n + 1) : ℝ)

end A230038

/-! ## A230038.P10800497156139605712

`sqrt(A055461((n+1)²))-1`
-/

namespace A230038.P10800497156139605712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 ((n + 1) ^ 2) : ℝ) - 1

end

end A230038.P10800497156139605712

namespace A230038

/-- `sqrt(A055461((n+1)²))-1` -/
def P10800497156139605712.Spec : Prop :=
  ∀ n, P10800497156139605712.a n = (A230038 (n + 1) : ℝ)

end A230038

/-! ## A230038.P3444381329891537074

`abs(1-A004736(xor(n, -1)²))`
-/

namespace A230038.P3444381329891537074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004736 (Int.xor (n : ℤ) (-1) ^ 2).toNat|

end

end A230038.P3444381329891537074

namespace A230038

/-- `abs(1-A004736(xor(n, -1)²))` -/
def P3444381329891537074.Spec : Prop :=
  ∀ n, P3444381329891537074.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P7261305343658273571

`abs(1-A004736(∑[2*n+1]))`
-/

namespace A230038.P7261305343658273571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004736 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A230038.P7261305343658273571

namespace A230038

/-- `abs(1-A004736(∑[2*n+1]))` -/
def P7261305343658273571.Spec : Prop :=
  ∀ n, P7261305343658273571.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P17443781847940764213

`A127739((n+1)²)-(n+1)²`
-/

namespace A230038.P17443781847940764213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A230038.P17443781847940764213

namespace A230038

/-- `A127739((n+1)²)-(n+1)²` -/
def P17443781847940764213.Spec : Prop :=
  ∀ n, P17443781847940764213.a n = A230038 (n + 1)

end A230038

/-! ## A230038.P2232229238767358490

`abs(A004736(∑[n+1+n])-1)`
-/

namespace A230038.P2232229238767358490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (∑ j ∈ Finset.range (n + 1), f1 j) - 1|

end

end A230038.P2232229238767358490

namespace A230038

/-- `abs(A004736(∑[n+1+n])-1)` -/
def P2232229238767358490.Spec : Prop :=
  ∀ n, P2232229238767358490.a n = A230038 (n + 1)

end A230038

/-!
# A230039: Primes p such that 2*p+1 is not prime and 2*p+3 is prime.

The programs for A230039, the canonical program `A230039.P12683130028175782261` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230039 has offset 1).

The definition of A230039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230039.P531859803343136896

`∩[A023204(n+1), A053176(n+1)]`
-/

namespace A230039.P531859803343136896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P531859803343136896

namespace A230039

/-- `∩[A023204(n+1), A053176(n+1)]` -/
def P531859803343136896.Spec : Prop :=
  ∀ n, (P531859803343136896.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P12683130028175782261

`p?[A104279(n+1)-1]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A230039

/-- `p?[A104279(n+1)-1]` -/
def P12683130028175782261.Spec : Prop :=
  ∀ n, P12683130028175782261.a n = A230039 (n + 1)

theorem P12683130028175782261.correct : P12683130028175782261.Spec := by
  intro n
  simp only [A230039, Nat.add_sub_cancel]

end A230039

/-! ## A230039.P2236665113982607294

`∩[A023204(n+1), A156543(n+1)]`
-/

namespace A230039.P2236665113982607294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P2236665113982607294

namespace A230039

/-- `∩[A023204(n+1), A156543(n+1)]` -/
def P2236665113982607294.Spec : Prop :=
  ∀ n, (P2236665113982607294.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P7069637848844325951

`∩[A053176(n+1), A067076(n+1)]`
-/

namespace A230039.P7069637848844325951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P7069637848844325951

namespace A230039

/-- `∩[A053176(n+1), A067076(n+1)]` -/
def P7069637848844325951.Spec : Prop :=
  ∀ n, (P7069637848844325951.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P9953197116882938826

`p?[lt[A101264(n), A101264(n+1)]]`
-/

namespace A230039.P9953197116882938826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230039.P9953197116882938826

namespace A230039

/-- `p?[lt[A101264(n), A101264(n+1)]]` -/
def P9953197116882938826.Spec : Prop :=
  ∀ n, (P9953197116882938826.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P15734601015805492247

`p?[lt[A300238(2*n+3), A300227(2*n+1)]]`
-/

namespace A230039.P15734601015805492247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300238 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300227 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230039.P15734601015805492247

namespace A230039

/-- `p?[lt[A300238(2*n+3), A300227(2*n+1)]]` -/
def P15734601015805492247.Spec : Prop :=
  ∀ n, (P15734601015805492247.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P7078707784061094533

`∩[A023204(n+1), A079698(n)]`
-/

namespace A230039.P7078707784061094533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P7078707784061094533

namespace A230039

/-- `∩[A023204(n+1), A079698(n)]` -/
def P7078707784061094533.Spec : Prop :=
  ∀ n, (P7078707784061094533.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P12242331644709658619

`∩[A023204(n+1), A396685(n+1)]`
-/

namespace A230039.P12242331644709658619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P12242331644709658619

namespace A230039

/-- `∩[A023204(n+1), A396685(n+1)]` -/
def P12242331644709658619.Spec : Prop :=
  ∀ n, (P12242331644709658619.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P6941075951821827810

`∩[A023204(n+1), A166602(n+1)]`
-/

namespace A230039.P6941075951821827810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P6941075951821827810

namespace A230039

/-- `∩[A023204(n+1), A166602(n+1)]` -/
def P6941075951821827810.Spec : Prop :=
  ∀ n, (P6941075951821827810.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P7422559268793665981

`∩[A023204(n+1), A393401(n+1)]`
-/

namespace A230039.P7422559268793665981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P7422559268793665981

namespace A230039

/-- `∩[A023204(n+1), A393401(n+1)]` -/
def P7422559268793665981.Spec : Prop :=
  ∀ n, (P7422559268793665981.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P10460949947245293514

`∩[A023204(n+1), A079695(n+1)]`
-/

namespace A230039.P10460949947245293514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P10460949947245293514

namespace A230039

/-- `∩[A023204(n+1), A079695(n+1)]` -/
def P10460949947245293514.Spec : Prop :=
  ∀ n, (P10460949947245293514.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P16066398704791178971

`∩[A023204(n+1), A328414(n+1)]`
-/

namespace A230039.P16066398704791178971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P16066398704791178971

namespace A230039

/-- `∩[A023204(n+1), A328414(n+1)]` -/
def P16066398704791178971.Spec : Prop :=
  ∀ n, (P16066398704791178971.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P11290755429672685459

`∩[A023204(n+1), A226567(n+1)]`
-/

namespace A230039.P11290755429672685459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P11290755429672685459

namespace A230039

/-- `∩[A023204(n+1), A226567(n+1)]` -/
def P11290755429672685459.Spec : Prop :=
  ∀ n, (P11290755429672685459.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P3563019414153612768

`p?[floor(p?[A014092(n+1)]/2)-1]`
-/

namespace A230039.P3563019414153612768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230039.P3563019414153612768

namespace A230039

/-- `p?[floor(p?[A014092(n+1)]/2)-1]` -/
def P3563019414153612768.Spec : Prop :=
  ∀ n, P3563019414153612768.a n = A230039 (n + 1)

end A230039

/-! ## A230039.P2270651189803456124

`∩[A023204(n+1), A047845(n+1)]`
-/

namespace A230039.P2270651189803456124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230039.P2270651189803456124

namespace A230039

/-- `∩[A023204(n+1), A047845(n+1)]` -/
def P2270651189803456124.Spec : Prop :=
  ∀ n, (P2270651189803456124.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P16199222319862295832

`eq[A053193(n+1), A339579(n+1)]`
-/

namespace A230039.P16199222319862295832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230039.P16199222319862295832

namespace A230039

/-- `eq[A053193(n+1), A339579(n+1)]` -/
def P16199222319862295832.Spec : Prop :=
  ∀ n, (P16199222319862295832.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P1659309508870956726

`eq[A060266(n+1), A339579(n+1)]`
-/

namespace A230039.P1659309508870956726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230039.P1659309508870956726

namespace A230039

/-- `eq[A060266(n+1), A339579(n+1)]` -/
def P1659309508870956726.Spec : Prop :=
  ∀ n, (P1659309508870956726.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P3583137248670400710

`eq[A073310(n+1), A339579(n+1)]`
-/

namespace A230039.P3583137248670400710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230039.P3583137248670400710

namespace A230039

/-- `eq[A073310(n+1), A339579(n+1)]` -/
def P3583137248670400710.Spec : Prop :=
  ∀ n, (P3583137248670400710.a n : ℤ) = A230039 (n + 1)

end A230039

/-! ## A230039.P4002150383321921131

`p?[(n+1)*A319395(A060266(n+1)²)]`
-/

namespace A230039.P4002150383321921131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319395 (A060266 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230039.P4002150383321921131

namespace A230039

/-- `p?[(n+1)*A319395(A060266(n+1)²)]` -/
def P4002150383321921131.Spec : Prop :=
  ∀ n, P4002150383321921131.a n = A230039 (n + 1)

end A230039

/-!
# A230041: Primes related to the strictly increasing subsequence of A053666.

The programs for A230041, there is no canonical definition to state claims against.
-/

/-! ## A230041.P12574153892917194109

`∩[A069802(n+1), A216437(n+1)]`
-/

namespace A230041.P12574153892917194109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230041.P12574153892917194109

/-! ## A230041.P12612482602331984190

`A089366(A121946(n))`
-/

namespace A230041.P12612482602331984190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089366 (A121946 n).toNat

end

end A230041.P12612482602331984190

/-! ## A230041.P13960380642700601995

`A089366(A299731(n))`
-/

namespace A230041.P13960380642700601995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089366 (A299731 n).toNat

end

end A230041.P13960380642700601995

/-! ## A230041.P4355528546065267444

`A089366(A173564(n+1))`
-/

namespace A230041.P4355528546065267444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089366 (A173564 (n + 1)).toNat

end

end A230041.P4355528546065267444

/-! ## A230041.P10235840366408509421

`A089366(A226635(n+1))`
-/

namespace A230041.P10235840366408509421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089366 (A226635 (n + 1)).toNat

end

end A230041.P10235840366408509421

/-!
# A230042: Palindromic primes with strictly increasing product of digits.

The programs for A230042, there is no canonical definition to state claims against.
-/

/-! ## A230042.P1178930325743336139

`p?[A007706(A262229(n+1))*A230047(n+1)]`
-/

namespace A230042.P1178930325743336139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (A262229 (n + 1)).toNat * A230047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230042.P1178930325743336139

/-! ## A230042.P4589945869867104527

`A230047(lt[A230047(n+1)², A066430(n+1)])`
-/

namespace A230042.P4589945869867104527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230047 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230047 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230042.P4589945869867104527

/-! ## A230042.P12105819545706147466

`filter[A230046(n+1), A071026(#)]`
-/

namespace A230042.P12105819545706147466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A230042.P12105819545706147466

/-! ## A230042.P17360978905090017508

`filter[A230046(n+1), A106465(#)]`
-/

namespace A230042.P17360978905090017508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106465 (f1 j).toNat = 1) n)

end

end A230042.P17360978905090017508

/-! ## A230042.P12458737338344071531

`filter[A230047(n+1), A106465(#)]`
-/

namespace A230042.P12458737338344071531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106465 (f1 j).toNat = 1) n)

end

end A230042.P12458737338344071531

/-!
# A230044: Nonnegative numbers k such that k plus a perfect square is a triangular number.

The programs for A230044, the canonical program `A230044.P12949410562350280572` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230044 has offset 1).

The definition of A230044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230044.P12949410562350280572

`∪[A000217(n), A281902(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230044

/-- `∪[A000217(n), A281902(n+1)]` -/
def P12949410562350280572.Spec : Prop :=
  ∀ n, (P12949410562350280572.a n : ℤ) = A230044 (n + 1)

theorem P12949410562350280572.correct : P12949410562350280572.Spec := by
  intro n
  simp only [A230044, Nat.add_sub_cancel]

end A230044

/-! ## A230044.P5969713014952753008

`∪[A117142(n+1), A281902(n+1)]`
-/

namespace A230044.P5969713014952753008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230044.P5969713014952753008

namespace A230044

/-- `∪[A117142(n+1), A281902(n+1)]` -/
def P5969713014952753008.Spec : Prop :=
  ∀ n, (P5969713014952753008.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P15710789941208243729

`lt[0, A295290(n)+1]`
-/

namespace A230044.P15710789941208243729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295290 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A230044.P15710789941208243729

namespace A230044

/-- `lt[0, A295290(n)+1]` -/
def P15710789941208243729.Spec : Prop :=
  ∀ n, (P15710789941208243729.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P6272618421890412679

`lt[A026741(n)-1, A295290(n)]`
-/

namespace A230044.P6272618421890412679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230044.P6272618421890412679

namespace A230044

/-- `lt[A026741(n)-1, A295290(n)]` -/
def P6272618421890412679.Spec : Prop :=
  ∀ n, (P6272618421890412679.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P13293962326193716761

`lt[A099563(n)-1, A295290(n)]`
-/

namespace A230044.P13293962326193716761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230044.P13293962326193716761

namespace A230044

/-- `lt[A099563(n)-1, A295290(n)]` -/
def P13293962326193716761.Spec : Prop :=
  ∀ n, (P13293962326193716761.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P10823075401307561491

`record[n%(A295290(n)+A000010(n+1))]`
-/

namespace A230044.P10823075401307561491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A295290 n + A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230044.P10823075401307561491

namespace A230044

/-- `record[n%(A295290(n)+A000010(n+1))]` -/
def P10823075401307561491.Spec : Prop :=
  ∀ n, P10823075401307561491.a n = A230044 (n + 1)

end A230044

/-! ## A230044.P10519846462713690790

`eq[3, dr(A135453(A295290(n)+1))]`
-/

namespace A230044.P10519846462713690790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A135453 (A295290 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230044.P10519846462713690790

namespace A230044

/-- `eq[3, dr(A135453(A295290(n)+1))]` -/
def P10519846462713690790.Spec : Prop :=
  ∀ n, (P10519846462713690790.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P11191708901340253416

`lt[1, A035185(A017077(n))+1]`
-/

namespace A230044.P11191708901340253416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A017077 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A230044.P11191708901340253416

namespace A230044

/-- `lt[1, A035185(A017077(n))+1]` -/
def P11191708901340253416.Spec : Prop :=
  ∀ n, (P11191708901340253416.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P5703902877844772779

`lt[1, A161515(n)²+1]`
-/

namespace A230044.P5703902877844772779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A230044.P5703902877844772779

namespace A230044

/-- `lt[1, A161515(n)²+1]` -/
def P5703902877844772779.Spec : Prop :=
  ∀ n, (P5703902877844772779.a n : ℤ) = A230044 (n + 1)

end A230044

/-! ## A230044.P2141738084715621983

`eq[1, A346009(A161515(n)²+1)]`
-/

namespace A230044.P2141738084715621983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346009 (A161515 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230044.P2141738084715621983

namespace A230044

/-- `eq[1, A346009(A161515(n)²+1)]` -/
def P2141738084715621983.Spec : Prop :=
  ∀ n, (P2141738084715621983.a n : ℤ) = A230044 (n + 1)

end A230044

/-!
# A230045: Palindromic primes with strictly increasing sum of digits.

The programs for A230045, there is no canonical definition to state claims against.
-/

/-! ## A230045.P524356814904980414

`A070245(record[A230199(n+1)])`
-/

namespace A230045.P524356814904980414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230045.P524356814904980414

/-! ## A230045.P7231056354533092747

`A070245(record[∑{digits}[A002385(n+1), #]])`
-/

namespace A230045.P7231056354533092747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070245 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A230045.P7231056354533092747

/-! ## A230045.P16139004038195645279

`filter[A230042(n+1), A115517(#)]`
-/

namespace A230045.P16139004038195645279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A230045.P16139004038195645279

/-! ## A230045.P1630313415108166243

`∩[A107909(n), A230042(n+1)]`
-/

namespace A230045.P1630313415108166243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230045.P1630313415108166243

/-!
# A230046: Palindromic primes with nondecreasing sum of digits.

The programs for A230046, there is no canonical definition to state claims against.
-/

/-! ## A230046.P6113133565417546839

`p?[A056142(A099649(n+1))]`
-/

namespace A230046.P6113133565417546839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A099649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230046.P6113133565417546839

/-! ## A230046.P15492586439861222022

`p?[A056525(A341763(n+1))]`
-/

namespace A230046.P15492586439861222022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A341763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230046.P15492586439861222022

/-! ## A230046.P12845994779002531257

`A083434(p?[∑[A083415(2*(n+2))]])`
-/

namespace A230046.P12845994779002531257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230046.P12845994779002531257

/-! ## A230046.P17027747377281738497

`∩[A075239(n+1), A193407(n+1)]`
-/

namespace A230046.P17027747377281738497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230046.P17027747377281738497

/-!
# A230047: Palindromic primes with nondecreasing product of digits.

The programs for A230047, there is no canonical definition to state claims against.
-/

/-! ## A230047.P1497747254952350918

`A083434(p?[record[A222210(n)]])`
-/

namespace A230047.P1497747254952350918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230047.P1497747254952350918

/-! ## A230047.P9756688275975357240

`p?[A002385(n+1)%A084092(A220349(n+1))]`
-/

namespace A230047.P9756688275975357240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002385 (n + 1)) (A084092 (A220349 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230047.P9756688275975357240

/-!
# A230048: Squarefree odious numbers.

The programs for A230048, the canonical program `A230048.P9001472186708211094` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230048 has offset 1).

The definition of A230048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230048.P13178993603542785929

`record[A268669(A005117(n+1))]`
-/

namespace A230048.P13178993603542785929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P13178993603542785929

namespace A230048

/-- `record[A268669(A005117(n+1))]` -/
def P13178993603542785929.Spec : Prop :=
  ∀ n, P13178993603542785929.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P4032146991445402254

`filter[A005117(n+1), A361018(#)]`
-/

namespace A230048.P4032146991445402254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P4032146991445402254

namespace A230048

/-- `filter[A005117(n+1), A361018(#)]` -/
def P4032146991445402254.Spec : Prop :=
  ∀ n, P4032146991445402254.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P10988150832340011116

`filter[A348506(n+1), A361018(#)]`
-/

namespace A230048.P10988150832340011116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P10988150832340011116

namespace A230048

/-- `filter[A348506(n+1), A361018(#)]` -/
def P10988150832340011116.Spec : Prop :=
  ∀ n, P10988150832340011116.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P14596115118679683405

`filter[A348499(n+1), A361018(#)]`
-/

namespace A230048.P14596115118679683405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P14596115118679683405

namespace A230048

/-- `filter[A348499(n+1), A361018(#)]` -/
def P14596115118679683405.Spec : Prop :=
  ∀ n, P14596115118679683405.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P11115342772119716294

`record[∏{p}[comp[xor(n, 2*n)], #]]`
-/

namespace A230048.P11115342772119716294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P11115342772119716294

namespace A230048

/-- `record[∏{p}[comp[xor(n, 2*n)], #]]` -/
def P11115342772119716294.Spec : Prop :=
  ∀ n, (P11115342772119716294.a n : ℤ) = A230048 (n + 1)

end A230048

/-! ## A230048.P16246515080994272888

`record[A007913(comp[xor(n, 2*n)])]`
-/

namespace A230048.P16246515080994272888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P16246515080994272888

namespace A230048

/-- `record[A007913(comp[xor(n, 2*n)])]` -/
def P16246515080994272888.Spec : Prop :=
  ∀ n, P16246515080994272888.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P2756023172830418352

`record[A007947(comp[xor(n, 2*n)])]`
-/

namespace A230048.P2756023172830418352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P2756023172830418352

namespace A230048

/-- `record[A007947(comp[xor(n, 2*n)])]` -/
def P2756023172830418352.Spec : Prop :=
  ∀ n, P2756023172830418352.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P9001472186708211094

`record[A007913(A000069(n+1))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230048

/-- `record[A007913(A000069(n+1))]` -/
def P9001472186708211094.Spec : Prop :=
  ∀ n, P9001472186708211094.a n = A230048 (n + 1)

theorem P9001472186708211094.correct : P9001472186708211094.Spec := by
  intro n
  simp only [A230048, Nat.add_sub_cancel]

end A230048

/-! ## A230048.P11517584947646562835

`filter[A000069(n+1), A008966(#)]`
-/

namespace A230048.P11517584947646562835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A230048.P11517584947646562835

namespace A230048

/-- `filter[A000069(n+1), A008966(#)]` -/
def P11517584947646562835.Spec : Prop :=
  ∀ n, P11517584947646562835.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P1470205781010063810

`∩[A000069(n+1), A005117(n+1)]`
-/

namespace A230048.P1470205781010063810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230048.P1470205781010063810

namespace A230048

/-- `∩[A000069(n+1), A005117(n+1)]` -/
def P1470205781010063810.Spec : Prop :=
  ∀ n, (P1470205781010063810.a n : ℤ) = A230048 (n + 1)

end A230048

/-! ## A230048.P5424562162570778335

`filter[A064594(n+1), A361018(#)]`
-/

namespace A230048.P5424562162570778335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P5424562162570778335

namespace A230048

/-- `filter[A064594(n+1), A361018(#)]` -/
def P5424562162570778335.Spec : Prop :=
  ∀ n, P5424562162570778335.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P16046565336578236640

`filter[A005117(n+1), A010060(#)]`
-/

namespace A230048.P16046565336578236640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A230048.P16046565336578236640

namespace A230048

/-- `filter[A005117(n+1), A010060(#)]` -/
def P16046565336578236640.Spec : Prop :=
  ∀ n, P16046565336578236640.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P5546506689495189510

`filter[A143719(n+1), A361018(#)]`
-/

namespace A230048.P5546506689495189510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P5546506689495189510

namespace A230048

/-- `filter[A143719(n+1), A361018(#)]` -/
def P5546506689495189510.Spec : Prop :=
  ∀ n, P5546506689495189510.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P3961034876474594446

`filter[A078779(n+1), A361018(#)]`
-/

namespace A230048.P3961034876474594446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P3961034876474594446

namespace A230048

/-- `filter[A078779(n+1), A361018(#)]` -/
def P3961034876474594446.Spec : Prop :=
  ∀ n, P3961034876474594446.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P2705468249023850382

`filter[A121684(n+1), A361018(#)]`
-/

namespace A230048.P2705468249023850382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P2705468249023850382

namespace A230048

/-- `filter[A121684(n+1), A361018(#)]` -/
def P2705468249023850382.Spec : Prop :=
  ∀ n, P2705468249023850382.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P8757326352639012996

`filter[A121176(n+1), A361018(#)]`
-/

namespace A230048.P8757326352639012996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P8757326352639012996

namespace A230048

/-- `filter[A121176(n+1), A361018(#)]` -/
def P8757326352639012996.Spec : Prop :=
  ∀ n, P8757326352639012996.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P2162260483147993286

`filter[A122132(n+1), A361018(#)]`
-/

namespace A230048.P2162260483147993286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230048.P2162260483147993286

namespace A230048

/-- `filter[A122132(n+1), A361018(#)]` -/
def P2162260483147993286.Spec : Prop :=
  ∀ n, P2162260483147993286.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P8603163041391409081

`record[A336965(comp[xor(n, 2*n)])]`
-/

namespace A230048.P8603163041391409081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230048.P8603163041391409081

namespace A230048

/-- `record[A336965(comp[xor(n, 2*n)])]` -/
def P8603163041391409081.Spec : Prop :=
  ∀ n, P8603163041391409081.a n = A230048 (n + 1)

end A230048

/-! ## A230048.P16797299042962087431

`eq[A010059(n), A105570(n)]`
-/

namespace A230048.P16797299042962087431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230048.P16797299042962087431

namespace A230048

/-- `eq[A010059(n), A105570(n)]` -/
def P16797299042962087431.Spec : Prop :=
  ∀ n, (P16797299042962087431.a n : ℤ) = A230048 (n + 1)

end A230048

/-! ## A230048.P15759493313635513045

`eq[A102389(n), A105570(n)]`
-/

namespace A230048.P15759493313635513045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230048.P15759493313635513045

namespace A230048

/-- `eq[A102389(n), A105570(n)]` -/
def P15759493313635513045.Spec : Prop :=
  ∀ n, (P15759493313635513045.a n : ℤ) = A230048 (n + 1)

end A230048

/-!
# A230049: Triangle such that the g.f. of column k equals 1/(1-x)^(k^3) for k>=0, as read by rows.

The programs for A230049, there is no canonical definition to state claims against.
-/

/-! ## A230049.P17054458193046220763

`A125688(A008574(A058710(n))²)`
-/

namespace A230049.P17054458193046220763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A008574 (A058710 n).toNat ^ 2).toNat

end

end A230049.P17054458193046220763

/-! ## A230049.P9047924368069929760

`A259361(A055999(A048993(n)²))`
-/

namespace A230049.P9047924368069929760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A055999 (A048993 n ^ 2).toNat).toNat

end

end A230049.P9047924368069929760

/-! ## A230049.P15385534887622083867

`A259361(A085223(A058710(n))²)`
-/

namespace A230049.P15385534887622083867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A085223 (A058710 n).toNat ^ 2).toNat

end

end A230049.P15385534887622083867

/-! ## A230049.P8484963822952395837

`A104484(A269948(n))^A060118(A030123(n))`
-/

namespace A230049.P8484963822952395837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104484 (A269948 n).toNat : ℚ) ^ (A060118 (A030123 n).toNat : ℤ)

end

end A230049.P8484963822952395837

/-! ## A230049.P17979010393605079669

`A104484(A269948(n))^A060118(A034888(n))`
-/

namespace A230049.P17979010393605079669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104484 (A269948 n).toNat : ℚ) ^ (A060118 (A034888 n).toNat : ℤ)

end

end A230049.P17979010393605079669

/-!
# A230050: G.f.: Sum_{n>=0} x^n / (1-x)^(n^3).

The programs for A230050, there is no canonical definition to state claims against.
-/

/-! ## A230050.P17845051737281859091

`A330556(∑[A153530(n)])`
-/

namespace A230050.P17845051737281859091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230050.P17845051737281859091

/-! ## A230050.P10804311295249966147

`A070868(A032188(n+1))`
-/

namespace A230050.P10804311295249966147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A032188 (n + 1)).toNat

end

end A230050.P10804311295249966147

/-!
# A230051: Number of permutations of [n] avoiding adjacent step pattern {up}^7.

The programs for A230051, there is no canonical definition to state claims against.
-/

/-! ## A230051.P9589162570089239105

`n!-A364272(A228448(n))`
-/

namespace A230051.P9589162570089239105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A364272 (A228448 n).toNat

end

end A230051.P9589162570089239105

/-! ## A230051.P1062485685841132438

`A051022(n)!-A088469(n+2)`
-/

namespace A230051.P1062485685841132438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A051022 n).toNat : ℤ) - A088469 (n + 2)

end

end A230051.P1062485685841132438

/-! ## A230051.P15312731673434806220

`A056142(n)!-A088469(n+2)`
-/

namespace A230051.P15312731673434806220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A056142 n).toNat : ℤ) - A088469 (n + 2)

end

end A230051.P15312731673434806220

/-! ## A230051.P15841911840935602654

`A056143(n)!-A088469(n+2)`
-/

namespace A230051.P15841911840935602654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A056143 n).toNat : ℤ) - A088469 (n + 2)

end

end A230051.P15841911840935602654

/-! ## A230051.P4737580199855499608

`lcm(n, record[A183094(n+1)])!-A088469(n+2)`
-/

namespace A230051.P4737580199855499608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.lcm (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) : ℤ) - A088469 (n + 2)

end

end A230051.P4737580199855499608

/-!
# A230053: Recurrence a(n+2) = (n+2)*a(n+1)*a(n), with a(0) = a(1) = 1.

The programs for A230053, there is no canonical definition to state claims against.
-/

/-! ## A230053.P15041908244813014836

`n*a(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A230053.P15041908244813014836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n * (a (n - 1) * a (n - 2))

end

end A230053.P15041908244813014836

/-! ## A230053.P17611748873525137921

`∏[A072042(n+1)]`
-/

namespace A230053.P17611748873525137921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A230053.P17611748873525137921

/-! ## A230053.P15250296882322293752

`A072042(n+3)/(n+2)`
-/

namespace A230053.P15250296882322293752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072042 (n + 3) : ℚ) / (n + 2 : ℚ)

end

end A230053.P15250296882322293752

/-! ## A230053.P5461040600553034396

`A380023(n+2)/(n+3)`
-/

namespace A230053.P5461040600553034396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380023 (n + 2) : ℚ) / (n + 3 : ℚ)

end

end A230053.P5461040600553034396

/-! ## A230053.P16910096530922176741

`n*a(n-1)*a(A289207(n))` with `a(0)=1`
-/

namespace A230053.P16910096530922176741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * a (n - 1) * a (A289207 n).toNat

end

end A230053.P16910096530922176741

/-!
# A230055: Number of permutations of [n] in which the longest increasing run has length 7.

The programs for A230055, there is no canonical definition to state claims against.
-/

/-! ## A230055.P9561808455750316886

`A230051(n+7)-A177553(n+7)`
-/

namespace A230055.P9561808455750316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230051 (n + 7) - A177553 (n + 7)

end

end A230055.P9561808455750316886

/-! ## A230055.P1376534136453132822

`A008304(A056119(n)+28)`
-/

namespace A230055.P1376534136453132822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A056119 n + 28).toNat

end

end A230055.P1376534136453132822

/-! ## A230055.P18297675709499452937

`A008304(eq[8, A131818(n+1)])`
-/

namespace A230055.P18297675709499452937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230055.P18297675709499452937

/-! ## A230055.P9513865560066213281

`A008304(A133263(n+7)-(n+2))`
-/

namespace A230055.P9513865560066213281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A230055.P9513865560066213281

/-! ## A230055.P11015372736031446552

`A008304(eq[15, A099375(n)]-n-n)`
-/

namespace A230055.P11015372736031446552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ) - (n : ℤ)).toNat

end

end A230055.P11015372736031446552

/-! ## A230055.P18158834585869561300

`record[A230051(n)-A177553(n)%A230236(n)]`
-/

namespace A230055.P18158834585869561300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230051 n - Int.tmod (A177553 n) (A230236 (n + 10))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230055.P18158834585869561300

/-!
# A230056: G.f.: Sum_{n>=0} (n+3)^n * x^n / (1 + (n+3)*x)^n.

The programs for A230056, there is no canonical definition to state claims against.
-/

/-! ## A230056.P13539292136700991827

`A098361(A000124(n))*A134227(n+1)`
-/

namespace A230056.P13539292136700991827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 (A000124 n).toNat * A134227 (n + 1)

end

end A230056.P13539292136700991827

/-! ## A230056.P2990235081880502255

`(A027379(n)+n)*A081123(A004273(n))`
-/

namespace A230056.P2990235081880502255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027379 n + (n : ℤ)) * A081123 (A004273 n).toNat

end

end A230056.P2990235081880502255

/-! ## A230056.P10499145923898672679

`(A027379(n)+n)*A098361(A000124(n))`
-/

namespace A230056.P10499145923898672679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027379 n + (n : ℤ)) * A098361 (A000124 n).toNat

end

end A230056.P10499145923898672679

/-! ## A230056.P15008609472758256895

`A000142(n)+A027379(n)*A104150(n)`
-/

namespace A230056.P15008609472758256895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A027379 n * A104150 n

end

end A230056.P15008609472758256895

/-! ## A230056.P12892473685650636543

`A000142(n)+A055998(n)*A104150(n)`
-/

namespace A230056.P12892473685650636543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A055998 n * A104150 n

end

end A230056.P12892473685650636543

/-! ## A230056.P16284861279766121057

`(n!+2*n*a(n-1))/2` with `a(0)=1, a(1)=4`
-/

namespace A230056.P16284861279766121057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((Nat.factorial n : ℚ) + (2 * n : ℚ) * a (n - 1)) / 2

end

end A230056.P16284861279766121057

/-!
# A230057: Expansion of (3 * phi(q^3)^4 - phi(q)^4) / 2 in powers of q where phi () is a Ramanujan theta function.

The programs for A230057, there is no canonical definition to state claims against.
-/

/-! ## A230057.P15069910501838052690

`A186100(n)/3^and(1, n)`
-/

namespace A230057.P15069910501838052690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (3 ^ Nat.land 1 n : ℚ)

end

end A230057.P15069910501838052690

/-! ## A230057.P16213316090617340388

`A132954(n)*A252650(n)`
-/

namespace A230057.P16213316090617340388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A252650 n

end

end A230057.P16213316090617340388

/-! ## A230057.P11373532692984012000

`A186100(n)/A010684(n)`
-/

namespace A230057.P11373532692984012000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (A010684 n : ℚ)

end

end A230057.P11373532692984012000

/-! ## A230057.P7563947391997129773

`A186100(n)/Δ[A042948(n)]`
-/

namespace A230057.P7563947391997129773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A230057.P7563947391997129773

/-! ## A230057.P15548281060948740756

`2*A282544(n)-A000118(n)`
-/

namespace A230057.P15548281060948740756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282544 n - A000118 n

end

end A230057.P15548281060948740756

/-! ## A230057.P8702171706227826135

`A186100(n)%(2*A125514(n))`
-/

namespace A230057.P8702171706227826135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186100 n) (2 * A125514 n)

end

end A230057.P8702171706227826135

/-! ## A230057.P10087838346617685510

`A186100(n)/Δ[A042963(n+1)]`
-/

namespace A230057.P10087838346617685510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A230057.P10087838346617685510

/-! ## A230057.P9338006428253342656

`A186100(n)/A328578(A141310(n))`
-/

namespace A230057.P9338006428253342656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (A328578 (A141310 n).toNat : ℚ)

end

end A230057.P9338006428253342656

/-! ## A230057.P7530525611806774137

`A186100(n)/A131943(n)*A214456(n)`
-/

namespace A230057.P7530525611806774137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (A131943 n : ℚ) * (A214456 n : ℚ)

end

end A230057.P7530525611806774137

/-! ## A230057.P7202546504990085306

`A034896(2*n)+A034896(n)-A008653(n)`
-/

namespace A230057.P7202546504990085306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 (2 * n) + (A034896 n - A008653 n)

end

end A230057.P7202546504990085306

/-! ## A230057.P2003767318404675950

`A008653(n)-(A034896(4*n)-A034896(n))`
-/

namespace A230057.P2003767318404675950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n - (A034896 (4 * n) - A034896 n)

end

end A230057.P2003767318404675950

/-! ## A230057.P17930516973713134703

`A121443(n+1)/A214361(n+1)*A186100(n)`
-/

namespace A230057.P17930516973713134703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A214361 (n + 1) : ℚ) * (A186100 n : ℚ)

end

end A230057.P17930516973713134703

/-! ## A230057.P16284540215278260974

`A186100(n)/A121443(A214361(n+1)/A121443(n+1))`
-/

namespace A230057.P16284540215278260974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186100 n : ℚ) / (A121443 (SequenceMachineLib.roundAway ((A214361 (n + 1) : ℚ) / (A121443 (n + 1) : ℚ))).toNat : ℚ)

end

end A230057.P16284540215278260974

/-!
# A230058: Numbers of the form k + wt(k) for at least two distinct k, where wt(k) = A000120(k) is the binary weight of k.

The programs for A230058, there is no canonical definition to state claims against.
-/

/-! ## A230058.P6637815752405524699

`lt[1, A228085(n)]`
-/

namespace A230058.P6637815752405524699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A230058.P6637815752405524699

/-! ## A230058.P3373119856218879352

`lt[A228086(n), A228087(n)]`
-/

namespace A230058.P3373119856218879352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230058.P3373119856218879352

/-! ## A230058.P4418261278791044354

`eq[1, A000007(a(A228085(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A230058.P4418261278791044354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000007 (f2 (A228085 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230058.P4418261278791044354

/-! ## A230058.P10441299636339811165

`eq[1, A228085(a(A228085(n)))]` with `a(0)=54, a(1)=54`
-/

namespace A230058.P10441299636339811165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [54, 54] fun n f2 =>
  A228085 (f2 (A228085 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230058.P10441299636339811165

/-! ## A230058.P5538504773123519643

`eq[1, A017818(A228085(n)+A000203(((-1)^n)²))]`
-/

namespace A230058.P5538504773123519643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (A228085 n + A000203 (((-1) ^ n) ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230058.P5538504773123519643

/-!
# A230059: Conjectural number of irreducible zeta values of weight 2*n+1 and depth three.

The programs for A230059, the canonical program `A230059.P2248507269137293557` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230059 has offset 1).

The definition of A230059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230059.P2248507269137293557

`ceil((abs(1-n)+1)²/12)-1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230059

/-- `ceil((abs(1-n)+1)²/12)-1` -/
def P2248507269137293557.Spec : Prop :=
  ∀ n, P2248507269137293557.a n = A230059 (n + 1)

theorem P2248507269137293557.correct : P2248507269137293557.Spec := by
  intro n
  simp only [A230059, Nat.add_sub_cancel]

end A230059

/-! ## A230059.P5026202473448913218

`(ceil(n²/12)-1)%(n+1)²`
-/

namespace A230059.P5026202473448913218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(n ^ 2 : ℚ) / 12⌉ - 1) ((n + 1) ^ 2 : ℤ)

end

end A230059.P5026202473448913218

namespace A230059

/-- `(ceil(n²/12)-1)%(n+1)²` -/
def P5026202473448913218.Spec : Prop :=
  ∀ n, P5026202473448913218.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P15052866458313457057

`floor(A337483(n)/2)`
-/

namespace A230059.P15052866458313457057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337483 n : ℚ) / 2⌋

end

end A230059.P15052866458313457057

namespace A230059

/-- `floor(A337483(n)/2)` -/
def P15052866458313457057.Spec : Prop :=
  ∀ n, P15052866458313457057.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P3332028911991056594

`floor(n²²/A005914(n))`
-/

namespace A230059.P3332028911991056594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2) ^ 2 : ℚ) / (A005914 n : ℚ)⌋

end

end A230059.P3332028911991056594

namespace A230059

/-- `floor(n²²/A005914(n))` -/
def P3332028911991056594.Spec : Prop :=
  ∀ n, P3332028911991056594.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P3762964002555880346

`ceil(A057428(n)+n²/12)`
-/

namespace A230059.P3762964002555880346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℚ) + (n ^ 2 : ℚ) / 12⌉

end

end A230059.P3762964002555880346

namespace A230059

/-- `ceil(A057428(n)+n²/12)` -/
def P3762964002555880346.Spec : Prop :=
  ∀ n, P3762964002555880346.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P16009137640831400108

`ceil(n²/12-A057427(n))`
-/

namespace A230059.P16009137640831400108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12 - (A057427 n : ℚ)⌉

end

end A230059.P16009137640831400108

namespace A230059

/-- `ceil(n²/12-A057427(n))` -/
def P16009137640831400108.Spec : Prop :=
  ∀ n, P16009137640831400108.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P2538111660583349865

`∑[A018838(n)%∑[char[2*n]]]`
-/

namespace A230059.P2538111660583349865
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018838 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230059.P2538111660583349865

namespace A230059

/-- `∑[A018838(n)%∑[char[2*n]]]` -/
def P2538111660583349865.Spec : Prop :=
  ∀ n, P2538111660583349865.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P16703426799414916128

`round((abs(3-A000982(n))-1)/6)`
-/

namespace A230059.P16703426799414916128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|3 - A000982 n| - 1 : ℚ) / 6)

end

end A230059.P16703426799414916128

namespace A230059

/-- `round((abs(3-A000982(n))-1)/6)` -/
def P16703426799414916128.Spec : Prop :=
  ∀ n, P16703426799414916128.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P11949683772613339794

`∑[A302402(n)%(floor(n/2)+1)]`
-/

namespace A230059.P11949683772613339794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302402 n) (⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230059.P11949683772613339794

namespace A230059

/-- `∑[A302402(n)%(floor(n/2)+1)]` -/
def P11949683772613339794.Spec : Prop :=
  ∀ n, P11949683772613339794.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P4953209225636078169

`∑[∑[(n²+n)%3]%A008619(n)]`
-/

namespace A230059.P4953209225636078169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A008619 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230059.P4953209225636078169

namespace A230059

/-- `∑[∑[(n²+n)%3]%A008619(n)]` -/
def P4953209225636078169.Spec : Prop :=
  ∀ n, P4953209225636078169.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P4270099296731894473

`∑[A103221(A004275(n))-A103221(n)]`
-/

namespace A230059.P4270099296731894473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004275 n).toNat - A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230059.P4270099296731894473

namespace A230059

/-- `∑[A103221(A004275(n))-A103221(n)]` -/
def P4270099296731894473.Spec : Prop :=
  ∀ n, P4270099296731894473.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P2012364333598316599

`∑[∑[and(1, n)+1]%A008620(2*n)]`
-/

namespace A230059.P2012364333598316599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A008620 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230059.P2012364333598316599

namespace A230059

/-- `∑[∑[and(1, n)+1]%A008620(2*n)]` -/
def P2012364333598316599.Spec : Prop :=
  ∀ n, P2012364333598316599.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P12253670963866764354

`A004526(A337483(n))`
-/

namespace A230059.P12253670963866764354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A337483 n).toNat

end

end A230059.P12253670963866764354

namespace A230059

/-- `A004526(A337483(n))` -/
def P12253670963866764354.Spec : Prop :=
  ∀ n, P12253670963866764354.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P5284525648854717241

`A244325(A008751(n+1))`
-/

namespace A230059.P5284525648854717241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A008751 (n + 1)).toNat

end

end A230059.P5284525648854717241

namespace A230059

/-- `A244325(A008751(n+1))` -/
def P5284525648854717241.Spec : Prop :=
  ∀ n, P5284525648854717241.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P10162498483133046598

`A140106(A156040(n+1)-n)`
-/

namespace A230059.P10162498483133046598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A156040 (n + 1) - (n : ℤ)).toNat

end

end A230059.P10162498483133046598

namespace A230059

/-- `A140106(A156040(n+1)-n)` -/
def P10162498483133046598.Spec : Prop :=
  ∀ n, P10162498483133046598.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P3962520163920567261

`A002264(A000096(n)%A184676(n+1))`
-/

namespace A230059.P3962520163920567261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A000096 n) (A184676 (n + 1))).toNat

end

end A230059.P3962520163920567261

namespace A230059

/-- `A002264(A000096(n)%A184676(n+1))` -/
def P3962520163920567261.Spec : Prop :=
  ∀ n, P3962520163920567261.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P4120041917325661274

`A002264(A140106(n+1)+∑[A140106(n+1)])`
-/

namespace A230059.P4120041917325661274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A140106 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A230059.P4120041917325661274

namespace A230059

/-- `A002264(A140106(n+1)+∑[A140106(n+1)])` -/
def P4120041917325661274.Spec : Prop :=
  ∀ n, P4120041917325661274.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P894268451893988504

`A002264((n-A140106(n+1))*A140106(n+1))`
-/

namespace A230059.P894268451893988504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((n : ℤ) - A140106 (n + 1)) * A140106 (n + 1)).toNat

end

end A230059.P894268451893988504

namespace A230059

/-- `A002264((n-A140106(n+1))*A140106(n+1))` -/
def P894268451893988504.Spec : Prop :=
  ∀ n, P894268451893988504.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P11749997953589199965

`A342696(A082562(n))`
-/

namespace A230059.P11749997953589199965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A082562 n).toNat

end

end A230059.P11749997953589199965

namespace A230059

/-- `A342696(A082562(n))` -/
def P11749997953589199965.Spec : Prop :=
  ∀ n, P11749997953589199965.a n = A230059 (n + 1)

end A230059

/-! ## A230059.P15828538228897007370

`A342696(A132411(n))`
-/

namespace A230059.P15828538228897007370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A132411 n).toNat

end

end A230059.P15828538228897007370

namespace A230059

/-- `A342696(A132411(n))` -/
def P15828538228897007370.Spec : Prop :=
  ∀ n, P15828538228897007370.a n = A230059 (n + 1)

end A230059

/-!
# A230060: Numbers k such that the distance from k^2 to the smallest triangular number >= k^2 is itself triangular.

The programs for A230060, there is no canonical definition to state claims against.
-/

/-! ## A230060.P17605335882833538538

`eq[0, A002262(A230038(n+1))]+1`
-/

namespace A230060.P17605335882833538538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A230038 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230060.P17605335882833538538

/-! ## A230060.P14731081644664913643

`eq[1, A002260(A057050(n+1))]+1`
-/

namespace A230060.P14731081644664913643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230060.P14731081644664913643

/-! ## A230060.P181215662437028048

`record[(n+2)/A002260(A057050(n+2))]`
-/

namespace A230060.P181215662437028048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A002260 (A057050 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230060.P181215662437028048

/-! ## A230060.P11311849114225764172

`lt[A002260(A057050(n+1))%A000040(n+1), 2]+1`
-/

namespace A230060.P11311849114225764172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A057050 (n + 1)).toNat) (A000040 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A230060.P11311849114225764172

/-! ## A230060.P3199754076573875160

`lt[A005893(A232179(n)), A250120(n)]`
-/

namespace A230060.P3199754076573875160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A232179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230060.P3199754076573875160

/-!
# A230061: Primes of the form Catalan(n)+1.

The programs for A230061, there is no canonical definition to state claims against.
-/

/-! ## A230061.P8441595518405499467

`A000108(A053429(n+2))+1`
-/

namespace A230061.P8441595518405499467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A053429 (n + 2)).toNat + 1

end

end A230061.P8441595518405499467

/-! ## A230061.P15710980731223337162

`∩[A173868(n+1), A141351(n)]`
-/

namespace A230061.P15710980731223337162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230061.P15710980731223337162

/-!
# A230062: Number of n X n 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230062, there is no canonical definition to state claims against.
-/

/-! ## A230062.P15209365834446862486

`A230068(∑[4*n]+1)`
-/

namespace A230062.P15209365834446862486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230062.P15209365834446862486

/-! ## A230062.P13799773923172445613

`lcm(3, A230068(A001844(n)))`
-/

namespace A230062.P13799773923172445613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A230068 (A001844 n).toNat)

end

end A230062.P13799773923172445613

/-! ## A230062.P5977098755584220877

`record[A230068(∑[A266981(n)])]`
-/

namespace A230062.P5977098755584220877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230062.P5977098755584220877

/-! ## A230062.P10485904003884205157

`record[A003982(n)*A230068(n+1)]`
-/

namespace A230062.P10485904003884205157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A230068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230062.P10485904003884205157

/-! ## A230062.P10923647985412754979

`A230646(n+1)*A230657(n+1)`
-/

namespace A230062.P10923647985412754979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230646 (n + 1) * A230657 (n + 1)

end

end A230062.P10923647985412754979

/-!
# A230063: Number of nX3 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230063, the canonical program `A230063.P4907088019711096976` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230063 has offset 1).

The definition of A230063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230063.P4907088019711096976

`7*a(n-1)+14*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=9, a(2)=45`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230063

/-- `7*a(n-1)+14*a(n-2)-8*a(n-3)` -/
def P4907088019711096976.Spec : Prop :=
  ∀ n, P4907088019711096976.a n = A230063 (n + 1)

theorem P4907088019711096976.correct : P4907088019711096976.Spec := by
  intro n
  simp only [A230063, Nat.add_sub_cancel]

end A230063

/-! ## A230063.P6568361054110072605

`A230647(n+1)²*gcd(5, n%2)`
-/

namespace A230063.P6568361054110072605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230647 (n + 1) ^ 2 * (Nat.gcd 5 (n % 2) : ℤ)

end

end A230063.P6568361054110072605

namespace A230063

/-- `A230647(n+1)²*gcd(5, n%2)` -/
def P6568361054110072605.Spec : Prop :=
  ∀ n, P6568361054110072605.a n = A230063 (n + 1)

end A230063

/-! ## A230063.P2194671288044068055

`A230647(n+1)²*A176260(n)`
-/

namespace A230063.P2194671288044068055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230647 (n + 1) ^ 2 * A176260 n

end

end A230063.P2194671288044068055

namespace A230063

/-- `A230647(n+1)²*A176260(n)` -/
def P2194671288044068055.Spec : Prop :=
  ∀ n, P2194671288044068055.a n = A230063 (n + 1)

end A230063

/-! ## A230063.P12077892429022455146

`A230658(n+1)²/A176260(n)`
-/

namespace A230063.P12077892429022455146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (n + 1) ^ 2 : ℚ) / (A176260 n : ℚ)

end

end A230063.P12077892429022455146

namespace A230063

/-- `A230658(n+1)²/A176260(n)` -/
def P12077892429022455146.Spec : Prop :=
  ∀ n, P12077892429022455146.a n = (A230063 (n + 1) : ℚ)

end A230063

/-! ## A230063.P15435988315983337935

`A230647(n+1)*A230658(n+1)`
-/

namespace A230063.P15435988315983337935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230647 (n + 1) * A230658 (n + 1)

end

end A230063.P15435988315983337935

namespace A230063

/-- `A230647(n+1)*A230658(n+1)` -/
def P15435988315983337935.Spec : Prop :=
  ∀ n, P15435988315983337935.a n = A230063 (n + 1)

end A230063

/-! ## A230063.P3897148989000858557

`A230658(n+1)²/A313670(∑[A033999(n)])`
-/

namespace A230063.P3897148989000858557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (n + 1) ^ 2 : ℚ) / (A313670 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A230063.P3897148989000858557

namespace A230063

/-- `A230658(n+1)²/A313670(∑[A033999(n)])` -/
def P3897148989000858557.Spec : Prop :=
  ∀ n, P3897148989000858557.a n = (A230063 (n + 1) : ℚ)

end A230063

/-! ## A230063.P8066914128471581412

`A230658(n+1)/A014551(n)%6*A230658(n+1)`
-/

namespace A230063.P8066914128471581412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230658 (n + 1) : ℚ) / (Int.tmod (A014551 n) 6 : ℚ) * (A230658 (n + 1) : ℚ)

end

end A230063.P8066914128471581412

namespace A230063

/-- `A230658(n+1)/A014551(n)%6*A230658(n+1)` -/
def P8066914128471581412.Spec : Prop :=
  ∀ n, P8066914128471581412.a n = (A230063 (n + 1) : ℚ)

end A230063

/-!
# A230064: Number of nX4 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230064, there is no canonical definition to state claims against.
-/

/-! ## A230064.P1865511780834171781

`A230648(n+1)²`
-/

namespace A230064.P1865511780834171781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230648 (n + 1) ^ 2

end

end A230064.P1865511780834171781

/-! ## A230064.P9840882442172901004

`A230648(n+1)^(A000038(n)+2)`
-/

namespace A230064.P9840882442172901004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230648 (n + 1) : ℚ) ^ (A000038 n + 2 : ℤ)

end

end A230064.P9840882442172901004

/-! ## A230064.P10808242619270542135

`A230648(n+1)^A014963(A001316(n))`
-/

namespace A230064.P10808242619270542135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230648 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A230064.P10808242619270542135

/-! ## A230064.P18352275805633345448

`A230648(n+1)^A020639(A008458(n))`
-/

namespace A230064.P18352275805633345448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230648 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A230064.P18352275805633345448

/-! ## A230064.P7345450333498095065

`A230648(n+1)^A000005(A002515(n+1))`
-/

namespace A230064.P7345450333498095065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230648 (n + 1) : ℚ) ^ (A000005 (A002515 (n + 1)).toNat : ℤ)

end

end A230064.P7345450333498095065

/-! ## A230064.P208021336343429765

`A230648(n+1)^A000005(A230665(n+1))`
-/

namespace A230064.P208021336343429765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230648 (n + 1) : ℚ) ^ (A000005 (A230665 (n + 1)).toNat : ℤ)

end

end A230064.P208021336343429765

/-! ## A230064.P11317585637644578631

`A230648(n+1)^A020639(A007374(n+2))`
-/

namespace A230064.P11317585637644578631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230648 (n + 1) : ℚ) ^ (A020639 (A007374 (n + 2)).toNat : ℤ)

end

end A230064.P11317585637644578631

/-!
# A230065: Number of nX5 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230065, there is no canonical definition to state claims against.
-/

/-! ## A230065.P10732105005482504646

`A230649(n+1)*A230659(n+1)`
-/

namespace A230065.P10732105005482504646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230649 (n + 1) * A230659 (n + 1)

end

end A230065.P10732105005482504646

/-! ## A230065.P4559969827096096286

`A230068(A374005(n+1))`
-/

namespace A230065.P4559969827096096286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (A374005 (n + 1)).toNat

end

end A230065.P4559969827096096286

/-! ## A230065.P8135174106530775352

`A230068(eq[6, A131818(n+1)])`
-/

namespace A230065.P8135174106530775352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230065.P8135174106530775352

/-! ## A230065.P12553536331445646061

`A230068(eq[3, A152157(n)])`
-/

namespace A230065.P12553536331445646061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230065.P12553536331445646061

/-! ## A230065.P5055959642020020141

`A230068(eq[4, A054123(n)])`
-/

namespace A230065.P5055959642020020141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230065.P5055959642020020141

/-!
# A230066: Number of nX6 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230066, there is no canonical definition to state claims against.
-/

/-! ## A230066.P10826150097578493588

`A230650(n+1)²`
-/

namespace A230066.P10826150097578493588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230650 (n + 1) ^ 2

end

end A230066.P10826150097578493588

/-! ## A230066.P13038983281779112930

`record[A230650(A141256(n))²]`
-/

namespace A230066.P13038983281779112930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230650 (A141256 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230066.P13038983281779112930

/-! ## A230066.P3822041698905022269

`A230650(n+1)^A014963(A001316(n))`
-/

namespace A230066.P3822041698905022269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230650 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A230066.P3822041698905022269

/-! ## A230066.P14244363708670481805

`A230650(n+1)^A020639(A008574(n))`
-/

namespace A230066.P14244363708670481805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230650 (n + 1) : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A230066.P14244363708670481805

/-! ## A230066.P4394719219380728740

`record[A230650(A141256(n))]*A230650(n+1)`
-/

namespace A230066.P4394719219380728740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230650 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A230650 (n + 1)

end

end A230066.P4394719219380728740

/-!
# A230067: Number of nX7 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230067, there is no canonical definition to state claims against.
-/

/-! ## A230067.P17318557700997579852

`A230651(n+1)*A230660(n+1)`
-/

namespace A230067.P17318557700997579852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230651 (n + 1) * A230660 (n + 1)

end

end A230067.P17318557700997579852

/-! ## A230067.P17349474539159410625

`A230068(A374008(n+1))`
-/

namespace A230067.P17349474539159410625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (A374008 (n + 1)).toNat

end

end A230067.P17349474539159410625

/-! ## A230067.P4066090511594464656

`A230068(eq[8, A131818(n+1)])`
-/

namespace A230067.P4066090511594464656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230067.P4066090511594464656

/-! ## A230067.P3452807498269760871

`A230068(A055999(n+4))`
-/

namespace A230067.P3452807498269760871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (A055999 (n + 4)).toNat

end

end A230067.P3452807498269760871

/-! ## A230067.P5654188810060906082

`A230068(eq[6, A193592(n)])`
-/

namespace A230067.P5654188810060906082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230067.P5654188810060906082

/-!
# A230068: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value 2-x(i,j).

The programs for A230068, there is no canonical definition to state claims against.
-/

/-! ## A230068.P9561727804235636742

`A230652(n+1)*A230661(n+1)`
-/

namespace A230068.P9561727804235636742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230652 (n + 1) * A230661 (n + 1)

end

end A230068.P9561727804235636742

/-! ## A230068.P9777086984517136326

`A026741(lcm(A230652(n+1)², A230661(n+1)))`
-/

namespace A230068.P9777086984517136326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm (A230652 (n + 1) ^ 2) (A230661 (n + 1)))

end

end A230068.P9777086984517136326

/-! ## A230068.P6998608504980351653

`A230661(n+1)%A320487(A089859(n))*A230661(n+1)`
-/

namespace A230068.P6998608504980351653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230661 (n + 1)) (A320487 (A089859 n).toNat) * A230661 (n + 1)

end

end A230068.P6998608504980351653

/-! ## A230068.P1577495155815355786

`A136107(A154334(n)²)*A230661(n+1)`
-/

namespace A230068.P1577495155815355786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (A154334 n ^ 2).toNat * A230661 (n + 1)

end

end A230068.P1577495155815355786

/-! ## A230068.P8426144520382699740

`lcm(A001316(n)+1, A136107(A154334(n)²)²)`
-/

namespace A230068.P8426144520382699740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n + 1) (A136107 (A154334 n ^ 2).toNat ^ 2)

end

end A230068.P8426144520382699740

/-!
# A230069: Numerators of inverse of triangle A082985(n).

The programs for A230069, there is no canonical definition to state claims against.
-/

/-! ## A230069.P5046681466334956048

`A201453(∑[2*n]%comp[∑[n]])`
-/

namespace A230069.P5046681466334956048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201453 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A230069.P5046681466334956048

/-! ## A230069.P7399518864045886090

`A201453(∑[char[∑[n]]]²-(n+1))`
-/

namespace A230069.P7399518864045886090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201453 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A230069.P7399518864045886090

/-! ## A230069.P3835405175358592351

`xor(6, xor(6, A201453(A061579(n))))`
-/

namespace A230069.P3835405175358592351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (Int.xor 6 (A201453 (A061579 n).toNat))

end

end A230069.P3835405175358592351

/-! ## A230069.P2222433992161098510

`or(A000007(n), A201453(A061579(n)))`
-/

namespace A230069.P2222433992161098510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A201453 (A061579 n).toNat)

end

end A230069.P2222433992161098510

/-! ## A230069.P10330313863300796883

`A007318(C(2, n))*A201453(A061579(n))`
-/

namespace A230069.P10330313863300796883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201453 (A061579 n).toNat

end

end A230069.P10330313863300796883

/-! ## A230069.P18219916013824296521

`A020639(2*(n+1))+A201453(A061579(n))-2`
-/

namespace A230069.P18219916013824296521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A201453 (A061579 n).toNat - 2)

end

end A230069.P18219916013824296521

/-! ## A230069.P7997722207729027655

`A201453(A061579(n))^(val(A000040(n+1), 2)+1)`
-/

namespace A230069.P7997722207729027655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201453 (A061579 n).toNat ^ (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + 1)

end

end A230069.P7997722207729027655

/-! ## A230069.P13109593895747707890

`A201453(A061579(n))+A000045((6*(n+1)²)%(n+1))`
-/

namespace A230069.P13109593895747707890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201453 (A061579 n).toNat + A000045 (6 * (n + 1) ^ 2 % (n + 1))

end

end A230069.P13109593895747707890

/-! ## A230069.P15660567302853482366

`A201453(A061579(n))%A163471(n)`
-/

namespace A230069.P15660567302853482366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201453 (A061579 n).toNat) (A163471 n)

end

end A230069.P15660567302853482366

/-!
# A230070: a(n) is the number of odious integers (A000069) not exceeding n and respectively prime to n.

The programs for A230070, there is no canonical definition to state claims against.
-/

/-! ## A230070.P13425395208054854645

`A000010(n+1)-A230120(n+1)`
-/

namespace A230070.P13425395208054854645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A230120 (n + 1)

end

end A230070.P13425395208054854645

/-! ## A230070.P11215265995195518269

`A276331(A039649(n+1))-A230120(n+1)`
-/

namespace A230070.P11215265995195518269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A039649 (n + 1)).toNat - A230120 (n + 1)

end

end A230070.P11215265995195518269

/-! ## A230070.P945430399177203284

`A054523(∑[n]+1)-A230120(n+1)`
-/

namespace A230070.P945430399177203284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A230120 (n + 1)

end

end A230070.P945430399177203284

/-! ## A230070.P9999047777845673898

`A029181(n)+A022932(Δ[A011782(n)])`
-/

namespace A230070.P9999047777845673898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 n + A022932 (f1 (n + 1) - f1 n).toNat

end

end A230070.P9999047777845673898

/-! ## A230070.P8334169491741268207

`A097325(A007598(n))+A029181(n)`
-/

namespace A230070.P8334169491741268207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A007598 n).toNat + A029181 n

end

end A230070.P8334169491741268207

/-!
# A230071: Sum over all permutations without double ascents on n elements and each permutation contributes 2 raised to the power of the number of double descents.

The programs for A230071, the canonical program `A230071.P9920768572187946025` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230071 has offset 0).

The definition of A230071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230071.P9920768572187946025

`(2-n)*a(n-3)+a(n-2)+n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230071

/-- `(2-n)*a(n-3)+a(n-2)+n*a(n-1)` -/
def P9920768572187946025.Spec : Prop :=
  ∀ n, P9920768572187946025.a n = A230071 n

theorem P9920768572187946025.correct : P9920768572187946025.Spec := by
  intro n
  simp only [A230071]

end A230071

/-! ## A230071.P10175796425024341665

`2*A080227(n)`
-/

namespace A230071.P10175796425024341665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080227 n

end

end A230071.P10175796425024341665

namespace A230071

/-- `2*A080227(n)` -/
def P10175796425024341665.Spec : Prop :=
  ∀ n, P10175796425024341665.a n = A230071 n

end A230071

/-! ## A230071.P534428087929593203

`or(2, n*a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A230071.P534428087929593203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor 2 (n * a (n - 1))

end

end A230071.P534428087929593203

namespace A230071

/-- `or(2, n*a(n-1))` -/
def P534428087929593203.Spec : Prop :=
  ∀ n, (P534428087929593203.a n : ℤ) = A230071 n

end A230071

/-! ## A230071.P15491759688386557627

`n*a(n-1)+(-1)^n+1` with `a(0)=0`
-/

namespace A230071.P15491759688386557627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + ((-1) ^ n + 1)

end

end A230071.P15491759688386557627

namespace A230071

/-- `n*a(n-1)+(-1)^n+1` -/
def P15491759688386557627.Spec : Prop :=
  ∀ n, P15491759688386557627.a n = A230071 n

end A230071

/-! ## A230071.P1711333510796105093

`a(gcd(2, n))+n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A230071.P1711333510796105093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (Nat.gcd 2 n) + n * a (n - 1)

end

end A230071.P1711333510796105093

namespace A230071

/-- `a(gcd(2, n))+n*a(n-1)` -/
def P1711333510796105093.Spec : Prop :=
  ∀ n, (P1711333510796105093.a n : ℤ) = A230071 n

end A230071

/-! ## A230071.P7621395157591961232

`2*(n+1)%2+n*a(n-1)` with `a(0)=0`
-/

namespace A230071.P7621395157591961232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n + 1) % 2) + n * a (n - 1)

end

end A230071.P7621395157591961232

namespace A230071

/-- `2*(n+1)%2+n*a(n-1)` -/
def P7621395157591961232.Spec : Prop :=
  ∀ n, (P7621395157591961232.a n : ℤ) = A230071 n

end A230071

/-! ## A230071.P912360854036172217

`(-1)^n+a(n-1)/n^(-1)+1` with `a(0)=0`
-/

namespace A230071.P912360854036172217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((-1) ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + 1

end

end A230071.P912360854036172217

namespace A230071

/-- `(-1)^n+a(n-1)/n^(-1)+1` -/
def P912360854036172217.Spec : Prop :=
  ∀ n, P912360854036172217.a n = (A230071 n : ℚ)

end A230071

/-! ## A230071.P1483270341324892113

`(a(n-1)+a(n-2))*(n-1)+2` with `a(0)=0, a(1)=0`
-/

namespace A230071.P1483270341324892113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (a (n - 1) + a (n - 2)) * ((n : ℤ) - 1) + 2

end

end A230071.P1483270341324892113

namespace A230071

/-- `(a(n-1)+a(n-2))*(n-1)+2` -/
def P1483270341324892113.Spec : Prop :=
  ∀ n, P1483270341324892113.a n = A230071 n

end A230071

/-! ## A230071.P6896907341322695740

`A021499(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A230071.P6896907341322695740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A021499 n + (n : ℤ) * a (n - 1)

end

end A230071.P6896907341322695740

namespace A230071

/-- `A021499(n)+n*a(n-1)` -/
def P6896907341322695740.Spec : Prop :=
  ∀ n, P6896907341322695740.a n = A230071 n

end A230071

/-! ## A230071.P16204968201703204605

`A002627(n)-A002467(n)`
-/

namespace A230071.P16204968201703204605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 n - A002467 n

end

end A230071.P16204968201703204605

namespace A230071

/-- `A002627(n)-A002467(n)` -/
def P16204968201703204605.Spec : Prop :=
  ∀ n, P16204968201703204605.a n = A230071 n

end A230071

/-!
# A230074: Period 4: repeat [1, -2, 1, 0].

The programs for A230074, the canonical program `A230074.P1762169233470768939` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230074 has offset 1).

The definition of A230074 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A230074.anchor (n : ℕ) (hn : 1 ≤ n) : A230074 n = [1, -2, 1, 0].getD ((n - 1) % 4) 0` in `Proof.A230.A230074`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230074.P1762169233470768939

`a(n-4)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230074

/-- `a(n-4)` -/
def P1762169233470768939.Spec : Prop :=
  ∀ n, P1762169233470768939.a n = A230074 (n + 1)

theorem P1762169233470768939.correct : P1762169233470768939.Spec := by
  intro n
  simp only [A230074, Nat.add_sub_cancel]

end A230074

/-!
# A230075: Period 8: repeat [2, 1, 0, 1, -2, -1, 0, -1].

The programs for A230075, the canonical program `A230075.P46701926393407864` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230075 has offset 0).

The definition of A230075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230075.P46701926393407864

`sqrt((n+2)²%8)*(-1)^floor(n/4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230075

/-- `sqrt((n+2)²%8)*(-1)^floor(n/4)` -/
def P46701926393407864.Spec : Prop :=
  ∀ n, P46701926393407864.a n = (A230075 n : ℝ)

end A230075

/-!
# A230076: a(n) = (A007521(n)-1)/4.

The programs for A230076, the canonical program `A230076.P12907884634970271226` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230076 has offset 1).

The definition of A230076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230076.P12907884634970271226

`(A007521(n+1)-1)/4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230076

/-- `(A007521(n+1)-1)/4` -/
def P12907884634970271226.Spec : Prop :=
  ∀ n, P12907884634970271226.a n = (A230076 (n + 1) : ℚ)

end A230076

/-! ## A230076.P13870614334207996985

`floor(p?[8*n-3]/4)`
-/

namespace A230076.P13870614334207996985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A230076.P13870614334207996985

namespace A230076

/-- `floor(p?[8*n-3]/4)` -/
def P13870614334207996985.Spec : Prop :=
  ∀ n, P13870614334207996985.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P363154765867546668

`round(p?[8*n-3]/4)`
-/

namespace A230076.P363154765867546668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4)

end

end A230076.P363154765867546668

namespace A230076

/-- `round(p?[8*n-3]/4)` -/
def P363154765867546668.Spec : Prop :=
  ∀ n, P363154765867546668.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P11109027307376836013

`(p?[8*n-3]-1)/4`
-/

namespace A230076.P11109027307376836013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 4

end

end A230076.P11109027307376836013

namespace A230076

/-- `(p?[8*n-3]-1)/4` -/
def P11109027307376836013.Spec : Prop :=
  ∀ n, P11109027307376836013.a n = (A230076 (n + 1) : ℚ)

end A230076

/-! ## A230076.P5948668476047979011

`A186299(n+1)/2`
-/

namespace A230076.P5948668476047979011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186299 (n + 1) : ℚ) / 2

end

end A230076.P5948668476047979011

namespace A230076

/-- `A186299(n+1)/2` -/
def P5948668476047979011.Spec : Prop :=
  ∀ n, P5948668476047979011.a n = (A230076 (n + 1) : ℚ)

end A230076

/-! ## A230076.P4215658602489237830

`floor(A186300(n+1)/2)`
-/

namespace A230076.P4215658602489237830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186300 (n + 1) : ℚ) / 2⌋

end

end A230076.P4215658602489237830

namespace A230076

/-- `floor(A186300(n+1)/2)` -/
def P4215658602489237830.Spec : Prop :=
  ∀ n, P4215658602489237830.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P18129720285490811977

`floor(A007521(n+1)/4)`
-/

namespace A230076.P18129720285490811977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007521 (n + 1) : ℚ) / 4⌋

end

end A230076.P18129720285490811977

namespace A230076

/-- `floor(A007521(n+1)/4)` -/
def P18129720285490811977.Spec : Prop :=
  ∀ n, P18129720285490811977.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P14709137546200567304

`2*A105133(n+1)+1`
-/

namespace A230076.P14709137546200567304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105133 (n + 1) + 1

end

end A230076.P14709137546200567304

namespace A230076

/-- `2*A105133(n+1)+1` -/
def P14709137546200567304.Spec : Prop :=
  ∀ n, P14709137546200567304.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P16999315695957780073

`2*A005125(n+1)-1`
-/

namespace A230076.P16999315695957780073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005125 (n + 1) - 1

end

end A230076.P16999315695957780073

namespace A230076

/-- `2*A005125(n+1)-1` -/
def P16999315695957780073.Spec : Prop :=
  ∀ n, P16999315695957780073.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P14093796742934966535

`(A186301(n+1)+1)/4`
-/

namespace A230076.P14093796742934966535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186301 (n + 1) + 1 : ℚ) / 4

end

end A230076.P14093796742934966535

namespace A230076

/-- `(A186301(n+1)+1)/4` -/
def P14093796742934966535.Spec : Prop :=
  ∀ n, P14093796742934966535.a n = (A230076 (n + 1) : ℚ)

end A230076

/-! ## A230076.P13479643878048538445

`A105133(n+1)+A005125(n+1)`
-/

namespace A230076.P13479643878048538445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1) + A005125 (n + 1)

end

end A230076.P13479643878048538445

namespace A230076

/-- `A105133(n+1)+A005125(n+1)` -/
def P13479643878048538445.Spec : Prop :=
  ∀ n, P13479643878048538445.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P2983152916891905072

`∩[2*n+1, A005098(n+1)]`
-/

namespace A230076.P2983152916891905072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230076.P2983152916891905072

namespace A230076

/-- `∩[2*n+1, A005098(n+1)]` -/
def P2983152916891905072.Spec : Prop :=
  ∀ n, (P2983152916891905072.a n : ℤ) = A230076 (n + 1)

end A230076

/-! ## A230076.P7518714163217175068

`∩[2*n+1, A364868(n+1)]`
-/

namespace A230076.P7518714163217175068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230076.P7518714163217175068

namespace A230076

/-- `∩[2*n+1, A364868(n+1)]` -/
def P7518714163217175068.Spec : Prop :=
  ∀ n, (P7518714163217175068.a n : ℤ) = A230076 (n + 1)

end A230076

/-! ## A230076.P13198875772508108200

`A000265(A186299(n+1))`
-/

namespace A230076.P13198875772508108200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A186299 (n + 1)).toNat

end

end A230076.P13198875772508108200

namespace A230076

/-- `A000265(A186299(n+1))` -/
def P13198875772508108200.Spec : Prop :=
  ∀ n, P13198875772508108200.a n = A230076 (n + 1)

end A230076

/-! ## A230076.P15208465189480020023

`A016825(A105133(n+1))/2`
-/

namespace A230076.P15208465189480020023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A105133 (n + 1)).toNat : ℚ) / 2

end

end A230076.P15208465189480020023

namespace A230076

/-- `A016825(A105133(n+1))/2` -/
def P15208465189480020023.Spec : Prop :=
  ∀ n, P15208465189480020023.a n = (A230076 (n + 1) : ℚ)

end A230076

/-! ## A230076.P7891588255004329496

`∩[A005098(n+1), A047241(n+1)]`
-/

namespace A230076.P7891588255004329496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230076.P7891588255004329496

namespace A230076

/-- `∩[A005098(n+1), A047241(n+1)]` -/
def P7891588255004329496.Spec : Prop :=
  ∀ n, (P7891588255004329496.a n : ℤ) = A230076 (n + 1)

end A230076

/-! ## A230076.P2390394441361423432

`∩[A047241(n+1), A380572(n+1)]`
-/

namespace A230076.P2390394441361423432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230076.P2390394441361423432

namespace A230076

/-- `∩[A047241(n+1), A380572(n+1)]` -/
def P2390394441361423432.Spec : Prop :=
  ∀ n, (P2390394441361423432.a n : ℤ) = A230076 (n + 1)

end A230076

/-! ## A230076.P10544500224773104503

`2*eq[2, A000005(8*n+5)]+1`
-/

namespace A230076.P10544500224773104503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230076.P10544500224773104503

namespace A230076

/-- `2*eq[2, A000005(8*n+5)]+1` -/
def P10544500224773104503.Spec : Prop :=
  ∀ n, (P10544500224773104503.a n : ℤ) = A230076 (n + 1)

end A230076

/-! ## A230076.P4964819807057694656

`eq[A001222(2*n+2*n+1)², gcd(2, n)]`
-/

namespace A230076.P4964819807057694656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + (2 * n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A230076.P4964819807057694656

namespace A230076

/-- `eq[A001222(2*n+2*n+1)², gcd(2, n)]` -/
def P4964819807057694656.Spec : Prop :=
  ∀ n, (P4964819807057694656.a n : ℤ) = A230076 (n + 1)

end A230076

/-! ## A230076.P8334298162623985385

`A000010(A045366(n+2))/4`
-/

namespace A230076.P8334298162623985385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A045366 (n + 2)).toNat : ℚ) / 4

end

end A230076.P8334298162623985385

namespace A230076

/-- `A000010(A045366(n+2))/4` -/
def P8334298162623985385.Spec : Prop :=
  ∀ n, P8334298162623985385.a n = (A230076 (n + 1) : ℚ)

end A230076

/-!
# A230078: Complement of A138929: positive integers not of the form 2*p^k, k >= 0, p a prime (also 2).

The programs for A230078, the canonical program `A230078.P11379375135510385140` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230078 has offset 1).

The definition of A230078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230078.P11379375135510385140

`comp[2*C(A008475(n+1), n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230078

/-- `comp[2*C(A008475(n+1), n)]` -/
def P11379375135510385140.Spec : Prop :=
  ∀ n, (P11379375135510385140.a n : ℤ) = A230078 (n + 1)

theorem P11379375135510385140.correct : P11379375135510385140.Spec := by
  intro n
  simp only [A230078, Nat.add_sub_cancel]

end A230078

/-! ## A230078.P11695173946523342378

`∪[2*n+1, A307517(n+1)]`
-/

namespace A230078.P11695173946523342378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230078.P11695173946523342378

namespace A230078

/-- `∪[2*n+1, A307517(n+1)]` -/
def P11695173946523342378.Spec : Prop :=
  ∀ n, (P11695173946523342378.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P16493171163474228520

`∪[2*n+1, A346608(n+1)]`
-/

namespace A230078.P16493171163474228520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230078.P16493171163474228520

namespace A230078

/-- `∪[2*n+1, A346608(n+1)]` -/
def P16493171163474228520.Spec : Prop :=
  ∀ n, (P16493171163474228520.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P11284555148943460708

`comp[2*A000961(n+1)-1]+1`
-/

namespace A230078.P11284555148943460708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000961 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A230078.P11284555148943460708

namespace A230078

/-- `comp[2*A000961(n+1)-1]+1` -/
def P11284555148943460708.Spec : Prop :=
  ∀ n, (P11284555148943460708.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P6285893790132233170

`comp[2*lt[A001221(n+1), 2]+1]+1`
-/

namespace A230078.P6285893790132233170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A230078.P6285893790132233170

namespace A230078

/-- `comp[2*lt[A001221(n+1), 2]+1]+1` -/
def P6285893790132233170.Spec : Prop :=
  ∀ n, (P6285893790132233170.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P13905237801214369737

`∪[A346608(n+1), A061345(n)]`
-/

namespace A230078.P13905237801214369737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230078.P13905237801214369737

namespace A230078

/-- `∪[A346608(n+1), A061345(n)]` -/
def P13905237801214369737.Spec : Prop :=
  ∀ n, (P13905237801214369737.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P67478710290584958

`comp[2*C(A140523(n+1), n)]`
-/

namespace A230078.P67478710290584958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A140523 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230078.P67478710290584958

namespace A230078

/-- `comp[2*C(A140523(n+1), n)]` -/
def P67478710290584958.Spec : Prop :=
  ∀ n, (P67478710290584958.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P8791590419502558144

`comp[2*n*A345064(∏{p}[n, #])]`
-/

namespace A230078.P8791590419502558144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A345064 (∏ p ∈ Nat.primeFactors (f2 n), p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230078.P8791590419502558144

namespace A230078

/-- `comp[2*n*A345064(∏{p}[n, #])]` -/
def P8791590419502558144.Spec : Prop :=
  ∀ n, (P8791590419502558144.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P1866080514282442191

`comp[2*A100994(n+1)-1]+1`
-/

namespace A230078.P1866080514282442191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100994 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A230078.P1866080514282442191

namespace A230078

/-- `comp[2*A100994(n+1)-1]+1` -/
def P1866080514282442191.Spec : Prop :=
  ∀ n, (P1866080514282442191.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P8861884866866318152

`comp[2*(A089247(n+1)-A074591(n+1))]`
-/

namespace A230078.P8861884866866318152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089247 (n + 1) - A074591 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230078.P8861884866866318152

namespace A230078

/-- `comp[2*(A089247(n+1)-A074591(n+1))]` -/
def P8861884866866318152.Spec : Prop :=
  ∀ n, (P8861884866866318152.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P14639030351608861132

`comp[2*(A327498(n+1)-A074591(n+1))]`
-/

namespace A230078.P14639030351608861132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A327498 (n + 1) - A074591 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230078.P14639030351608861132

namespace A230078

/-- `comp[2*(A327498(n+1)-A074591(n+1))]` -/
def P14639030351608861132.Spec : Prop :=
  ∀ n, (P14639030351608861132.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P13431441469291821937

`comp[2*and(n+1, A008683(A014963(n+1)))]`
-/

namespace A230078.P13431441469291821937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n + 1 : ℤ) (A008683 (A014963 (n + 1)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230078.P13431441469291821937

namespace A230078

/-- `comp[2*and(n+1, A008683(A014963(n+1)))]` -/
def P13431441469291821937.Spec : Prop :=
  ∀ n, (P13431441469291821937.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P17029256172377892939

`eq[n, gcd(n, 1-A020513(n))]`
-/

namespace A230078.P17029256172377892939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - A020513 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230078.P17029256172377892939

namespace A230078

/-- `eq[n, gcd(n, 1-A020513(n))]` -/
def P17029256172377892939.Spec : Prop :=
  ∀ n, (P17029256172377892939.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P10317269479004546219

`eq[A020513(n)*A211110(n), A211110(n)]`
-/

namespace A230078.P10317269479004546219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n * A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230078.P10317269479004546219

namespace A230078

/-- `eq[A020513(n)*A211110(n), A211110(n)]` -/
def P10317269479004546219.Spec : Prop :=
  ∀ n, (P10317269479004546219.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P10155940615863712491

`eq[abs(A020513(n)), A141044(n)]`
-/

namespace A230078.P10155940615863712491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020513 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230078.P10155940615863712491

namespace A230078

/-- `eq[abs(A020513(n)), A141044(n)]` -/
def P10155940615863712491.Spec : Prop :=
  ∀ n, (P10155940615863712491.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P17780264008081391585

`eq[A020513(or(1, n)), A020513(n)]`
-/

namespace A230078.P17780264008081391585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (Nat.lor 1 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230078.P17780264008081391585

namespace A230078

/-- `eq[A020513(or(1, n)), A020513(n)]` -/
def P17780264008081391585.Spec : Prop :=
  ∀ n, (P17780264008081391585.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P16126516708353520875

`eq[A020513(n), A020513(A056594(n)+n)]`
-/

namespace A230078.P16126516708353520875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A056594 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230078.P16126516708353520875

namespace A230078

/-- `eq[A020513(n), A020513(A056594(n)+n)]` -/
def P16126516708353520875.Spec : Prop :=
  ∀ n, (P16126516708353520875.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P13542749268567707199

`eq[1, A020513(xor(1, n+1))]`
-/

namespace A230078.P13542749268567707199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (Nat.xor 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230078.P13542749268567707199

namespace A230078

/-- `eq[1, A020513(xor(1, n+1))]` -/
def P13542749268567707199.Spec : Prop :=
  ∀ n, (P13542749268567707199.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P7147200298587178337

`eq[1, A020513(A062157(n)+1+n)]`
-/

namespace A230078.P7147200298587178337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A062157 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230078.P7147200298587178337

namespace A230078

/-- `eq[1, A020513(A062157(n)+1+n)]` -/
def P7147200298587178337.Spec : Prop :=
  ∀ n, (P7147200298587178337.a n : ℤ) = A230078 (n + 1)

end A230078

/-! ## A230078.P260656782647461185

`comp[lcm(2, A082081(n+1))]`
-/

namespace A230078.P260656782647461185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A082081 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230078.P260656782647461185

namespace A230078

/-- `comp[lcm(2, A082081(n+1))]` -/
def P260656782647461185.Spec : Prop :=
  ∀ n, (P260656782647461185.a n : ℤ) = A230078 (n + 1)

end A230078

/-!
# A230080: Sequence needed for the nonpositive powers of rho(11) = 2*cos(Pi/11) in terms of the power basis of the degree 5 number field Q(rho(11)). Coefficients of the first power.

The programs for A230080, the canonical program `A230080.P8254806272163798585` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230080 has offset 0).

The definition of A230080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230080.P8254806272163798585

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=23, a(4)=73`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230080

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P8254806272163798585.Spec : Prop :=
  ∀ n, P8254806272163798585.a n = A230080 n

theorem P8254806272163798585.correct : P8254806272163798585.Spec := by
  intro n
  simp only [A230080]

end A230080

/-! ## A230080.P11078651844324308141

`A069006(n+1)-2*A038342(n)`
-/

namespace A230080.P11078651844324308141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069006 (n + 1) - 2 * A038342 n

end

end A230080.P11078651844324308141

namespace A230080

/-- `A069006(n+1)-2*A038342(n)` -/
def P11078651844324308141.Spec : Prop :=
  ∀ n, P11078651844324308141.a n = A230080 n

end A230080

/-! ## A230080.P13642868011396354626

`A069006(C(n+1, n))%(2*A038342(n))`
-/

namespace A230080.P13642868011396354626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069006 (Nat.choose (n + 1) n)) (2 * A038342 n)

end

end A230080.P13642868011396354626

namespace A230080

/-- `A069006(C(n+1, n))%(2*A038342(n))` -/
def P13642868011396354626.Spec : Prop :=
  ∀ n, P13642868011396354626.a n = A230080 n

end A230080

/-! ## A230080.P2745620764430455759

`A069006(A033999(n)²+n)%(2*A038342(n))`
-/

namespace A230080.P2745620764430455759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069006 (A033999 n ^ 2 + (n : ℤ)).toNat) (2 * A038342 n)

end

end A230080.P2745620764430455759

namespace A230080

/-- `A069006(A033999(n)²+n)%(2*A038342(n))` -/
def P2745620764430455759.Spec : Prop :=
  ∀ n, P2745620764430455759.a n = A230080 n

end A230080

/-!
# A230081: Sequence needed for the nonpositive powers of rho(11) = 2*cos(Pi/11) in the power basis of the degree 5 number field Q(rho(11)). Negative of the coefficients of the second power.

The programs for A230081, the canonical program `A230081.P13206758288668773624` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230081 has offset 0).

The definition of A230081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230081.P13206758288668773624

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=13, a(3)=50, a(4)=173`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230081

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` -/
def P13206758288668773624.Spec : Prop :=
  ∀ n, P13206758288668773624.a n = A230081 n

theorem P13206758288668773624.correct : P13206758288668773624.Spec := by
  intro n
  simp only [A230081]

end A230081

/-! ## A230081.P6453635250752097208

`∑[A230080(n)+A120747(n+1)]`
-/

namespace A230081.P6453635250752097208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230080 n + A120747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230081.P6453635250752097208

namespace A230081

/-- `∑[A230080(n)+A120747(n+1)]` -/
def P6453635250752097208.Spec : Prop :=
  ∀ n, P6453635250752097208.a n = A230081 n

end A230081

/-! ## A230081.P1353122318730203276

`∑[A230080(n)+A069006(n)-A038201(4*n)]`
-/

namespace A230081.P1353122318730203276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230080 n + (A069006 n - A038201 (4 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230081.P1353122318730203276

namespace A230081

/-- `∑[A230080(n)+A069006(n)-A038201(4*n)]` -/
def P1353122318730203276.Spec : Prop :=
  ∀ n, P1353122318730203276.a n = A230081 n

end A230081

/-! ## A230081.P16678306103410577867

`A038342(n+1)-(A230080(n+1)+A230080(n))`
-/

namespace A230081.P16678306103410577867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038342 (n + 1) - (A230080 (n + 1) + A230080 n)

end

end A230081.P16678306103410577867

namespace A230081

/-- `A038342(n+1)-(A230080(n+1)+A230080(n))` -/
def P16678306103410577867.Spec : Prop :=
  ∀ n, P16678306103410577867.a n = A230081 n

end A230081

/-! ## A230081.P4919378241557231134

`∑[A120747(n+1)+A069006(n+1)-2*A038342(n)]`
-/

namespace A230081.P4919378241557231134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120747 (n + 1) + (A069006 (n + 1) - 2 * A038342 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230081.P4919378241557231134

namespace A230081

/-- `∑[A120747(n+1)+A069006(n+1)-2*A038342(n)]` -/
def P4919378241557231134.Spec : Prop :=
  ∀ n, P4919378241557231134.a n = A230081 n

end A230081

/-!
# A230086: Lexicographically earliest permutation of the positive integers such that a(n+a(n)) is prime for all n.

The programs for A230086, there is no canonical definition to state claims against.
-/

/-! ## A230086.P594050742856960726

`xor(A000007(A115509(n+1)), A283192(n+1))`
-/

namespace A230086.P594050742856960726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A115509 (n + 1)).toNat) (A283192 (n + 1))

end

end A230086.P594050742856960726

/-! ## A230086.P12184949441336905085

`Δ[A300067(A005043(n))]+n+1`
-/

namespace A230086.P12184949441336905085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300067 (A005043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A230086.P12184949441336905085

/-! ## A230086.P10607451809833835825

`Δ[A248639(A069527(n+1))]+n+1`
-/

namespace A230086.P10607451809833835825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A069527 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A230086.P10607451809833835825

/-! ## A230086.P17890743548994648574

`xor(A000007(A028384(n)), A096135(n+1))`
-/

namespace A230086.P17890743548994648574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (A028384 n).toNat) (A096135 (n + 1))

end

end A230086.P17890743548994648574

/-! ## A230086.P8042005627007346445

`xor(A001221(A090947(n)), A275375(n+1))`
-/

namespace A230086.P8042005627007346445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A090947 n).toNat) (A275375 (n + 1))

end

end A230086.P8042005627007346445

/-!
# A230087: Primes such that prime plus its digit sum is a perfect square.

The programs for A230087, there is no canonical definition to state claims against.
-/

/-! ## A230087.P12801903405649285416

`p?[A066564(n+1)]`
-/

namespace A230087.P12801903405649285416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230087.P12801903405649285416

/-! ## A230087.P15697441949376221477

`p?[record[A066564(A065648(n))]]`
-/

namespace A230087.P15697441949376221477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230087.P15697441949376221477

/-! ## A230087.P11066587111778023373

`p?[record[A066564(A133310(n))]]`
-/

namespace A230087.P11066587111778023373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230087.P11066587111778023373

/-! ## A230087.P12996359599885674548

`p?[record[A066564(A328399(n))]]`
-/

namespace A230087.P12996359599885674548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230087.P12996359599885674548

/-! ## A230087.P1357756079787582046

`∩[A003627(n+1), A066564(n+1)]`
-/

namespace A230087.P1357756079787582046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230087.P1357756079787582046

/-!
# A230088: Partial sums of A010062.

The programs for A230088, the canonical program `A230088.P11230979796823215461` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230088 has offset 0).

The definition of A230088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230088.P11230979796823215461

`∑[A010062(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230088

/-- `∑[A010062(n)]` -/
def P11230979796823215461.Spec : Prop :=
  ∀ n, P11230979796823215461.a n = A230088 n

theorem P11230979796823215461.correct : P11230979796823215461.Spec := by
  intro n
  simp only [A230088]

end A230088

/-! ## A230088.P11555268562989553385

`∑[∑[A309674(n+1)]]`
-/

namespace A230088.P11555268562989553385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309674 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230088.P11555268562989553385

namespace A230088

/-- `∑[∑[A309674(n+1)]]` -/
def P11555268562989553385.Spec : Prop :=
  ∀ n, P11555268562989553385.a n = A230088 n

end A230088

/-! ## A230088.P16692229273186574524

`∑[A092391(a(n-1))]` with `a(0)=1`
-/

namespace A230088.P16692229273186574524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A092391 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230088.P16692229273186574524

namespace A230088

/-- `∑[A092391(a(n-1))]` -/
def P16692229273186574524.Spec : Prop :=
  ∀ n, P16692229273186574524.a n = A230088 n

end A230088

/-! ## A230088.P10808827739063587020

`∑[A000120(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A230088.P10808827739063587020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000120 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230088.P10808827739063587020

namespace A230088

/-- `∑[A000120(a(n-1))+a(n-1)]` -/
def P10808827739063587020.Spec : Prop :=
  ∀ n, P10808827739063587020.a n = A230088 n

end A230088

/-! ## A230088.P6871096320972125685

`∑[lt[A096303(n+1), 1]+1]`
-/

namespace A230088.P6871096320972125685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096303 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230088.P6871096320972125685

namespace A230088

/-- `∑[lt[A096303(n+1), 1]+1]` -/
def P6871096320972125685.Spec : Prop :=
  ∀ n, (P6871096320972125685.a n : ℤ) = A230088 n

end A230088

/-! ## A230088.P3167727309870255418

`∑[A228083(∑[n]+1)]`
-/

namespace A230088.P3167727309870255418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228083 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230088.P3167727309870255418

namespace A230088

/-- `∑[A228083(∑[n]+1)]` -/
def P3167727309870255418.Spec : Prop :=
  ∀ n, P3167727309870255418.a n = A230088 n

end A230088

/-!
# A230089: If n is divisible by 4 then 4, if n is divisible by 2 then 2, otherwise n.

The programs for A230089, the canonical program `A230089.P3673812543124938281` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230089 has offset 1).

The definition of A230089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230089.P3673812543124938281

`gcd(xor(1, n)², n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230089

/-- `gcd(xor(1, n)², n+1)` -/
def P3673812543124938281.Spec : Prop :=
  ∀ n, (P3673812543124938281.a n : ℤ) = A230089 (n + 1)

theorem P3673812543124938281.correct : P3673812543124938281.Spec := by
  intro n
  simp only [A230089, Nat.add_sub_cancel]

end A230089

/-! ## A230089.P17705902676283592040

`and(n, Δ[xor(1, n)])+1`
-/

namespace A230089.P17705902676283592040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A230089.P17705902676283592040

namespace A230089

/-- `and(n, Δ[xor(1, n)])+1` -/
def P17705902676283592040.Spec : Prop :=
  ∀ n, P17705902676283592040.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P8697685444494168495

`gcd(Δ[or(1, n)]², xor(n, -1))`
-/

namespace A230089.P8697685444494168495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (Int.xor (n : ℤ) (-1))

end

end A230089.P8697685444494168495

namespace A230089

/-- `gcd(Δ[or(1, n)]², xor(n, -1))` -/
def P8697685444494168495.Spec : Prop :=
  ∀ n, (P8697685444494168495.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P4197737552417911297

`gcd(xor(1, n)^2, ∑[2*n])`
-/

namespace A230089.P4197737552417911297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230089.P4197737552417911297

namespace A230089

/-- `gcd(xor(1, n)^2, ∑[2*n])` -/
def P4197737552417911297.Spec : Prop :=
  ∀ n, (P4197737552417911297.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P4252182990170628212

`(lcm(4, n+1)+6)%(n+3)`
-/

namespace A230089.P4252182990170628212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) + 6) % (n + 3)

end

end A230089.P4252182990170628212

namespace A230089

/-- `(lcm(4, n+1)+6)%(n+3)` -/
def P4252182990170628212.Spec : Prop :=
  ∀ n, (P4252182990170628212.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P4909116117655366847

`and(n, 4*and(1, n)-1)+1`
-/

namespace A230089.P4909116117655366847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((4 * Nat.land 1 n : ℤ) - 1) + 1

end

end A230089.P4909116117655366847

namespace A230089

/-- `and(n, 4*and(1, n)-1)+1` -/
def P4909116117655366847.Spec : Prop :=
  ∀ n, P4909116117655366847.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P2517927951660509909

`n-or(3, a(n-1)-5)` with `a(0)=1`
-/

namespace A230089.P2517927951660509909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.lor 3 (a (n - 1) - 5)

end

end A230089.P2517927951660509909

namespace A230089

/-- `n-or(3, a(n-1)-5)` -/
def P2517927951660509909.Spec : Prop :=
  ∀ n, P2517927951660509909.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P17351425726367614081

`gcd(and(2, 2*n)², C(n+1, n))`
-/

namespace A230089.P17351425726367614081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.land 2 (2 * n) ^ 2) (Nat.choose (n + 1) n)

end

end A230089.P17351425726367614081

namespace A230089

/-- `gcd(and(2, 2*n)², C(n+1, n))` -/
def P17351425726367614081.Spec : Prop :=
  ∀ n, (P17351425726367614081.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P9762241639406632399

`gcd(1-(4/2+n), 2*xor(1, n))`
-/

namespace A230089.P9762241639406632399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) (2 * Nat.xor 1 n : ℤ)

end

end A230089.P9762241639406632399

namespace A230089

/-- `gcd(1-(4/2+n), 2*xor(1, n))` -/
def P9762241639406632399.Spec : Prop :=
  ∀ n, (P9762241639406632399.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P8005841325568198521

`gcd(2*n+1-n, xor(2, 2*n))`
-/

namespace A230089.P8005841325568198521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (Nat.xor 2 (2 * n) : ℤ)

end

end A230089.P8005841325568198521

namespace A230089

/-- `gcd(2*n+1-n, xor(2, 2*n))` -/
def P8005841325568198521.Spec : Prop :=
  ∀ n, (P8005841325568198521.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P13970044723469030156

`gcd(2*n-(n-1), 4*and(1, n))`
-/

namespace A230089.P13970044723469030156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - ((n : ℤ) - 1)) (4 * Nat.land 1 n : ℤ)

end

end A230089.P13970044723469030156

namespace A230089

/-- `gcd(2*n-(n-1), 4*and(1, n))` -/
def P13970044723469030156.Spec : Prop :=
  ∀ n, (P13970044723469030156.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P2103676300588021595

`and(n, Δ[n-1-a(n-1)])+1` with `a(0)=1`
-/

namespace A230089.P2103676300588021595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + 1

end

end A230089.P2103676300588021595

namespace A230089

/-- `and(n, Δ[n-1-a(n-1)])+1` -/
def P2103676300588021595.Spec : Prop :=
  ∀ n, P2103676300588021595.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P13699566796108861042

`and(3, n-1)-a(n-1)+n+2` with `a(0)=1`
-/

namespace A230089.P13699566796108861042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 3 ((n : ℤ) - 1) - a (n - 1) + (n + 2 : ℤ)

end

end A230089.P13699566796108861042

namespace A230089

/-- `and(3, n-1)-a(n-1)+n+2` -/
def P13699566796108861042.Spec : Prop :=
  ∀ n, P13699566796108861042.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P5855677238744346486

`gcd((2*n+1)*(n+1), (2*or(1, n))²)`
-/

namespace A230089.P5855677238744346486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((2 * n + 1) * (n + 1)) ((2 * Nat.lor 1 n) ^ 2)

end

end A230089.P5855677238744346486

namespace A230089

/-- `gcd((2*n+1)*(n+1), (2*or(1, n))²)` -/
def P5855677238744346486.Spec : Prop :=
  ∀ n, (P5855677238744346486.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P8674402545575327951

`gcd(a(n-2)+2, 4%a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A230089.P8674402545575327951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  Nat.gcd (a (n - 2) + 2) (4 % a (n - 1))

end

end A230089.P8674402545575327951

namespace A230089

/-- `gcd(a(n-2)+2, 4%a(n-1))` -/
def P8674402545575327951.Spec : Prop :=
  ∀ n, (P8674402545575327951.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P229390247638417121

`2-a(n-1)+a(n-2)%4+n` with `a(0)=1, a(1)=2`
-/

namespace A230089.P229390247638417121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - a (n - 1) + (Int.tmod (a (n - 2)) 4 + (n : ℤ))

end

end A230089.P229390247638417121

namespace A230089

/-- `2-a(n-1)+a(n-2)%4+n` -/
def P229390247638417121.Spec : Prop :=
  ∀ n, P229390247638417121.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P6489461947754882717

`gcd(∑[2*n+1]/(n+1), and(2, 2*n+1)²)`
-/

namespace A230089.P6489461947754882717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))) (Nat.land 2 (2 * n + 1) ^ 2 : ℤ)

end

end A230089.P6489461947754882717

namespace A230089

/-- `gcd(∑[2*n+1]/(n+1), and(2, 2*n+1)²)` -/
def P6489461947754882717.Spec : Prop :=
  ∀ n, (P6489461947754882717.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P4187969612233119441

`gcd(n+1, A010675(n))`
-/

namespace A230089.P4187969612233119441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010675 n)

end

end A230089.P4187969612233119441

namespace A230089

/-- `gcd(n+1, A010675(n))` -/
def P4187969612233119441.Spec : Prop :=
  ∀ n, (P4187969612233119441.a n : ℤ) = A230089 (n + 1)

end A230089

/-! ## A230089.P12105402329898584178

`and(n, A049071(n))+1`
-/

namespace A230089.P12105402329898584178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A049071 n) + 1

end

end A230089.P12105402329898584178

namespace A230089

/-- `and(n, A049071(n))+1` -/
def P12105402329898584178.Spec : Prop :=
  ∀ n, P12105402329898584178.a n = A230089 (n + 1)

end A230089

/-! ## A230089.P12870753456795379961

`and(n, Δ[A004442(n)])+1`
-/

namespace A230089.P12870753456795379961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + 1

end

end A230089.P12870753456795379961

namespace A230089

/-- `and(n, Δ[A004442(n)])+1` -/
def P12870753456795379961.Spec : Prop :=
  ∀ n, P12870753456795379961.a n = A230089 (n + 1)

end A230089

/-!
# A230091: Numbers of the form k + wt(k) for exactly two distinct k, where wt(k) = A000120(k) is the binary weight of k.

The programs for A230091, there is no canonical definition to state claims against.
-/

/-! ## A230091.P1446736182446155576

`eq[2, A228085(n)]`
-/

namespace A230091.P1446736182446155576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230091.P1446736182446155576

/-! ## A230091.P4663669877639769842

`lt[A190191(a(A228085(n))+1), 1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A230091.P4663669877639769842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f1 =>
  A190191 (f1 (A228085 n).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230091.P4663669877639769842

/-! ## A230091.P12123213221555988539

`lt[abs(A020639(4*n+2)-A228085(n)), 1]`
-/

namespace A230091.P12123213221555988539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020639 (4 * n + 2) - A228085 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230091.P12123213221555988539

/-! ## A230091.P7543761680474186573

`A230058(n+1)+A004198(A018843(n))`
-/

namespace A230091.P7543761680474186573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230058 (n + 1) + A004198 (A018843 n).toNat

end

end A230091.P7543761680474186573

/-! ## A230091.P7303014276820720316

`A004198(A018843(n))+lt[1, A228085(n)]`
-/

namespace A230091.P7303014276820720316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A018843 n).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A230091.P7303014276820720316

/-!
# A230092: Numbers of the form k + wt(k) for exactly three distinct k, where wt(k) = A000120(k) is the binary weight of k.

The programs for A230092, there is no canonical definition to state claims against.
-/

/-! ## A230092.P15816609044710014589

`eq[3, A228085(n)]`
-/

namespace A230092.P15816609044710014589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230092.P15816609044710014589

/-!
# A230093: Number of values of k such that k + (sum of digits of k) is n.

The programs for A230093, there is no canonical definition to state claims against.
-/

/-! ## A230093.P5397812098236598276

`char[A230094(n+1)]+char[A062028(n)]`
-/

namespace A230093.P5397812098236598276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A230093.P5397812098236598276

/-!
# A230094: Numbers that can be expressed as (m + sum of digits of m) in exactly two ways.

The programs for A230094, there is no canonical definition to state claims against.
-/

/-! ## A230094.P13937229170578408029

`lt[A035214(n), A230093(n)²]`
-/

namespace A230094.P13937229170578408029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230094.P13937229170578408029

/-! ## A230094.P7533013040702032543

`lt[A154325(n), A230093(n)²]`
-/

namespace A230094.P7533013040702032543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230094.P7533013040702032543

/-! ## A230094.P325489708008168799

`eq[A165059(n+1), A230093(n)]`
-/

namespace A230094.P325489708008168799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P325489708008168799

/-! ## A230094.P13955517663857907270

`eq[A165063(n+1), A230093(n)]`
-/

namespace A230094.P13955517663857907270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P13955517663857907270

/-! ## A230094.P11595981378977021399

`eq[A230093(n), A235052(n+1)]`
-/

namespace A230094.P11595981378977021399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P11595981378977021399

/-! ## A230094.P13952685626966594096

`eq[A230093(n), A236213(n+1)]`
-/

namespace A230094.P13952685626966594096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P13952685626966594096

/-! ## A230094.P1899358230179086325

`eq[A034077(n+2), A230093(n)]`
-/

namespace A230094.P1899358230179086325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P1899358230179086325

/-! ## A230094.P9076502229636648750

`eq[A161872(n+2), A230093(n)]`
-/

namespace A230094.P9076502229636648750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161872 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P9076502229636648750

/-! ## A230094.P17367410339278841559

`eq[A154068(n+4), A230093(n)]`
-/

namespace A230094.P17367410339278841559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154068 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230094.P17367410339278841559

/-! ## A230094.P18377412388986163939

`A062028(A134808(n+2)-1)`
-/

namespace A230094.P18377412388986163939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A134808 (n + 2) - 1).toNat

end

end A230094.P18377412388986163939

/-!
# A230095: Odious numbers (A000069) that are the product of exactly two distinct primes.

The programs for A230095, the canonical program `A230095.P4209829393180644445` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230095 has offset 1).

The definition of A230095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230095.P2549810774219978721

`filter[A006881(n+1), A295297(#)]`
-/

namespace A230095.P2549810774219978721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A230095.P2549810774219978721

namespace A230095

/-- `filter[A006881(n+1), A295297(#)]` -/
def P2549810774219978721.Spec : Prop :=
  ∀ n, P2549810774219978721.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P8044197569400142895

`filter[A006881(n+1), A361018(#)]`
-/

namespace A230095.P8044197569400142895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230095.P8044197569400142895

namespace A230095

/-- `filter[A006881(n+1), A361018(#)]` -/
def P8044197569400142895.Spec : Prop :=
  ∀ n, P8044197569400142895.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P16361260456538939779

`filter[A161918(n+1), A295297(#)]`
-/

namespace A230095.P16361260456538939779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A230095.P16361260456538939779

namespace A230095

/-- `filter[A161918(n+1), A295297(#)]` -/
def P16361260456538939779.Spec : Prop :=
  ∀ n, P16361260456538939779.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P6922814370634646590

`filter[A161918(n+1), A361018(#)]`
-/

namespace A230095.P6922814370634646590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230095.P6922814370634646590

namespace A230095

/-- `filter[A161918(n+1), A361018(#)]` -/
def P6922814370634646590.Spec : Prop :=
  ∀ n, P6922814370634646590.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P3051030167384936241

`filter[A068993(n+1), A295297(#)]`
-/

namespace A230095.P3051030167384936241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A230095.P3051030167384936241

namespace A230095

/-- `filter[A068993(n+1), A295297(#)]` -/
def P3051030167384936241.Spec : Prop :=
  ∀ n, P3051030167384936241.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P7459658003722567480

`filter[A230048(n+1), A064911(#)]`
-/

namespace A230095.P7459658003722567480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A230095.P7459658003722567480

namespace A230095

/-- `filter[A230048(n+1), A064911(#)]` -/
def P7459658003722567480.Spec : Prop :=
  ∀ n, P7459658003722567480.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P3623030252060321791

`filter[A230048(n+1), A280710(#)]`
-/

namespace A230095.P3623030252060321791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A230095.P3623030252060321791

namespace A230095

/-- `filter[A230048(n+1), A280710(#)]` -/
def P3623030252060321791.Spec : Prop :=
  ∀ n, P3623030252060321791.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P4209829393180644445

`filter[A230048(n+2), A354927(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230095

/-- `filter[A230048(n+2), A354927(#)]` -/
def P4209829393180644445.Spec : Prop :=
  ∀ n, P4209829393180644445.a n = A230095 (n + 1)

theorem P4209829393180644445.correct : P4209829393180644445.Spec := by
  intro n
  simp only [A230095, Nat.add_sub_cancel]

end A230095

/-! ## A230095.P14404111716199870908

`∩[A001358(n+1), A230048(n+1)]`
-/

namespace A230095.P14404111716199870908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P14404111716199870908

namespace A230095

/-- `∩[A001358(n+1), A230048(n+1)]` -/
def P14404111716199870908.Spec : Prop :=
  ∀ n, (P14404111716199870908.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P12287634542696737936

`∩[A006881(n+1), A230048(n+1)]`
-/

namespace A230095.P12287634542696737936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P12287634542696737936

namespace A230095

/-- `∩[A006881(n+1), A230048(n+1)]` -/
def P12287634542696737936.Spec : Prop :=
  ∀ n, (P12287634542696737936.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P16631114418563658710

`∩[A030513(n+1), A230048(n+1)]`
-/

namespace A230095.P16631114418563658710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P16631114418563658710

namespace A230095

/-- `∩[A030513(n+1), A230048(n+1)]` -/
def P16631114418563658710.Spec : Prop :=
  ∀ n, (P16631114418563658710.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P16523498434816437586

`∩[A068993(n+1), A230048(n+1)]`
-/

namespace A230095.P16523498434816437586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P16523498434816437586

namespace A230095

/-- `∩[A068993(n+1), A230048(n+1)]` -/
def P16523498434816437586.Spec : Prop :=
  ∀ n, (P16523498434816437586.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P13040133846327873783

`∩[A077135(n+1), A230048(n+1)]`
-/

namespace A230095.P13040133846327873783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P13040133846327873783

namespace A230095

/-- `∩[A077135(n+1), A230048(n+1)]` -/
def P13040133846327873783.Spec : Prop :=
  ∀ n, (P13040133846327873783.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P13084511489081246013

`∩[A077136(n+1), A230048(n+1)]`
-/

namespace A230095.P13084511489081246013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P13084511489081246013

namespace A230095

/-- `∩[A077136(n+1), A230048(n+1)]` -/
def P13084511489081246013.Spec : Prop :=
  ∀ n, (P13084511489081246013.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P10969884834227734796

`∩[A230048(n+1), A325230(n+1)]`
-/

namespace A230095.P10969884834227734796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P10969884834227734796

namespace A230095

/-- `∩[A230048(n+1), A325230(n+1)]` -/
def P10969884834227734796.Spec : Prop :=
  ∀ n, (P10969884834227734796.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P9061493181069059953

`filter[A289558(n+1), A361018(#)]`
-/

namespace A230095.P9061493181069059953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361018 (f1 j).toNat = 1) n)

end

end A230095.P9061493181069059953

namespace A230095

/-- `filter[A289558(n+1), A361018(#)]` -/
def P9061493181069059953.Spec : Prop :=
  ∀ n, P9061493181069059953.a n = A230095 (n + 1)

end A230095

/-! ## A230095.P13640587029833617656

`∩[A065985(n+1), A230048(n+1)]`
-/

namespace A230095.P13640587029833617656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P13640587029833617656

namespace A230095

/-- `∩[A065985(n+1), A230048(n+1)]` -/
def P13640587029833617656.Spec : Prop :=
  ∀ n, (P13640587029833617656.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P18003112837540697528

`∩[A176525(n+1), A230048(n+1)]`
-/

namespace A230095.P18003112837540697528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P18003112837540697528

namespace A230095

/-- `∩[A176525(n+1), A230048(n+1)]` -/
def P18003112837540697528.Spec : Prop :=
  ∀ n, (P18003112837540697528.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P17851206835325997416

`∩[A007774(n+1), A230048(n+1)]`
-/

namespace A230095.P17851206835325997416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230095.P17851206835325997416

namespace A230095

/-- `∩[A007774(n+1), A230048(n+1)]` -/
def P17851206835325997416.Spec : Prop :=
  ∀ n, (P17851206835325997416.a n : ℤ) = A230095 (n + 1)

end A230095

/-! ## A230095.P1417952228787917868

`filter[A125495(n+1), A280710(#)]`
-/

namespace A230095.P1417952228787917868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A230095.P1417952228787917868

namespace A230095

/-- `filter[A125495(n+1), A280710(#)]` -/
def P1417952228787917868.Spec : Prop :=
  ∀ n, P1417952228787917868.a n = A230095 (n + 1)

end A230095

/-!
# A230096: Number of tilings of an n X 1 rectangle (using tiles of dimension 1 X 1 and 2 X 1) that share no tile at the same position with their mirrored image.

The programs for A230096, the canonical program `A230096.P6672190863429273403` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230096 has offset 0).

The definition of A230096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230096.P6672190863429273403

`a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230096

/-- `a(n-2)+2*a(n-4)` -/
def P6672190863429273403.Spec : Prop :=
  ∀ n, (P6672190863429273403.a n : ℤ) = A230096 n

theorem P6672190863429273403.correct : P6672190863429273403.Spec := by
  intro n
  simp only [A230096]

end A230096

/-! ## A230096.P12133741850367204474

`A078008(floor((n+1)/2))`
-/

namespace A230096.P12133741850367204474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A230096.P12133741850367204474

namespace A230096

/-- `A078008(floor((n+1)/2))` -/
def P12133741850367204474.Spec : Prop :=
  ∀ n, P12133741850367204474.a n = A230096 n

end A230096

/-! ## A230096.P12877021113515664369

`ogf((1-x^2+2x^3)/(1-x^2-2x^4))`
-/

namespace A230096.P12877021113515664369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2] [1, 0, -1, 0, -2] n

end

end A230096.P12877021113515664369

namespace A230096

/-- `ogf((1-x^2+2x^3)/(1-x^2-2x^4))` -/
def P12877021113515664369.Spec : Prop :=
  ∀ n, P12877021113515664369.a n = A230096 n

end A230096

/-! ## A230096.P3310284808434693346

`2*(a(n-2)+(-1)^∑[n])` with `a(0)=1, a(1)=0`
-/

namespace A230096.P3310284808434693346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * (a (n - 2) + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A230096.P3310284808434693346

namespace A230096

/-- `2*(a(n-2)+(-1)^∑[n])` -/
def P3310284808434693346.Spec : Prop :=
  ∀ n, P3310284808434693346.a n = A230096 n

end A230096

/-! ## A230096.P14650445756976443971

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A230096.P14650445756976443971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A230096.P14650445756976443971

namespace A230096

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P14650445756976443971.Spec : Prop :=
  ∀ n, (P14650445756976443971.a n : ℤ) = A230096 n

end A230096

/-! ## A230096.P6871206469800866061

`A133684(or(1, n+1))`
-/

namespace A230096.P6871206469800866061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (Nat.lor 1 (n + 1))

end

end A230096.P6871206469800866061

namespace A230096

/-- `A133684(or(1, n+1))` -/
def P6871206469800866061.Spec : Prop :=
  ∀ n, P6871206469800866061.a n = A230096 n

end A230096

/-! ## A230096.P8817110704774231602

`A133684(A109613(n+1))`
-/

namespace A230096.P8817110704774231602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A109613 (n + 1)).toNat

end

end A230096.P8817110704774231602

namespace A230096

/-- `A133684(A109613(n+1))` -/
def P8817110704774231602.Spec : Prop :=
  ∀ n, P8817110704774231602.a n = A230096 n

end A230096

/-! ## A230096.P13130109214093003737

`A133684(A063196(n+2))`
-/

namespace A230096.P13130109214093003737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A063196 (n + 2)).toNat

end

end A230096.P13130109214093003737

namespace A230096

/-- `A133684(A063196(n+2))` -/
def P13130109214093003737.Spec : Prop :=
  ∀ n, P13130109214093003737.a n = A230096 n

end A230096

/-! ## A230096.P7975232674522116711

`A133684(A000035(n)+1+n)`
-/

namespace A230096.P7975232674522116711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A000035 n + 1 + (n : ℤ)).toNat

end

end A230096.P7975232674522116711

namespace A230096

/-- `A133684(A000035(n)+1+n)` -/
def P7975232674522116711.Spec : Prop :=
  ∀ n, P7975232674522116711.a n = A230096 n

end A230096

/-! ## A230096.P8123848779964386007

`A133684(A042948(n+1)-n)`
-/

namespace A230096.P8123848779964386007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A042948 (n + 1) - (n : ℤ)).toNat

end

end A230096.P8123848779964386007

namespace A230096

/-- `A133684(A042948(n+1)-n)` -/
def P8123848779964386007.Spec : Prop :=
  ∀ n, P8123848779964386007.a n = A230096 n

end A230096

/-! ## A230096.P4323583728561756376

`A133730(or(1, n))+A133730(n)`
-/

namespace A230096.P4323583728561756376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (Nat.lor 1 n) + A133730 n

end

end A230096.P4323583728561756376

namespace A230096

/-- `A133730(or(1, n))+A133730(n)` -/
def P4323583728561756376.Spec : Prop :=
  ∀ n, P4323583728561756376.a n = A230096 n

end A230096

/-! ## A230096.P10984502857888458638

`A133684(n+1)+A056594(n+1)`
-/

namespace A230096.P10984502857888458638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (n + 1) + A056594 (n + 1)

end

end A230096.P10984502857888458638

namespace A230096

/-- `A133684(n+1)+A056594(n+1)` -/
def P10984502857888458638.Spec : Prop :=
  ∀ n, P10984502857888458638.a n = A230096 n

end A230096

/-! ## A230096.P105598386460030002

`A135318(n)-A133684(n)`
-/

namespace A230096.P105598386460030002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n - A133684 n

end

end A230096.P105598386460030002

namespace A230096

/-- `A135318(n)-A133684(n)` -/
def P105598386460030002.Spec : Prop :=
  ∀ n, P105598386460030002.a n = A230096 n

end A230096

/-! ## A230096.P5141713129902722158

`A135318(n+1)+A133730(n)-A135318(n)`
-/

namespace A230096.P5141713129902722158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) + (A133730 n - A135318 n)

end

end A230096.P5141713129902722158

namespace A230096

/-- `A135318(n+1)+A133730(n)-A135318(n)` -/
def P5141713129902722158.Spec : Prop :=
  ∀ n, P5141713129902722158.a n = A230096 n

end A230096

/-! ## A230096.P6187104766985365063

`A001045(A008619(n+1))-A001045(A004526(n+1))`
-/

namespace A230096.P6187104766985365063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A008619 (n + 1)).toNat - A001045 (A004526 (n + 1)).toNat

end

end A230096.P6187104766985365063

namespace A230096

/-- `A001045(A008619(n+1))-A001045(A004526(n+1))` -/
def P6187104766985365063.Spec : Prop :=
  ∀ n, P6187104766985365063.a n = A230096 n

end A230096

/-! ## A230096.P7814727383137444343

`Δ[A135318(n+1)-A056594(n+1)]`
-/

namespace A230096.P7814727383137444343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (n + 1) - A056594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230096.P7814727383137444343

namespace A230096

/-- `Δ[A135318(n+1)-A056594(n+1)]` -/
def P7814727383137444343.Spec : Prop :=
  ∀ n, P7814727383137444343.a n = A230096 n

end A230096

/-! ## A230096.P13558180523716791529

`A056594(n)+A356050(n)-A016116(n)`
-/

namespace A230096.P13558180523716791529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + (A356050 n - A016116 n)

end

end A230096.P13558180523716791529

namespace A230096

/-- `A056594(n)+A356050(n)-A016116(n)` -/
def P13558180523716791529.Spec : Prop :=
  ∀ n, P13558180523716791529.a n = A230096 n

end A230096

/-! ## A230096.P4600367763528644596

`A016116(n+1)+A135318(n+1)-A356050(n+1)`
-/

namespace A230096.P4600367763528644596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + (A135318 (n + 1) - A356050 (n + 1))

end

end A230096.P4600367763528644596

namespace A230096

/-- `A016116(n+1)+A135318(n+1)-A356050(n+1)` -/
def P4600367763528644596.Spec : Prop :=
  ∀ n, P4600367763528644596.a n = A230096 n

end A230096

/-! ## A230096.P3226092773440848212

`A113678(A080476(n+2))`
-/

namespace A230096.P3226092773440848212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 (A080476 (n + 2)).toNat

end

end A230096.P3226092773440848212

namespace A230096

/-- `A113678(A080476(n+2))` -/
def P3226092773440848212.Spec : Prop :=
  ∀ n, P3226092773440848212.a n = A230096 n

end A230096

/-! ## A230096.P9215494600797775907

`A113678(A093907(n+1))`
-/

namespace A230096.P9215494600797775907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 (A093907 (n + 1)).toNat

end

end A230096.P9215494600797775907

namespace A230096

/-- `A113678(A093907(n+1))` -/
def P9215494600797775907.Spec : Prop :=
  ∀ n, P9215494600797775907.a n = A230096 n

end A230096

/-!
# A230097: Indices of records in A159918.

The programs for A230097, there is no canonical definition to state claims against.
-/

/-! ## A230097.P14566448940602865616

`A231897(A357304(n+1))`
-/

namespace A230097.P14566448940602865616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 (A357304 (n + 1)).toNat

end

end A230097.P14566448940602865616

/-! ## A230097.P8987143403683282187

`A231897(lt[A231898(n+1), A231880(n+4)])`
-/

namespace A230097.P8987143403683282187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231880 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230097.P8987143403683282187

/-! ## A230097.P6002382929077932997

`A231897(record[A159918(n)])`
-/

namespace A230097.P6002382929077932997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230097.P6002382929077932997

/-! ## A230097.P1440341170025233430

`A231897(record[A232243(n)+A000120(n)])`
-/

namespace A230097.P1440341170025233430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n + A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230097.P1440341170025233430

/-! ## A230097.P15207003651431651268

`A231897(record[A232245(n)-A000120(n)])`
-/

namespace A230097.P15207003651431651268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232245 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230097.P15207003651431651268

/-!
# A230098: a(n) = n*prime(prime(n)) - prime(n)^2.

The programs for A230098, the canonical program `A230098.P9825355095693944970` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230098 has offset 1).

The definition of A230098 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000040(A000040(n+1))-A000040(n+1)²` (program `A230098.P9825355095693944970`, by `A230098.P9825355095693944970.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230098.P1397761245252951239

`A080697(n+1)-A001248(n+1)`
-/

namespace A230098.P1397761245252951239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A001248 (n + 1)

end

end A230098.P1397761245252951239

namespace A230098

/-- `A080697(n+1)-A001248(n+1)` -/
def P1397761245252951239.Spec : Prop :=
  ∀ n, P1397761245252951239.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P9825355095693944970

`(n+1)*A000040(A000040(n+1))-A000040(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230098

/-- `(n+1)*A000040(A000040(n+1))-A000040(n+1)²` -/
def P9825355095693944970.Spec : Prop :=
  ∀ n, P9825355095693944970.a n = A230098 (n + 1)

theorem P9825355095693944970.correct : P9825355095693944970.Spec := by
  intro n
  simp only [A230098, Nat.add_sub_cancel]

end A230098

/-! ## A230098.P7208891840304281349

`A230285(n+1)-A036689(n+1)`
-/

namespace A230098.P7208891840304281349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230285 (n + 1) - A036689 (n + 1)

end

end A230098.P7208891840304281349

namespace A230098

/-- `A230285(n+1)-A036689(n+1)` -/
def P7208891840304281349.Spec : Prop :=
  ∀ n, P7208891840304281349.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P2048627149254281569

`A080697(n+1)-Δ[A007504(n)]²`
-/

namespace A230098.P2048627149254281569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A230098.P2048627149254281569

namespace A230098

/-- `A080697(n+1)-Δ[A007504(n)]²` -/
def P2048627149254281569.Spec : Prop :=
  ∀ n, P2048627149254281569.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P17752649738974731067

`A080697(n+1)-Δ[A008348(n)]²`
-/

namespace A230098.P17752649738974731067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A230098.P17752649738974731067

namespace A230098

/-- `A080697(n+1)-Δ[A008348(n)]²` -/
def P17752649738974731067.Spec : Prop :=
  ∀ n, P17752649738974731067.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P5776227255303218805

`A080697(n+1)-Δ[A022837(n)]²`
-/

namespace A230098.P5776227255303218805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A230098.P5776227255303218805

namespace A230098

/-- `A080697(n+1)-Δ[A022837(n)]²` -/
def P5776227255303218805.Spec : Prop :=
  ∀ n, P5776227255303218805.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P12069505337367898825

`A080697(n+1)-A000040(n+1)²`
-/

namespace A230098.P12069505337367898825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - A000040 (n + 1) ^ 2

end

end A230098.P12069505337367898825

namespace A230098

/-- `A080697(n+1)-A000040(n+1)²` -/
def P12069505337367898825.Spec : Prop :=
  ∀ n, P12069505337367898825.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P6398278771842010097

`A080697(n+1)-∑[A054541(n+1)]²`
-/

namespace A230098.P6398278771842010097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230098.P6398278771842010097

namespace A230098

/-- `A080697(n+1)-∑[A054541(n+1)]²` -/
def P6398278771842010097.Spec : Prop :=
  ∀ n, P6398278771842010097.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P16708751335457204651

`(n+1)*A006450(n+1)-A001248(n+1)`
-/

namespace A230098.P16708751335457204651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006450 (n + 1) - A001248 (n + 1)

end

end A230098.P16708751335457204651

namespace A230098

/-- `(n+1)*A006450(n+1)-A001248(n+1)` -/
def P16708751335457204651.Spec : Prop :=
  ∀ n, P16708751335457204651.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P14978966526322233868

`A000040(n+1)+A230285(n+1)-A001248(n+1)`
-/

namespace A230098.P14978966526322233868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A230285 (n + 1) - A001248 (n + 1))

end

end A230098.P14978966526322233868

namespace A230098

/-- `A000040(n+1)+A230285(n+1)-A001248(n+1)` -/
def P14978966526322233868.Spec : Prop :=
  ∀ n, P14978966526322233868.a n = A230098 (n + 1)

theorem P14978966526322233868.correct : P14978966526322233868.Spec := by
  intro n
  simp only [A230098, Nat.add_sub_cancel, A230098.P14978966526322233868.a, A230098.P9825355095693944970.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A230285, A230285.P9716043076160623184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230098

/-! ## A230098.P17701279415157361155

`A080697(n+1)-(A080697(n+1)-A230285(n+1))²`
-/

namespace A230098.P17701279415157361155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - (A080697 (n + 1) - A230285 (n + 1)) ^ 2

end

end A230098.P17701279415157361155

namespace A230098

/-- `A080697(n+1)-(A080697(n+1)-A230285(n+1))²` -/
def P17701279415157361155.Spec : Prop :=
  ∀ n, P17701279415157361155.a n = A230098 (n + 1)

theorem P17701279415157361155.correct : P17701279415157361155.Spec := by
  intro n
  simp only [A230098, Nat.add_sub_cancel, A230098.P17701279415157361155.a, A230098.P9825355095693944970.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A080697, A080697.P10795620430971902152.a, A230285, A230285.P9716043076160623184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230098

/-! ## A230098.P3341013617132465779

`A080697(n+1)-p?[A080688(n+1)]²`
-/

namespace A230098.P3341013617132465779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080697 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A230098.P3341013617132465779

namespace A230098

/-- `A080697(n+1)-p?[A080688(n+1)]²` -/
def P3341013617132465779.Spec : Prop :=
  ∀ n, P3341013617132465779.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P13962259207716027543

`A128930(A000040(n+1))-A001248(n+1)`
-/

namespace A230098.P13962259207716027543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A000040 (n + 1)).toNat - A001248 (n + 1)

end

end A230098.P13962259207716027543

namespace A230098

/-- `A128930(A000040(n+1))-A001248(n+1)` -/
def P13962259207716027543.Spec : Prop :=
  ∀ n, P13962259207716027543.a n = A230098 (n + 1)

end A230098

/-! ## A230098.P10551636984305905364

`A128930(A008578(n+2))-A008578(n+2)²`
-/

namespace A230098.P10551636984305905364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128930 (A008578 (n + 2)).toNat - A008578 (n + 2) ^ 2

end

end A230098.P10551636984305905364

namespace A230098

/-- `A128930(A008578(n+2))-A008578(n+2)²` -/
def P10551636984305905364.Spec : Prop :=
  ∀ n, P10551636984305905364.a n = A230098 (n + 1)

end A230098

/-!
# A230099: a(n) = n + (product of digits of n).

The programs for A230099, the canonical program `A230099.P7094775947428333460` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230099 has offset 0).

The definition of A230099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230099.P7094775947428333460

`∏{digits}[n, #]+n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230099

/-- `∏{digits}[n, #]+n` -/
def P7094775947428333460.Spec : Prop :=
  ∀ n, (P7094775947428333460.a n : ℤ) = A230099 n

theorem P7094775947428333460.correct : P7094775947428333460.Spec := by
  intro n
  simp only [A230099]

end A230099

/-! ## A230099.P17040861599467377650

`2*n-(n-∏{digits}[n, #])`
-/

namespace A230099.P17040861599467377650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A230099.P17040861599467377650

namespace A230099

/-- `2*n-(n-∏{digits}[n, #])` -/
def P17040861599467377650.Spec : Prop :=
  ∀ n, P17040861599467377650.a n = A230099 n

theorem P17040861599467377650.correct : P17040861599467377650.Spec := by
  intro n
  simp only [A230099, Nat.add_sub_cancel, A230099.P17040861599467377650.f1, A230099.P17040861599467377650.a, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A230099

/-! ## A230099.P3736696254072413283

`n-1-xor(-1, ∏{digits}[n, #])`
-/

namespace A230099.P3736696254072413283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A230099.P3736696254072413283

namespace A230099

/-- `n-1-xor(-1, ∏{digits}[n, #])` -/
def P3736696254072413283.Spec : Prop :=
  ∀ n, P3736696254072413283.a n = A230099 n

end A230099

/-! ## A230099.P5252584691540709882

`n+A007954(n)`
-/

namespace A230099.P5252584691540709882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007954 n

end

end A230099.P5252584691540709882

namespace A230099

/-- `n+A007954(n)` -/
def P5252584691540709882.Spec : Prop :=
  ∀ n, P5252584691540709882.a n = A230099 n

end A230099

/-! ## A230099.P7673332144535816985

`abs(A187844(n))+n`
-/

namespace A230099.P7673332144535816985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n| + (n : ℤ)

end

end A230099.P7673332144535816985

namespace A230099

/-- `abs(A187844(n))+n` -/
def P7673332144535816985.Spec : Prop :=
  ∀ n, P7673332144535816985.a n = A230099 n

end A230099

/-! ## A230099.P10880883286638222063

`2*n-A070565(n)`
-/

namespace A230099.P10880883286638222063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A070565 n

end

end A230099.P10880883286638222063

namespace A230099

/-- `2*n-A070565(n)` -/
def P10880883286638222063.Spec : Prop :=
  ∀ n, P10880883286638222063.a n = A230099 n

theorem P10880883286638222063.correct : P10880883286638222063.Spec := by
  intro n
  simp only [A230099, Nat.add_sub_cancel, A230099.P10880883286638222063.a, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, A070565, A070565.P8773353703818407228.f1, A070565.P8773353703818407228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230099

/-! ## A230099.P14277073996445695647

`∑{digits}[n, #]+n-A062329(n)`
-/

namespace A230099.P14277073996445695647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n : ℕ) : ℤ) - A062329 n

end

end A230099.P14277073996445695647

namespace A230099

/-- `∑{digits}[n, #]+n-A062329(n)` -/
def P14277073996445695647.Spec : Prop :=
  ∀ n, P14277073996445695647.a n = A230099 n

theorem P14277073996445695647.correct : P14277073996445695647.Spec := by
  intro n
  simp only [A230099, Nat.add_sub_cancel, A230099.P14277073996445695647.f1, A230099.P14277073996445695647.a, A230099.P7094775947428333460.f1, A230099.P7094775947428333460.a, A062329, A062329.P1617940940404348921.f1, A062329.P1617940940404348921.f2, A062329.P1617940940404348921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230099

/-! ## A230099.P17354708190453895662

`A066568(n)+A061762(n)`
-/

namespace A230099.P17354708190453895662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + A061762 n

end

end A230099.P17354708190453895662

namespace A230099

/-- `A066568(n)+A061762(n)` -/
def P17354708190453895662.Spec : Prop :=
  ∀ n, P17354708190453895662.a n = A230099 n

end A230099

/-! ## A230099.P1095920622750556921

`A007954(n)-A001489(n)`
-/

namespace A230099.P1095920622750556921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n - A001489 n

end

end A230099.P1095920622750556921

namespace A230099

/-- `A007954(n)-A001489(n)` -/
def P1095920622750556921.Spec : Prop :=
  ∀ n, P1095920622750556921.a n = A230099 n

end A230099

/-! ## A230099.P1645961668291078847

`A062028(n)-A062329(n)`
-/

namespace A230099.P1645961668291078847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - A062329 n

end

end A230099.P1645961668291078847

namespace A230099

/-- `A062028(n)-A062329(n)` -/
def P1645961668291078847.Spec : Prop :=
  ∀ n, P1645961668291078847.a n = A230099 n

end A230099

/-! ## A230099.P9077817824247008689

`2-(A022958(n)-A007954(n))`
-/

namespace A230099.P9077817824247008689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A022958 n - A007954 n)

end

end A230099.P9077817824247008689

namespace A230099

/-- `2-(A022958(n)-A007954(n))` -/
def P9077817824247008689.Spec : Prop :=
  ∀ n, P9077817824247008689.a n = A230099 n

end A230099

/-! ## A230099.P93124992595327632

`A061762(n)+n-A007953(n)`
-/

namespace A230099.P93124992595327632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n + ((n : ℤ) - A007953 n)

end

end A230099.P93124992595327632

namespace A230099

/-- `A061762(n)+n-A007953(n)` -/
def P93124992595327632.Spec : Prop :=
  ∀ n, P93124992595327632.a n = A230099 n

end A230099

/-! ## A230099.P5233322867110672548

`A007953(n)+n-A062329(n)`
-/

namespace A230099.P5233322867110672548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + ((n : ℤ) - A062329 n)

end

end A230099.P5233322867110672548

namespace A230099

/-- `A007953(n)+n-A062329(n)` -/
def P5233322867110672548.Spec : Prop :=
  ∀ n, P5233322867110672548.a n = A230099 n

end A230099

/-! ## A230099.P4732256395055663557

`A066568(n)+n-A249121(n)`
-/

namespace A230099.P4732256395055663557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n + ((n : ℤ) - A249121 n)

end

end A230099.P4732256395055663557

namespace A230099

/-- `A066568(n)+n-A249121(n)` -/
def P4732256395055663557.Spec : Prop :=
  ∀ n, P4732256395055663557.a n = A230099 n

end A230099

/-! ## A230099.P11948559121289265661

`A005843(n)-(n-A007954(n))`
-/

namespace A230099.P11948559121289265661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A007954 n)

end

end A230099.P11948559121289265661

namespace A230099

/-- `A005843(n)-(n-A007954(n))` -/
def P11948559121289265661.Spec : Prop :=
  ∀ n, P11948559121289265661.a n = A230099 n

end A230099

/-! ## A230099.P15551381341785104614

`A051801(n)*A168046(n)+n`
-/

namespace A230099.P15551381341785104614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n * A168046 n + (n : ℤ)

end

end A230099.P15551381341785104614

namespace A230099

/-- `A051801(n)*A168046(n)+n` -/
def P15551381341785104614.Spec : Prop :=
  ∀ n, P15551381341785104614.a n = A230099 n

end A230099

/-! ## A230099.P18139529036664600266

`A098736(n)/A028310(n)+n`
-/

namespace A230099.P18139529036664600266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098736 n : ℚ) / (A028310 n : ℚ) + (n : ℚ)

end

end A230099.P18139529036664600266

namespace A230099

/-- `A098736(n)/A028310(n)+n` -/
def P18139529036664600266.Spec : Prop :=
  ∀ n, P18139529036664600266.a n = (A230099 n : ℚ)

end A230099

/-! ## A230099.P271045773315831846

`lcm(A051801(n), A054054(n))+n`
-/

namespace A230099.P271045773315831846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051801 n) (A054054 n) + n

end

end A230099.P271045773315831846

namespace A230099

/-- `lcm(A051801(n), A054054(n))+n` -/
def P271045773315831846.Spec : Prop :=
  ∀ n, (P271045773315831846.a n : ℤ) = A230099 n

end A230099

/-! ## A230099.P13241914025810823460

`lcm(A000030(n), A187844(n))+n`
-/

namespace A230099.P13241914025810823460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000030 n) (A187844 n) + n

end

end A230099.P13241914025810823460

namespace A230099

/-- `lcm(A000030(n), A187844(n))+n` -/
def P13241914025810823460.Spec : Prop :=
  ∀ n, (P13241914025810823460.a n : ℤ) = A230099 n

end A230099

/-! ## A230099.P10008665030052711486

`A169805(n)/2+n-A062329(n)`
-/

namespace A230099.P10008665030052711486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 + (n : ℚ) - (A062329 n : ℚ)

end

end A230099.P10008665030052711486

namespace A230099

/-- `A169805(n)/2+n-A062329(n)` -/
def P10008665030052711486.Spec : Prop :=
  ∀ n, P10008665030052711486.a n = (A230099 n : ℚ)

end A230099

