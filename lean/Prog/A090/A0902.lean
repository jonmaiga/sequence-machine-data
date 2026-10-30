import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090200: a(n) = N(7,n), where N(7,x) is the 7th Narayana polynomial.

The programs for A090200, the canonical program `A090200.P14454133240901443843` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090200 has offset 0).

The definition of A090200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090200.P14454133240901443843

`n^6+21*n^5+105*n^4+175*n^3+105*n²+21*n+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090200

/-- `n^6+21*n^5+105*n^4+175*n^3+105*n²+21*n+1` -/
def P14454133240901443843.Spec : Prop :=
  ∀ n, (P14454133240901443843.a n : ℤ) = A090200 n

theorem P14454133240901443843.correct : P14454133240901443843.Spec := by
  intro n
  simp only [A090200]

end A090200

/-! ## A090200.P3739197602494266488

`A243631(A308407(n+5)+A253145(n+5))`
-/

namespace A090200.P3739197602494266488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A308407 (n + 5) + A253145 (n + 5)).toNat

end

end A090200.P3739197602494266488

namespace A090200

/-- `A243631(A308407(n+5)+A253145(n+5))` -/
def P3739197602494266488.Spec : Prop :=
  ∀ n, P3739197602494266488.a n = A090200 n

end A090200

/-! ## A090200.P4228784373809135732

`A008550(A000096(n+7)-7)`
-/

namespace A090200.P4228784373809135732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000096 (n + 7) - 7).toNat

end

end A090200.P4228784373809135732

namespace A090200

/-- `A008550(A000096(n+7)-7)` -/
def P4228784373809135732.Spec : Prop :=
  ∀ n, P4228784373809135732.a n = A090200 n

end A090200

/-! ## A090200.P915881325809915331

`A008550(A000217(n+8)-8)`
-/

namespace A090200.P915881325809915331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000217 (n + 8) - 8).toNat

end

end A090200.P915881325809915331

namespace A090200

/-- `A008550(A000217(n+8)-8)` -/
def P915881325809915331.Spec : Prop :=
  ∀ n, P915881325809915331.a n = A090200 n

end A090200

/-! ## A090200.P2959847852555754334

`A008550(n+1+A000096(n+6))`
-/

namespace A090200.P2959847852555754334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 ((n + 1 : ℤ) + A000096 (n + 6)).toNat

end

end A090200.P2959847852555754334

namespace A090200

/-- `A008550(n+1+A000096(n+6))` -/
def P2959847852555754334.Spec : Prop :=
  ∀ n, P2959847852555754334.a n = A090200 n

end A090200

/-! ## A090200.P16017730019286674214

`A008550(A052905(n+4)+n+5)`
-/

namespace A090200.P16017730019286674214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A090200.P16017730019286674214

namespace A090200

/-- `A008550(A052905(n+4)+n+5)` -/
def P16017730019286674214.Spec : Prop :=
  ∀ n, P16017730019286674214.a n = A090200 n

end A090200

/-!
# A090201: a(n) = p-th digit of Pi where p = n-th prime.

The programs for A090201, there is no canonical definition to state claims against.
-/

/-! ## A090201.P1391805816644124562

`A000796(p?[xor(1, n)+1]-1)`
-/

namespace A090201.P1391805816644124562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1 + 1)

end

end A090201.P1391805816644124562

/-! ## A090201.P12564519235420413351

`A000796(xor(1, p?[xor(1, n)+1]))`
-/

namespace A090201.P12564519235420413351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1)

end

end A090201.P12564519235420413351

/-! ## A090201.P414754725818804828

`A000796(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A090201.P414754725818804828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1 + 1)

end

end A090201.P414754725818804828

/-! ## A090201.P9898188695584566192

`A000796(record[A037225(n)])`
-/

namespace A090201.P9898188695584566192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090201.P9898188695584566192

/-! ## A090201.P12927535577224046319

`A000796(A006093(n+1))`
-/

namespace A090201.P12927535577224046319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A006093 (n + 1)).toNat + 1)

end

end A090201.P12927535577224046319

/-! ## A090201.P3209394777237790240

`A001355(A076274(n+2))`
-/

namespace A090201.P3209394777237790240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A076274 (n + 2)).toNat

end

end A090201.P3209394777237790240

/-! ## A090201.P6826406495997865901

`A078424(A176003(n+2))`
-/

namespace A090201.P6826406495997865901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A176003 (n + 2)).toNat

end

end A090201.P6826406495997865901

/-! ## A090201.P13930028413446880301

`A000796(Δ[A007504(n)]-1)`
-/

namespace A090201.P13930028413446880301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (n + 1) - f1 n - 1).toNat + 1)

end

end A090201.P13930028413446880301

/-! ## A090201.P14171594971211707879

`A123152(Δ[A007504(n)])-1`
-/

namespace A090201.P14171594971211707879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (f1 (n + 1) - f1 n).toNat - 1

end

end A090201.P14171594971211707879

/-! ## A090201.P4372289515803647976

`A000796(record[A000010(n+1)])`
-/

namespace A090201.P4372289515803647976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090201.P4372289515803647976

/-! ## A090201.P11212651729763449446

`A000796(record[A051698(n)-1])`
-/

namespace A090201.P11212651729763449446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090201.P11212651729763449446

/-! ## A090201.P4557074881103175634

`A000796(p?[A007989(n)]-1)`
-/

namespace A090201.P4557074881103175634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090201.P4557074881103175634

/-! ## A090201.P13508321261768389641

`A000796(p?[A014681(n)]-1)`
-/

namespace A090201.P13508321261768389641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090201.P13508321261768389641

/-! ## A090201.P11682438514691452

`A000796(p?[A056847(n)]-1)`
-/

namespace A090201.P11682438514691452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090201.P11682438514691452

/-! ## A090201.P10715831983918315554

`A000796(p?[A064429(n)]-1)`
-/

namespace A090201.P10715831983918315554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090201.P10715831983918315554

/-! ## A090201.P16061377063666461008

`A000796(p?[A080412(n)]-1)`
-/

namespace A090201.P16061377063666461008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090201.P16061377063666461008

/-! ## A090201.P6229373684433325633

`A000796(p?[A236836(n)]-1)`
-/

namespace A090201.P6229373684433325633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090201.P6229373684433325633

/-! ## A090201.P2222137297733046092

`A000796(A040976(n+1)+1)`
-/

namespace A090201.P2222137297733046092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A040976 (n + 1) + 1).toNat + 1)

end

end A090201.P2222137297733046092

/-! ## A090201.P11575745498245791080

`A000796(A000040(n+1)-1)`
-/

namespace A090201.P11575745498245791080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000040 (n + 1) - 1).toNat + 1)

end

end A090201.P11575745498245791080

/-! ## A090201.P5082181203878071465

`A001355(A100484(n+1)-1)`
-/

namespace A090201.P5082181203878071465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A100484 (n + 1) - 1).toNat

end

end A090201.P5082181203878071465

/-!
# A090202: a(n) = p-th digit of e where p = n-th prime.

The programs for A090202, there is no canonical definition to state claims against.
-/

/-! ## A090202.P2216662866130713232

`A001113(eq[1, ∑{e}[n+1, #]])`
-/

namespace A090202.P2216662866130713232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A090202.P2216662866130713232

/-! ## A090202.P17197092994876306683

`A001113(p?[xor(1, n)+1]-1)`
-/

namespace A090202.P17197092994876306683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1 + 1)

end

end A090202.P17197092994876306683

/-! ## A090202.P13716267202338416603

`A001355(2*p?[xor(1, n)+1])`
-/

namespace A090202.P13716267202338416603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090202.P13716267202338416603

/-! ## A090202.P9829084431215994893

`A001113(p?[round(sqrt(n)+n)]-1)`
-/

namespace A090202.P9829084431215994893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090202.P9829084431215994893

/-! ## A090202.P18404733321866970715

`A001113(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A090202.P18404733321866970715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A090202.P18404733321866970715

/-! ## A090202.P14725610816394067184

`A001113(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A090202.P14725610816394067184
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + 1)

end

end A090202.P14725610816394067184

/-! ## A090202.P15337766299294336687

`A001113(eq[n, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A090202.P15337766299294336687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A090202.P15337766299294336687

/-! ## A090202.P6809199537878382173

`A001113(record[A037225(n)])`
-/

namespace A090202.P6809199537878382173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090202.P6809199537878382173

/-! ## A090202.P4623289573334500748

`A001113(A006093(n+1))`
-/

namespace A090202.P4623289573334500748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A006093 (n + 1)).toNat + 1)

end

end A090202.P4623289573334500748

/-! ## A090202.P8480405589519270598

`A001355(A100484(n+1))`
-/

namespace A090202.P8480405589519270598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A100484 (n + 1)).toNat

end

end A090202.P8480405589519270598

/-! ## A090202.P5339583113608826465

`A001355(A001747(n+2))`
-/

namespace A090202.P5339583113608826465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A001747 (n + 2)).toNat

end

end A090202.P5339583113608826465

/-! ## A090202.P7415050862334769373

`A110779(A076274(n+2))`
-/

namespace A090202.P7415050862334769373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (A076274 (n + 2)).toNat

end

end A090202.P7415050862334769373

/-! ## A090202.P3343730130414771537

`A001113(record[A000010(n+1)])`
-/

namespace A090202.P3343730130414771537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090202.P3343730130414771537

/-! ## A090202.P3012037484939445445

`A091131(record[A000010(n+1)])`
-/

namespace A090202.P3012037484939445445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090202.P3012037484939445445

/-! ## A090202.P16462842375368068447

`A001113(A040976(n+1)+1)`
-/

namespace A090202.P16462842375368068447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A040976 (n + 1) + 1).toNat + 1)

end

end A090202.P16462842375368068447

/-! ## A090202.P7601963881118370831

`A001113(A000040(n+1)-1)`
-/

namespace A090202.P7601963881118370831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A000040 (n + 1) - 1).toNat + 1)

end

end A090202.P7601963881118370831

/-! ## A090202.P9401753483142061325

`A001355(A072055(n+1)-1)`
-/

namespace A090202.P9401753483142061325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A072055 (n + 1) - 1).toNat

end

end A090202.P9401753483142061325

/-! ## A090202.P5822410087658819894

`A001355(A076274(n+2)+1)`
-/

namespace A090202.P5822410087658819894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A076274 (n + 2) + 1).toNat

end

end A090202.P5822410087658819894

/-! ## A090202.P6153147000403389703

`A091131(A000040(n+1)-1)`
-/

namespace A090202.P6153147000403389703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 ((A000040 (n + 1) - 1).toNat + 1)

end

end A090202.P6153147000403389703

/-! ## A090202.P13740879342648255724

`A001113(A008578(n+2)-1)`
-/

namespace A090202.P13740879342648255724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A008578 (n + 2) - 1).toNat + 1)

end

end A090202.P13740879342648255724

/-!
# A090203: a(n) = p-th digit of phi where p = n-th prime.

The programs for A090203, there is no canonical definition to state claims against.
-/

/-! ## A090203.P12299259318159962537

`A104457(p?[abs(xor(n, -2))]-1)`
-/

namespace A090203.P12299259318159962537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1)

end

end A090203.P12299259318159962537

/-! ## A090203.P9073173273955666065

`A001622(p?[xor(1, n)+1]-1)`
-/

namespace A090203.P9073173273955666065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1 + 1)

end

end A090203.P9073173273955666065

/-! ## A090203.P6766940342923215304

`A104457(p?[n%3+n]-1)`
-/

namespace A090203.P6766940342923215304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1 + 1)

end

end A090203.P6766940342923215304

/-! ## A090203.P6179566059737130352

`A001622(record[∏{p}[n+1, #-1]])`
-/

namespace A090203.P6179566059737130352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090203.P6179566059737130352

/-! ## A090203.P419722894086498389

`A094214(p?[round(8*n/7)]-2)`
-/

namespace A090203.P419722894086498389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2).toNat

end

end A090203.P419722894086498389

/-! ## A090203.P8049904253604102830

`A001622(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A090203.P8049904253604102830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A090203.P8049904253604102830

/-! ## A090203.P1831651446577806062

`A001622(eq[n, ∏{p}[n+1, #-1]])`
-/

namespace A090203.P1831651446577806062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090203.P1831651446577806062

/-! ## A090203.P4986410030394871271

`A001622((p?[round(8*n/7)]-2)%p?[2*n+5]+1)`
-/

namespace A090203.P4986410030394871271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) + 1).toNat + 1)

end

end A090203.P4986410030394871271

/-! ## A090203.P9745853935650128668

`A001622(record[A037225(n)])`
-/

namespace A090203.P9745853935650128668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090203.P9745853935650128668

/-! ## A090203.P10054687366380075212

`A001622(A006093(n+1))`
-/

namespace A090203.P10054687366380075212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A006093 (n + 1)).toNat + 1)

end

end A090203.P10054687366380075212

/-! ## A090203.P14561344901291465534

`A078424(A001748(n+1))`
-/

namespace A090203.P14561344901291465534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A001748 (n + 1)).toNat

end

end A090203.P14561344901291465534

/-! ## A090203.P6597764933202992547

`A076790(A037168(n+1))`
-/

namespace A090203.P6597764933202992547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (A037168 (n + 1)).toNat

end

end A090203.P6597764933202992547

/-! ## A090203.P3990185136113618185

`A078424(A063534(n+1))`
-/

namespace A090203.P3990185136113618185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A063534 (n + 1)).toNat

end

end A090203.P3990185136113618185

/-! ## A090203.P14054691726703052449

`A078424(A112773(n+2))`
-/

namespace A090203.P14054691726703052449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A112773 (n + 2)).toNat

end

end A090203.P14054691726703052449

/-! ## A090203.P10757693391779440852

`A382130(A076274(n+2))`
-/

namespace A090203.P10757693391779440852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (A076274 (n + 2)).toNat

end

end A090203.P10757693391779440852

/-! ## A090203.P15781713539021076613

`A001622(eq[1, A013632(n)])`
-/

namespace A090203.P15781713539021076613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090203.P15781713539021076613

/-! ## A090203.P767326737140219254

`A001622(Δ[A007504(n)]-1)`
-/

namespace A090203.P767326737140219254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((f1 (n + 1) - f1 n - 1).toNat + 1)

end

end A090203.P767326737140219254

/-! ## A090203.P10623534918025509626

`A001622(record[A000010(n+1)])`
-/

namespace A090203.P10623534918025509626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090203.P10623534918025509626

/-! ## A090203.P6515325006201915084

`A104457(record[A000010(n+1)])`
-/

namespace A090203.P6515325006201915084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090203.P6515325006201915084

/-! ## A090203.P472389726898341209

`A296184(record[A000010(n+1)])`
-/

namespace A090203.P472389726898341209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090203.P472389726898341209

/-!
# A090204: a(n) = p-th digit of sqrt(2) where p = n-th prime.

The programs for A090204, there is no canonical definition to state claims against.
-/

/-! ## A090204.P189565983733616546

`A002193(∑[A075526(n)])`
-/

namespace A090204.P189565983733616546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1)

end

end A090204.P189565983733616546

/-! ## A090204.P13153916954097759626

`A120731(Δ[A007504(n)])`
-/

namespace A090204.P13153916954097759626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((f1 (n + 1) - f1 n).toNat + 1)

end

end A090204.P13153916954097759626

/-! ## A090204.P11924709377846083242

`A002193(record[A037225(n)])`
-/

namespace A090204.P11924709377846083242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P11924709377846083242

/-! ## A090204.P13145557919538597299

`A014176(record[A037225(n)])`
-/

namespace A090204.P13145557919538597299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P13145557919538597299

/-! ## A090204.P10540220030791208644

`A020807(record[A037225(n)])`
-/

namespace A090204.P10540220030791208644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090204.P10540220030791208644

/-! ## A090204.P5401487673793720075

`A120731(record[A051698(n)])`
-/

namespace A090204.P5401487673793720075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P5401487673793720075

/-! ## A090204.P5229359537678692616

`A002193(A006093(n+1))`
-/

namespace A090204.P5229359537678692616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((A006093 (n + 1)).toNat + 1)

end

end A090204.P5229359537678692616

/-! ## A090204.P15574875270591688141

`A120731(A000040(n+1))`
-/

namespace A090204.P15574875270591688141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((A000040 (n + 1)).toNat + 1)

end

end A090204.P15574875270591688141

/-! ## A090204.P10872275766403724257

`A110812(A076274(n+2))`
-/

namespace A090204.P10872275766403724257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110812 (A076274 (n + 2)).toNat

end

end A090204.P10872275766403724257

/-! ## A090204.P724745574688425211

`A002193(record[A000010(n+1)])`
-/

namespace A090204.P724745574688425211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P724745574688425211

/-! ## A090204.P11447235449315027383

`A014176(record[A000010(n+1)])`
-/

namespace A090204.P11447235449315027383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P11447235449315027383

/-! ## A090204.P17289910282745097515

`A120731(record[A006530(n+2)])`
-/

namespace A090204.P17289910282745097515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P17289910282745097515

/-! ## A090204.P14399361889351543822

`A120731(record[A014963(n+2)])`
-/

namespace A090204.P14399361889351543822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P14399361889351543822

/-! ## A090204.P709515227565192108

`A002193(A000040(n+1)-1)`
-/

namespace A090204.P709515227565192108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((A000040 (n + 1) - 1).toNat + 1)

end

end A090204.P709515227565192108

/-! ## A090204.P1216347758605339024

`A014176(A000040(n+1)-1)`
-/

namespace A090204.P1216347758605339024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((A000040 (n + 1) - 1).toNat + 1)

end

end A090204.P1216347758605339024

/-! ## A090204.P15912042963688166801

`A002193(xor(1, A000040(n+1)))`
-/

namespace A090204.P15912042963688166801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((Int.xor 1 (A000040 (n + 1))).toNat + 1)

end

end A090204.P15912042963688166801

/-! ## A090204.P972523353648257101

`A002193(eq[1, A001222(n+1)])`
-/

namespace A090204.P972523353648257101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090204.P972523353648257101

/-! ## A090204.P18106570041950352251

`A002193(eq[2, A000005(n+1)])`
-/

namespace A090204.P18106570041950352251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090204.P18106570041950352251

/-! ## A090204.P4272669392597752980

`A002193(eq[n, A000010(n+1)])`
-/

namespace A090204.P4272669392597752980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A090204.P4272669392597752980

/-! ## A090204.P6563275625409384756

`A002193(record[A006530(n+2)-1])`
-/

namespace A090204.P6563275625409384756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)

end

end A090204.P6563275625409384756

/-!
# A090205: a(n) = n^n * (n+1)^(n+1).

The programs for A090205, the canonical program `A090205.P611001376737765868` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090205 has offset 0).

The definition of A090205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n*(n+1)^(n+1)` (program `A090205.P611001376737765868`, by `A090205.P611001376737765868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090205.P611001376737765868

`n^n*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090205

/-- `n^n*(n+1)^(n+1)` -/
def P611001376737765868.Spec : Prop :=
  ∀ n, (P611001376737765868.a n : ℤ) = A090205 n

theorem P611001376737765868.correct : P611001376737765868.Spec := by
  intro n
  simp only [A090205]

end A090205

/-! ## A090205.P16080351759304255573

`lcm((n+1)^(n+1), n^n)`
-/

namespace A090205.P16080351759304255573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ (n + 1)) (n ^ n)

end

end A090205.P16080351759304255573

namespace A090205

/-- `lcm((n+1)^(n+1), n^n)` -/
def P16080351759304255573.Spec : Prop :=
  ∀ n, (P16080351759304255573.a n : ℤ) = A090205 n

end A090205

/-! ## A090205.P15747974990595934062

`abs(n^n*A086783(n+1))`
-/

namespace A090205.P15747974990595934062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℤ) * A086783 (n + 1)|

end

end A090205.P15747974990595934062

namespace A090205

/-- `abs(n^n*A086783(n+1))` -/
def P15747974990595934062.Spec : Prop :=
  ∀ n, P15747974990595934062.a n = A090205 n

end A090205

/-! ## A090205.P17408250603763904750

`A000312(n)*A109391(n+1)/A000217(n+1)`
-/

namespace A090205.P17408250603763904750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n * A109391 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A090205.P17408250603763904750

namespace A090205

/-- `A000312(n)*A109391(n+1)/A000217(n+1)` -/
def P17408250603763904750.Spec : Prop :=
  ∀ n, P17408250603763904750.a n = (A090205 n : ℚ)

end A090205

/-! ## A090205.P15874325058856175201

`A000312(n+1)*A062206(n)/A000312(n)`
-/

namespace A090205.P15874325058856175201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) * A062206 n : ℚ) / (A000312 n : ℚ)

end

end A090205.P15874325058856175201

namespace A090205

/-- `A000312(n+1)*A062206(n)/A000312(n)` -/
def P15874325058856175201.Spec : Prop :=
  ∀ n, P15874325058856175201.a n = (A090205 n : ℚ)

theorem P15874325058856175201.correct : P15874325058856175201.Spec := by
  intro n
  simp only [A090205, Nat.add_sub_cancel, A090205.P15874325058856175201.a, A090205.P611001376737765868.a, A000312, A000312.P3932771318196185165.a, A062206, A062206.P5453830458880387527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090205

/-!
# A090206: Nonprime Fibonacci numbers.

The programs for A090206, there is no canonical definition to state claims against.
-/

/-! ## A090206.P17853968420577008474

`A000045(lt[0, A079677(n)])`
-/

namespace A090206.P17853968420577008474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090206.P17853968420577008474

/-! ## A090206.P3649181022963966066

`A000045(comp[A001605(n+1)])`
-/

namespace A090206.P3649181022963966066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A090206.P3649181022963966066

/-! ## A090206.P2911014952321388901

`A000045(comp[eq[0, A079677(n)]])`
-/

namespace A090206.P2911014952321388901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A090206.P2911014952321388901

/-! ## A090206.P5604349491722395567

`abs(A236191(comp[A001605(n+1)]))`
-/

namespace A090206.P5604349491722395567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A090206.P5604349491722395567

/-! ## A090206.P2542111684702316702

`A000045(lt[1, A214878(n)])`
-/

namespace A090206.P2542111684702316702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090206.P2542111684702316702

/-!
# A090207: Number of factors of n-th nonprime Fibonacci number.

The programs for A090207, there is no canonical definition to state claims against.
-/

/-! ## A090207.P16139175197015706063

`A028310(∑{e}[A090206(n+1), #])`
-/

namespace A090207.P16139175197015706063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A090207.P16139175197015706063

/-! ## A090207.P7825983620118410427

`A114800(∑{e}[A090206(n+1), #])`
-/

namespace A090207.P7825983620118410427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A090207.P7825983620118410427

/-! ## A090207.P228068003223776908

`A114806(∑{e}[A090206(n+1), #])`
-/

namespace A090207.P228068003223776908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A090207.P228068003223776908

/-! ## A090207.P10060703038375052051

`∑{e}[A090206(n+1), #]+A000045(C(2, n))`
-/

namespace A090207.P10060703038375052051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + A000045 (Nat.choose 2 n)

end

end A090207.P10060703038375052051

/-!
# A090208: Sums of two consecutive nonprime Fibonacci numbers (A090206).

The programs for A090208, there is no canonical definition to state claims against.
-/

/-! ## A090208.P887639423250118148

`A090206(n+1)+A090206(n+2)`
-/

namespace A090208.P887639423250118148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1) + A090206 (n + 2)

end

end A090208.P887639423250118148

/-! ## A090208.P9750513990193664530

`A090206(n+1)+∑[A090229(n)]`
-/

namespace A090208.P9750513990193664530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090208.P9750513990193664530

/-! ## A090208.P12396839430662895175

`∑[A005843(A090229(n))]-A090229(n)`
-/

namespace A090208.P12396839430662895175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A090229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A090229 n

end

end A090208.P12396839430662895175

/-! ## A090208.P13560762707919981857

`A004277(∑[A090229(n)])-A090229(n)`
-/

namespace A090208.P13560762707919981857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A090229 n

end

end A090208.P13560762707919981857

/-!
# A090209: Generalized Bell numbers (from (5,5)-Stirling2 array A090216).

The programs for A090209, there is no canonical definition to state claims against.
-/

/-! ## A090209.P4952889149983220788

`A283154(n^(A053182(n+1)%2))`
-/

namespace A090209.P4952889149983220788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283154 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A053182 (n + 1)) 2 : ℤ))).toNat

end

end A090209.P4952889149983220788

/-! ## A090209.P2280554480929505545

`A283154(n^(A283107(n+1)%2))`
-/

namespace A090209.P2280554480929505545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283154 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod (A283107 (n + 1)) 2 : ℤ))).toNat

end

end A090209.P2280554480929505545

/-! ## A090209.P2831875823969369359

`A283154(A283182(n)%(A088806(n+1)+2)+n)`
-/

namespace A090209.P2831875823969369359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283154 (Int.tmod (A283182 n) (A088806 (n + 1) + 2) + (n : ℤ)).toNat

end

end A090209.P2831875823969369359

/-! ## A090209.P15042002363976834174

`A283154(A034382(n+1)%(A129667(n+1)+2)+n)`
-/

namespace A090209.P15042002363976834174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283154 (Int.tmod (A034382 (n + 1)) (A129667 (n + 1) + 2) + (n : ℤ)).toNat

end

end A090209.P15042002363976834174

/-! ## A090209.P1269612513254882102

`A283154(A034383(n+1)%(A129667(n+1)+2)+n)`
-/

namespace A090209.P1269612513254882102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283154 (Int.tmod (A034383 (n + 1)) (A129667 (n + 1) + 2) + (n : ℤ)).toNat

end

end A090209.P1269612513254882102

/-!
# A090210: Triangle of certain generalized Bell numbers.

The programs for A090210, there is no canonical definition to state claims against.
-/

/-! ## A090210.P8019310736028645848

`A321738(A319075(n))`
-/

namespace A090210.P8019310736028645848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321738 (A319075 n).toNat

end

end A090210.P8019310736028645848

/-! ## A090210.P2613437003654686990

`A246162(A126796(n*A188431(n)))`
-/

namespace A090210.P2613437003654686990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (A126796 ((n : ℤ) * A188431 n).toNat).toNat

end

end A090210.P2613437003654686990

/-! ## A090210.P12888295539333078960

`A246162(A126796(n)^A188431(n))`
-/

namespace A090210.P12888295539333078960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (SequenceMachineLib.roundAway ((A126796 n : ℚ) ^ (A188431 n : ℤ))).toNat

end

end A090210.P12888295539333078960

/-! ## A090210.P7023036746611540995

`A246162(C(A126796(n), A188431(n)))`
-/

namespace A090210.P7023036746611540995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246162 (Nat.choose (A126796 n).toNat (A188431 n).toNat)

end

end A090210.P7023036746611540995

/-! ## A090210.P4183919299397539584

`A028310(A208021(n+1)^A188431(n))`
-/

namespace A090210.P4183919299397539584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A208021 (n + 1) : ℚ) ^ (A188431 n : ℤ))).toNat

end

end A090210.P4183919299397539584

/-!
# A090215: A generalization of triangles A071951 (Legendre-Stirling) and A089504.

The programs for A090215, there is no canonical definition to state claims against.
-/

/-! ## A090215.P7574786953180255545

`A111035(and(A006077(n), A377496(n+2)))`
-/

namespace A090215.P7574786953180255545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111035 (Int.land (A006077 n) (A377496 (n + 2))).toNat

end

end A090215.P7574786953180255545

/-!
# A090216: Generalized Stirling2 array S_{5,5}(n,k).

The programs for A090216, there is no canonical definition to state claims against.
-/

/-! ## A090216.P7023464404635864542

`A145316(A128905(n+1)-n)`
-/

namespace A090216.P7023464404635864542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145316 (A128905 (n + 1) - (n : ℤ)).toNat

end

end A090216.P7023464404635864542

/-!
# A090223: Nonnegative integers with doubled multiples of 4.

The programs for A090223, the canonical program `A090223.P2855277065153629950` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090223 has offset 0).

The definition of A090223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090223.P2855277065153629950

`floor(4*n/5)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090223

/-- `floor(4*n/5)` -/
def P2855277065153629950.Spec : Prop :=
  ∀ n, P2855277065153629950.a n = A090223 n

theorem P2855277065153629950.correct : P2855277065153629950.Spec := by
  intro n
  simp only [A090223]

end A090223

/-! ## A090223.P17573439691930948443

`ogf((x^2+x^3+x^4+x^5)/(1-x-x^5+x^6))`
-/

namespace A090223.P17573439691930948443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 1, 1] [1, -1, 0, 0, 0, -1, 1] n

end

end A090223.P17573439691930948443

namespace A090223

/-- `ogf((x^2+x^3+x^4+x^5)/(1-x-x^5+x^6))` -/
def P17573439691930948443.Spec : Prop :=
  ∀ n, P17573439691930948443.a n = A090223 n

end A090223

/-! ## A090223.P4650196949930316534

`A057354(2*n)`
-/

namespace A090223.P4650196949930316534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n)

end

end A090223.P4650196949930316534

namespace A090223

/-- `A057354(2*n)` -/
def P4650196949930316534.Spec : Prop :=
  ∀ n, P4650196949930316534.a n = A090223 n

theorem P4650196949930316534.correct : P4650196949930316534.Spec := by
  intro n
  simp only [A090223, Nat.add_sub_cancel, A090223.P4650196949930316534.a, A090223.P2855277065153629950.a, A057354, A057354.P3759514669842217521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090223

/-! ## A090223.P11567582262477692573

`round(record[lcm(2, n)]/5)`
-/

namespace A090223.P11567582262477692573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 5)

end

end A090223.P11567582262477692573

namespace A090223

/-- `round(record[lcm(2, n)]/5)` -/
def P11567582262477692573.Spec : Prop :=
  ∀ n, P11567582262477692573.a n = A090223 n

end A090223

/-! ## A090223.P16213005651284445584

`∑[char[gcd(5, n)+n]]`
-/

namespace A090223.P16213005651284445584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090223.P16213005651284445584

namespace A090223

/-- `∑[char[gcd(5, n)+n]]` -/
def P16213005651284445584.Spec : Prop :=
  ∀ n, (P16213005651284445584.a n : ℤ) = A090223 n

end A090223

/-! ## A090223.P15250834778459356075

`ceil((n-1)/cosh(log(2)))`
-/

namespace A090223.P15250834778459356075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) / Real.cosh (Real.log (2 : ℝ))⌉

end

end A090223.P15250834778459356075

namespace A090223

/-- `ceil((n-1)/cosh(log(2)))` -/
def P15250834778459356075.Spec : Prop :=
  ∀ n, P15250834778459356075.a n = A090223 n

end A090223

/-! ## A090223.P3589676941270904332

`ceil((n-1)*tanh(log(3)))`
-/

namespace A090223.P3589676941270904332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℝ) * Real.tanh (Real.log (3 : ℝ))⌉

end

end A090223.P3589676941270904332

namespace A090223

/-- `ceil((n-1)*tanh(log(3)))` -/
def P3589676941270904332.Spec : Prop :=
  ∀ n, P3589676941270904332.a n = A090223 n

end A090223

/-! ## A090223.P312208474434099533

`∑[ceil(tanh((n-1)%5))]`
-/

namespace A090223.P312208474434099533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (Int.tmod ((n : ℤ) - 1) 5 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090223.P312208474434099533

namespace A090223

/-- `∑[ceil(tanh((n-1)%5))]` -/
def P312208474434099533.Spec : Prop :=
  ∀ n, P312208474434099533.a n = A090223 n

end A090223

/-! ## A090223.P4101651610818207157

`n-∑[∑[∑[∑[n]]]%5]`
-/

namespace A090223.P4101651610818207157
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A090223.P4101651610818207157

namespace A090223

/-- `n-∑[∑[∑[∑[n]]]%5]` -/
def P4101651610818207157.Spec : Prop :=
  ∀ n, P4101651610818207157.a n = A090223 n

end A090223

/-! ## A090223.P697203506022397766

`a(n-5)+4` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A090223.P697203506022397766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  a (n - 5) + 4

end

end A090223.P697203506022397766

namespace A090223

/-- `a(n-5)+4` -/
def P697203506022397766.Spec : Prop :=
  ∀ n, (P697203506022397766.a n : ℤ) = A090223 n

end A090223

/-! ## A090223.P6067337251921270340

`∑[a(n-5)²]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A090223.P6067337251921270340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090223.P6067337251921270340

namespace A090223

/-- `∑[a(n-5)²]` -/
def P6067337251921270340.Spec : Prop :=
  ∀ n, (P6067337251921270340.a n : ℤ) = A090223 n

end A090223

/-! ## A090223.P5576972434200674521

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A090223.P5576972434200674521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090223.P5576972434200674521

namespace A090223

/-- `∑[floor(a(n-5))]` -/
def P5576972434200674521.Spec : Prop :=
  ∀ n, (P5576972434200674521.a n : ℤ) = A090223 n

end A090223

/-! ## A090223.P5461012153212696371

`n-1-floor(a(n-1)/4)` with `a(0)=0`
-/

namespace A090223.P5461012153212696371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 - ⌊(a (n - 1) : ℚ) / 4⌋

end

end A090223.P5461012153212696371

namespace A090223

/-- `n-1-floor(a(n-1)/4)` -/
def P5461012153212696371.Spec : Prop :=
  ∀ n, P5461012153212696371.a n = A090223 n

end A090223

/-! ## A090223.P15040671071575319654

`round(n-C(n+2, n+1)/5)`
-/

namespace A090223.P15040671071575319654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (Nat.choose (n + 2) (n + 1) : ℚ) / 5)

end

end A090223.P15040671071575319654

namespace A090223

/-- `round(n-C(n+2, n+1)/5)` -/
def P15040671071575319654.Spec : Prop :=
  ∀ n, P15040671071575319654.a n = A090223 n

end A090223

/-! ## A090223.P13551437196051407641

`∑[a(n-5)^3]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A090223.P13551437196051407641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090223.P13551437196051407641

namespace A090223

/-- `∑[a(n-5)^3]` -/
def P13551437196051407641.Spec : Prop :=
  ∀ n, (P13551437196051407641.a n : ℤ) = A090223 n

end A090223

/-! ## A090223.P13084800062941459217

`∑[∑[(n+1)*2%(n+1)]²%5]`
-/

namespace A090223.P13084800062941459217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 % (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090223.P13084800062941459217

namespace A090223

/-- `∑[∑[(n+1)*2%(n+1)]²%5]` -/
def P13084800062941459217.Spec : Prop :=
  ∀ n, (P13084800062941459217.a n : ℤ) = A090223 n

end A090223

/-! ## A090223.P15232049875601972101

`1-(a(a(a(n-2)%4))-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A090223.P15232049875601972101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - (a (a (Int.tmod (a (n - 2)) 4).toNat).toNat - a (n - 1))

end

end A090223.P15232049875601972101

namespace A090223

/-- `1-(a(a(a(n-2)%4))-a(n-1))` -/
def P15232049875601972101.Spec : Prop :=
  ∀ n, P15232049875601972101.a n = A090223 n

end A090223

/-! ## A090223.P10072000253553708333

`A187318(n)-n`
-/

namespace A090223.P10072000253553708333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n - (n : ℤ)

end

end A090223.P10072000253553708333

namespace A090223

/-- `A187318(n)-n` -/
def P10072000253553708333.Spec : Prop :=
  ∀ n, P10072000253553708333.a n = A090223 n

end A090223

/-! ## A090223.P10970314881948429189

`n-sqrt(A287392(n))`
-/

namespace A090223.P10970314881948429189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A287392 n : ℝ)

end

end A090223.P10970314881948429189

namespace A090223

/-- `n-sqrt(A287392(n))` -/
def P10970314881948429189.Spec : Prop :=
  ∀ n, P10970314881948429189.a n = (A090223 n : ℝ)

end A090223

/-! ## A090223.P2633889251670960134

`3*n-A364668(n)`
-/

namespace A090223.P2633889251670960134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A364668 n

end

end A090223.P2633889251670960134

namespace A090223

/-- `3*n-A364668(n)` -/
def P2633889251670960134.Spec : Prop :=
  ∀ n, P2633889251670960134.a n = A090223 n

end A090223

/-!
# A090224: Number of possible positions for n discs on a standard 7 X 6 board of Connect-Four.

The programs for A090224, there is no canonical definition to state claims against.
-/

/-! ## A090224.P14334724693784590399

`abs(C(n+6, 6)*A053150(4^n+1)*A126930(n))`
-/

namespace A090224.P14334724693784590399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 6) 6 : ℤ) * A053150 (4 ^ n + 1) * A126930 n|

end

end A090224.P14334724693784590399

/-! ## A090224.P13221201117884661482

`A001405(n)*A008615(A253946(n+5))`
-/

namespace A090224.P13221201117884661482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A008615 (A253946 (n + 5)).toNat

end

end A090224.P13221201117884661482

/-! ## A090224.P312407394595166208

`C(n+6, 6)%A294776(A000262(n))*A001405(n)`
-/

namespace A090224.P312407394595166208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 6) 6 : ℤ) (A294776 (A000262 n).toNat) * A001405 n

end

end A090224.P312407394595166208

/-!
# A090225: T(n,k) = Points in n-dimensional lattice of side length k with at least one coordinate = k and GCD of all coordinates = 1.

The programs for A090225, there is no canonical definition to state claims against.
-/

/-! ## A090225.P10106309190615347300

`A090030(n)-A090030(A083920(n))`
-/

namespace A090225.P10106309190615347300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 n - A090030 (A083920 n).toNat

end

end A090225.P10106309190615347300

/-! ## A090225.P5801725402359398700

`A090030(n)-A090030(A271439(n))`
-/

namespace A090225.P5801725402359398700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 n - A090030 (A271439 n).toNat

end

end A090225.P5801725402359398700

/-! ## A090225.P13405528482315827863

`A000720(A024493(n))%A263791(n+1)`
-/

namespace A090225.P13405528482315827863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A024493 n).toNat) (A263791 (n + 1))

end

end A090225.P13405528482315827863

/-!
# A090226: Least k such that prime(k) has n digits. Index of least n-digit prime.

The programs for A090226, the canonical program `A090226.P1073034422440432756` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090226 has offset 1).

The definition of A090226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090226.P1073034422440432756

`A006880(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090226

/-- `A006880(n)+1` -/
def P1073034422440432756.Spec : Prop :=
  ∀ n, P1073034422440432756.a n = A090226 (n + 1)

theorem P1073034422440432756.correct : P1073034422440432756.Spec := by
  intro n
  simp only [A090226, Nat.add_sub_cancel]

end A090226

/-! ## A090226.P15323197595788468824

`A000720(10^n)+1`
-/

namespace A090226.P15323197595788468824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (10 ^ n) + 1

end

end A090226.P15323197595788468824

namespace A090226

/-- `A000720(10^n)+1` -/
def P15323197595788468824.Spec : Prop :=
  ∀ n, P15323197595788468824.a n = A090226 (n + 1)

end A090226

/-! ## A090226.P6609608096226186421

`1+∑[A006879(n)]`
-/

namespace A090226.P6609608096226186421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090226.P6609608096226186421

namespace A090226

/-- `1+∑[A006879(n)]` -/
def P6609608096226186421.Spec : Prop :=
  ∀ n, P6609608096226186421.a n = A090226 (n + 1)

end A090226

/-! ## A090226.P3811416772763969451

`∑[A006879(n)^A178487(n)]`
-/

namespace A090226.P3811416772763969451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006879 n : ℚ) ^ (A178487 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090226.P3811416772763969451

namespace A090226

/-- `∑[A006879(n)^A178487(n)]` -/
def P3811416772763969451.Spec : Prop :=
  ∀ n, P3811416772763969451.a n = (A090226 (n + 1) : ℚ)

end A090226

/-! ## A090226.P16622423557933782428

`∑[or(A000007(n), A006879(n))]`
-/

namespace A090226.P16622423557933782428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A006879 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090226.P16622423557933782428

namespace A090226

/-- `∑[or(A000007(n), A006879(n))]` -/
def P16622423557933782428.Spec : Prop :=
  ∀ n, P16622423557933782428.a n = A090226 (n + 1)

end A090226

/-!
# A090227: Beginning with 11, the smallest prime not already used beginning with the number obtained by placing the most significant digit to the right of the least significant digit.

The programs for A090227, there is no canonical definition to state claims against.
-/

/-! ## A090227.P1198611751412381418

`record[p?[A244047(A113658(n+1))]]`
-/

namespace A090227.P1198611751412381418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244047 (A113658 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090227.P1198611751412381418

/-!
# A090228: Products of consecutive members of A090206 (nonprime Fibonacci numbers).

The programs for A090228, there is no canonical definition to state claims against.
-/

/-! ## A090228.P9261959548340262300

`A090206(n+1)*A090206(n+2)`
-/

namespace A090228.P9261959548340262300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1) * A090206 (n + 2)

end

end A090228.P9261959548340262300

/-! ## A090228.P2619375672835082728

`lcm(A090206(A028310(n+1)), A090206(n+2))`
-/

namespace A090228.P2619375672835082728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090206 (A028310 (n + 1)).toNat) (A090206 (n + 2))

end

end A090228.P2619375672835082728

/-! ## A090228.P13016456776791777042

`∑[A090229(n)]*A090206(n+1)`
-/

namespace A090228.P13016456776791777042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A090206 (n + 1)

end

end A090228.P13016456776791777042

/-!
# A090229: Differences between consecutive nonprime Fibonacci numbers (A090206).

The programs for A090229, there is no canonical definition to state claims against.
-/

/-! ## A090229.P18178159989554011500

`Δ[A090206(n+1)]`
-/

namespace A090229.P18178159989554011500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090229.P18178159989554011500

/-! ## A090229.P10117403772706229753

`Δ[A000045(lt[0, A079677(n)])]`
-/

namespace A090229.P10117403772706229753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090229.P10117403772706229753

/-! ## A090229.P12493716577059759514

`Δ[A000045(lt[1, A214878(n)])]`
-/

namespace A090229.P12493716577059759514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214878 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090229.P12493716577059759514

/-! ## A090229.P7300526163243787316

`Δ[A000045(comp[A001605(n+1)])]`
-/

namespace A090229.P7300526163243787316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090229.P7300526163243787316

/-! ## A090229.P4910881658383831553

`Δ[A001611(comp[A001605(n+1)])]`
-/

namespace A090229.P4910881658383831553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090229.P4910881658383831553

/-!
# A090230: Decimal positions where Pi, E and Phi are the same.

The programs for A090230, there is no canonical definition to state claims against.
-/

/-! ## A090230.P119631783460961532

`A266002(n+1)-1`
-/

namespace A090230.P119631783460961532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266002 (n + 1) - 1

end

end A090230.P119631783460961532

/-! ## A090230.P2894190486237523344

`A280193(4*n+3)+A266002(n+1)`
-/

namespace A090230.P2894190486237523344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (4 * n + 3) + A266002 (n + 1)

end

end A090230.P2894190486237523344

/-! ## A090230.P192843291435384805

`A326406(A056874(n+1))+A266002(n+1)`
-/

namespace A090230.P192843291435384805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326406 (A056874 (n + 1)).toNat + A266002 (n + 1)

end

end A090230.P192843291435384805

/-! ## A090230.P7114692452366453375

`A326406(A344627(n+1))+A266002(n+1)`
-/

namespace A090230.P7114692452366453375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326406 (A344627 (n + 1)).toNat + A266002 (n + 1)

end

end A090230.P7114692452366453375

/-! ## A090230.P13397362630446193121

`A023443(A266002(n+1))`
-/

namespace A090230.P13397362630446193121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A266002 (n + 1)).toNat

end

end A090230.P13397362630446193121

/-! ## A090230.P2986547421827964575

`A023444(A266002(n+1)+1)`
-/

namespace A090230.P2986547421827964575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A266002 (n + 1) + 1).toNat

end

end A090230.P2986547421827964575

/-! ## A090230.P9601425702012582515

`A289207(A266002(n+1)+1)`
-/

namespace A090230.P9601425702012582515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A266002 (n + 1) + 1).toNat

end

end A090230.P9601425702012582515

/-!
# A090234: Binomial transform gives a prime.

The programs for A090234, there is no canonical definition to state claims against.
-/

/-! ## A090234.P16951342657354748216

`∑{#}[n, (-1)^(n-#)*C(n, #)*A090235(#+1)]`
-/

namespace A090234.P16951342657354748216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A090235 (k + 1) : ℚ)

end

end A090234.P16951342657354748216

/-!
# A090235: Primes arising in A090234.

The programs for A090235, there is no canonical definition to state claims against.
-/

/-! ## A090235.P14573317006875499289

`∑{#}[n, C(n, #)*A090234(#)]`
-/

namespace A090235.P14573317006875499289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A090234 k

end

end A090235.P14573317006875499289

/-! ## A090235.P5998252574240407387

`A057751(A192759(n))`
-/

namespace A090235.P5998252574240407387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 (A192759 n).toNat

end

end A090235.P5998252574240407387

/-! ## A090235.P15415681944032691084

`A057751(∑[A026008(n)]-A026008(n))`
-/

namespace A090235.P15415681944032691084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 (∑ j ∈ Finset.range (n + 1), f1 j - A026008 n).toNat

end

end A090235.P15415681944032691084

/-!
# A090237: Numerators of the partial sums of the reciprocals of the lower members of twin prime pairs.

The programs for A090237, there is no canonical definition to state claims against.
-/

/-! ## A090237.P370780900169995248

`∑{p}[A097489(n+1), A097489(n+1)/#]`
-/

namespace A090237.P370780900169995248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097489 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A097489 (n + 1) : ℚ) / (p : ℚ)

end

end A090237.P370780900169995248

/-!
# A090238: Triangle T(n, k) read by rows. T(n, k) is the number of lists of k unlabeled permutations whose total length is n.

The programs for A090238, there is no canonical definition to state claims against.
-/

/-! ## A090238.P15881068045001958992

`A265537(A109971(n))`
-/

namespace A090238.P15881068045001958992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 (A109971 n).toNat

end

end A090238.P15881068045001958992

/-! ## A090238.P16733337883514818407

`A265552(A122538(n))`
-/

namespace A090238.P16733337883514818407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265552 (A122538 n).toNat

end

end A090238.P16733337883514818407

/-! ## A090238.P9801650066458485115

`A265552(A127631(n))`
-/

namespace A090238.P9801650066458485115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265552 (A127631 n).toNat

end

end A090238.P9801650066458485115

/-! ## A090238.P10904042370938247292

`A265537(A358694(n))`
-/

namespace A090238.P10904042370938247292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 (A358694 n).toNat

end

end A090238.P10904042370938247292

/-! ## A090238.P11817007593676058501

`A358694(A049872(n))`
-/

namespace A090238.P11817007593676058501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358694 (A049872 n).toNat

end

end A090238.P11817007593676058501

/-!
# A090239: a(n) = A053838(n) + 2 modulo 3.

The programs for A090239, the canonical program `A090239.P14034865969312586321` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090239 has offset 0).

The definition of A090239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090239.P14034865969312586321

`(a(floor(n/3))+n)%3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090239

/-- `(a(floor(n/3))+n)%3` -/
def P14034865969312586321.Spec : Prop :=
  ∀ n, (P14034865969312586321.a n : ℤ) = A090239 n

theorem P14034865969312586321.correct : P14034865969312586321.Spec := by
  intro n
  simp only [A090239]

end A090239

/-! ## A090239.P7949824558822954598

`((a(n-1)+val(n, 3))%3+1)%3` with `a(0)=2`
-/

namespace A090239.P7949824558822954598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ((a (n - 1) + SequenceMachineLib.valuation n 3) % 3 + 1) % 3

end

end A090239.P7949824558822954598

namespace A090239

/-- `((a(n-1)+val(n, 3))%3+1)%3` -/
def P7949824558822954598.Spec : Prop :=
  ∀ n, (P7949824558822954598.a n : ℤ) = A090239 n

end A090239

/-! ## A090239.P1532531635610577812

`(2*(2*n-a(floor(n/3)))%3)%3` with `a(0)=2`
-/

namespace A090239.P1532531635610577812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (2 * Int.tmod ((2 * n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat) 3) 3

end

end A090239.P1532531635610577812

namespace A090239

/-- `(2*(2*n-a(floor(n/3)))%3)%3` -/
def P1532531635610577812.Spec : Prop :=
  ∀ n, P1532531635610577812.a n = A090239 n

end A090239

/-! ## A090239.P15694763299565769957

`A092293(n)%3`
-/

namespace A090239.P15694763299565769957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092293 n) 3

end

end A090239.P15694763299565769957

namespace A090239

/-- `A092293(n)%3` -/
def P15694763299565769957.Spec : Prop :=
  ∀ n, P15694763299565769957.a n = A090239 n

end A090239

/-! ## A090239.P8747120780020710384

`A190642(n)%3`
-/

namespace A090239.P8747120780020710384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190642 n) 3

end

end A090239.P8747120780020710384

namespace A090239

/-- `A190642(n)%3` -/
def P8747120780020710384.Spec : Prop :=
  ∀ n, P8747120780020710384.a n = A090239 n

end A090239

/-! ## A090239.P11914601461025130078

`C(2, A090193(n)²)`
-/

namespace A090239.P11914601461025130078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A090193 n ^ 2).toNat

end

end A090239.P11914601461025130078

namespace A090239

/-- `C(2, A090193(n)²)` -/
def P11914601461025130078.Spec : Prop :=
  ∀ n, (P11914601461025130078.a n : ℤ) = A090239 n

end A090239

/-! ## A090239.P11119468195010473094

`log2(gcd(4, A053838(n)))`
-/

namespace A090239.P11119468195010473094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (A053838 n) : ℝ)

end

end A090239.P11119468195010473094

namespace A090239

/-- `log2(gcd(4, A053838(n)))` -/
def P11119468195010473094.Spec : Prop :=
  ∀ n, P11119468195010473094.a n = (A090239 n : ℝ)

end A090239

/-! ## A090239.P231953527490341267

`(A004128(n)+2)%3`
-/

namespace A090239.P231953527490341267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n + 2) 3

end

end A090239.P231953527490341267

namespace A090239

/-- `(A004128(n)+2)%3` -/
def P231953527490341267.Spec : Prop :=
  ∀ n, P231953527490341267.a n = A090239 n

end A090239

/-! ## A090239.P12981848831148940931

`(A007089(n)+2)%3`
-/

namespace A090239.P12981848831148940931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n + 2) 3

end

end A090239.P12981848831148940931

namespace A090239

/-- `(A007089(n)+2)%3` -/
def P12981848831148940931.Spec : Prop :=
  ∀ n, P12981848831148940931.a n = A090239 n

end A090239

/-! ## A090239.P5062285207407741255

`(A037455(n)+2)%3`
-/

namespace A090239.P5062285207407741255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037455 n + 2) 3

end

end A090239.P5062285207407741255

namespace A090239

/-- `(A037455(n)+2)%3` -/
def P5062285207407741255.Spec : Prop :=
  ∀ n, P5062285207407741255.a n = A090239 n

end A090239

/-! ## A090239.P15965130728581280010

`(A054861(n)+n+2)%3`
-/

namespace A090239.P15965130728581280010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054861 n + (n : ℤ) + 2) 3

end

end A090239.P15965130728581280010

namespace A090239

/-- `(A054861(n)+n+2)%3` -/
def P15965130728581280010.Spec : Prop :=
  ∀ n, P15965130728581280010.a n = A090239 n

end A090239

/-! ## A090239.P14262120950609156424

`(2-A344853(n)+n)%3`
-/

namespace A090239.P14262120950609156424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A344853 n + (n : ℤ)) 3

end

end A090239.P14262120950609156424

namespace A090239

/-- `(2-A344853(n)+n)%3` -/
def P14262120950609156424.Spec : Prop :=
  ∀ n, P14262120950609156424.a n = A090239 n

end A090239

/-! ## A090239.P10588854924420704149

`3*(n+1)-A026601(n+1)`
-/

namespace A090239.P10588854924420704149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A026601 (n + 1)

end

end A090239.P10588854924420704149

namespace A090239

/-- `3*(n+1)-A026601(n+1)` -/
def P10588854924420704149.Spec : Prop :=
  ∀ n, P10588854924420704149.a n = A090239 n

end A090239

/-! ## A090239.P13144656237512655208

`(∑[val(A028310(n), 3)]+2+n)%3`
-/

namespace A090239.P13144656237512655208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2 + n) % 3

end

end A090239.P13144656237512655208

namespace A090239

/-- `(∑[val(A028310(n), 3)]+2+n)%3` -/
def P13144656237512655208.Spec : Prop :=
  ∀ n, (P13144656237512655208.a n : ℤ) = A090239 n

end A090239

/-! ## A090239.P13774138883529114235

`A010872(A053735(n)+2)`
-/

namespace A090239.P13774138883529114235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A053735 n + 2).toNat

end

end A090239.P13774138883529114235

namespace A090239

/-- `A010872(A053735(n)+2)` -/
def P13774138883529114235.Spec : Prop :=
  ∀ n, P13774138883529114235.a n = A090239 n

end A090239

/-! ## A090239.P6233049461532476726

`A092293(n)-A008585(n)`
-/

namespace A090239.P6233049461532476726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092293 n - A008585 n

end

end A090239.P6233049461532476726

namespace A090239

/-- `A092293(n)-A008585(n)` -/
def P6233049461532476726.Spec : Prop :=
  ∀ n, P6233049461532476726.a n = A090239 n

theorem P6233049461532476726.correct : P6233049461532476726.Spec := by
  intro n
  simp only [A090239, Nat.add_sub_cancel, A090239.P6233049461532476726.a, A090239.P14034865969312586321.a, A008585, A008585.P13732812384316341435.a, A092293, A092293.P13578287219996875528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090239

/-! ## A090239.P7354498223137011460

`A010882(A053735(n)+2)-1`
-/

namespace A090239.P7354498223137011460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A053735 n + 2).toNat - 1

end

end A090239.P7354498223137011460

namespace A090239

/-- `A010882(A053735(n)+2)-1` -/
def P7354498223137011460.Spec : Prop :=
  ∀ n, P7354498223137011460.a n = A090239 n

end A090239

/-! ## A090239.P7226736713409363432

`2-A010872(2*A053735(n))`
-/

namespace A090239.P7226736713409363432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (2 * A053735 n).toNat

end

end A090239.P7226736713409363432

namespace A090239

/-- `2-A010872(2*A053735(n))` -/
def P7226736713409363432.Spec : Prop :=
  ∀ n, P7226736713409363432.a n = A090239 n

end A090239

/-! ## A090239.P8346440138955952328

`A016789(n)-A079498(n+1)`
-/

namespace A090239.P8346440138955952328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A079498 (n + 1)

end

end A090239.P8346440138955952328

namespace A090239

/-- `A016789(n)-A079498(n+1)` -/
def P8346440138955952328.Spec : Prop :=
  ∀ n, P8346440138955952328.a n = A090239 n

end A090239

/-!
# A090240: Numbers which occur as the harmonic mean of the divisors of m for some m.

The programs for A090240, there is no canonical definition to state claims against.
-/

/-! ## A090240.P17583216378994368303

`lt[A182835(n+1), A182843(A182816(n+4)²)]`
-/

namespace A090240.P17583216378994368303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182843 (A182816 (n + 4) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090240.P17583216378994368303

/-!
# A090241: a(n) = F(n)^F(n+1), where F is the Fibonacci sequence A000045.

The programs for A090241, the canonical program `A090241.P8502492943589029318` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090241 has offset 0).

The definition of A090241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090241.P8502492943589029318

`A000045(n)^A000045(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090241

/-- `A000045(n)^A000045(n+1)` -/
def P8502492943589029318.Spec : Prop :=
  ∀ n, P8502492943589029318.a n = (A090241 n : ℚ)

end A090241

/-!
# A090242: a(n) = F(n)^F(n-1), where F is the Fibonacci sequence A000045.

The programs for A090242, there is no canonical definition to state claims against.
-/

/-! ## A090242.P5122886719942551309

`(n-∑[a(n-1)-(1-a(n-2))])^A212804(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A090242.P5122886719942551309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A212804 n : ℤ)

end

end A090242.P5122886719942551309

/-! ## A090242.P5363402488304777217

`A000045(n)^A013987(n)`
-/

namespace A090242.P5363402488304777217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) ^ (A013987 n : ℤ)

end

end A090242.P5363402488304777217

/-! ## A090242.P7351638687521590079

`A000045(n)^A212804(n)`
-/

namespace A090242.P7351638687521590079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) ^ (A212804 n : ℤ)

end

end A090242.P7351638687521590079

/-! ## A090242.P11938686563404375186

`abs(A236191(n)^A212804(n))`
-/

namespace A090242.P11938686563404375186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A236191 n : ℚ) ^ (A212804 n : ℤ)|

end

end A090242.P11938686563404375186

/-!
# A090244: a(0) = 1; a(1) = 2; a(n) = { a(n-1) + a(n-2) for n even, a(n-1) - a(n-2) for n odd }.

The programs for A090244, the canonical program `A090244.P2139374117242828698` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090244 has offset 0).

The definition of A090244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090244.P5854435125362820869

`ogf((1+2x+2x^2-x^3)/(1-x^2-x^4))`
-/

namespace A090244.P5854435125362820869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, -1] [1, 0, -1, 0, -1] n

end

end A090244.P5854435125362820869

namespace A090244

/-- `ogf((1+2x+2x^2-x^3)/(1-x^2-x^4))` -/
def P5854435125362820869.Spec : Prop :=
  ∀ n, P5854435125362820869.a n = A090244 n

end A090244

/-! ## A090244.P2139374117242828698

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090244

/-- `a(n-2)+a(n-4)` -/
def P2139374117242828698.Spec : Prop :=
  ∀ n, (P2139374117242828698.a n : ℤ) = A090244 n

theorem P2139374117242828698.correct : P2139374117242828698.Spec := by
  intro n
  simp only [A090244]

end A090244

/-! ## A090244.P17143608473240193838

`A000032(ceil(xor(1, n)/2))`
-/

namespace A090244.P17143608473240193838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

end

end A090244.P17143608473240193838

namespace A090244

/-- `A000032(ceil(xor(1, n)/2))` -/
def P17143608473240193838.Spec : Prop :=
  ∀ n, P17143608473240193838.a n = A090244 n

end A090244

/-! ## A090244.P6420945326311299348

`A000032(round(xor(1, n)/2))`
-/

namespace A090244.P6420945326311299348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A090244.P6420945326311299348

namespace A090244

/-- `A000032(round(xor(1, n)/2))` -/
def P6420945326311299348.Spec : Prop :=
  ∀ n, P6420945326311299348.a n = A090244 n

end A090244

/-! ## A090244.P11094792749198643172

`A000032(Δ[ceil((n/2)²)])`
-/

namespace A090244.P11094792749198643172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat

end

end A090244.P11094792749198643172

namespace A090244

/-- `A000032(Δ[ceil((n/2)²)])` -/
def P11094792749198643172.Spec : Prop :=
  ∀ n, P11094792749198643172.a n = A090244 n

end A090244

/-! ## A090244.P15674846958176830359

`A127218(A168232(n+1))`
-/

namespace A090244.P15674846958176830359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (A168232 (n + 1)).toNat

end

end A090244.P15674846958176830359

namespace A090244

/-- `A127218(A168232(n+1))` -/
def P15674846958176830359.Spec : Prop :=
  ∀ n, P15674846958176830359.a n = A090244 n

end A090244

/-! ## A090244.P12632461110567740781

`A329723(A052938(n+1))`
-/

namespace A090244.P12632461110567740781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A052938 (n + 1)).toNat

end

end A090244.P12632461110567740781

namespace A090244

/-- `A329723(A052938(n+1))` -/
def P12632461110567740781.Spec : Prop :=
  ∀ n, P12632461110567740781.a n = A090244 n

end A090244

/-! ## A090244.P5338140234162641534

`A053602(n+1)+A339572(n+1)-A339572(n)`
-/

namespace A090244.P5338140234162641534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 1) + (A339572 (n + 1) - A339572 n)

end

end A090244.P5338140234162641534

namespace A090244

/-- `A053602(n+1)+A339572(n+1)-A339572(n)` -/
def P5338140234162641534.Spec : Prop :=
  ∀ n, P5338140234162641534.a n = A090244 n

end A090244

/-! ## A090244.P13135361925835374203

`A082587(n+2)-A082587(n)`
-/

namespace A090244.P13135361925835374203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (n + 2) - A082587 n

end

end A090244.P13135361925835374203

namespace A090244

/-- `A082587(n+2)-A082587(n)` -/
def P13135361925835374203.Spec : Prop :=
  ∀ n, P13135361925835374203.a n = A090244 n

end A090244

/-! ## A090244.P13645763329959268370

`Δ[A082587(n+1)+A082587(n)]`
-/

namespace A090244.P13645763329959268370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (n + 1) + A082587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090244.P13645763329959268370

namespace A090244

/-- `Δ[A082587(n+1)+A082587(n)]` -/
def P13645763329959268370.Spec : Prop :=
  ∀ n, P13645763329959268370.a n = A090244 n

end A090244

/-! ## A090244.P6606605898518452965

`A059779(A008795(n))`
-/

namespace A090244.P6606605898518452965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059779 (A008795 n).toNat

end

end A090244.P6606605898518452965

namespace A090244

/-- `A059779(A008795(n))` -/
def P6606605898518452965.Spec : Prop :=
  ∀ n, P6606605898518452965.a n = A090244 n

end A090244

/-!
# A090245: Maximum numbers of cards that would have no SET in an n-attribute version of the SET card game.

The programs for A090245, there is no canonical definition to state claims against.
-/

/-! ## A090245.P7560643971055331022

`∑[round(sqrt(Δ[n!]-n))+1]`
-/

namespace A090245.P7560643971055331022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090245.P7560643971055331022

/-! ## A090245.P6857947752078212588

`ogf((-1+x^2+x^3+2x^4+4x^5-2x^6)/(-1+2x+x^2))`
-/

namespace A090245.P6857947752078212588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1, -2, -4, 2] [1, -2, -1] n

end

end A090245.P6857947752078212588

/-! ## A090245.P16750682119590308635

`n-2+12*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=20, a(5)=45`
-/

namespace A090245.P16750682119590308635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9, 20, 45] fun n a =>
  (n : ℤ) - 2 + 12 * a (n - 3)

end

end A090245.P16750682119590308635

/-!
# A090247: a(n) = 26*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 26.

The programs for A090247, the canonical program `A090247.P9842007902395926973` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090247 has offset 0).

The definition of A090247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*a(n-1)-a(n-2)` (program `A090247.P9842007902395926973`, by `A090247.P9842007902395926973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090247.P9064724109731397543

`ogf((2-26x)/(1-26x+x^2))`
-/

namespace A090247.P9064724109731397543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -26] [1, -26, 1] n

end

end A090247.P9064724109731397543

namespace A090247

/-- `ogf((2-26x)/(1-26x+x^2))` -/
def P9064724109731397543.Spec : Prop :=
  ∀ n, P9064724109731397543.a n = A090247 n

end A090247

/-! ## A090247.P9842007902395926973

`26*a(n-1)-a(n-2)` with `a(0)=2, a(1)=26`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090247

/-- `26*a(n-1)-a(n-2)` -/
def P9842007902395926973.Spec : Prop :=
  ∀ n, P9842007902395926973.a n = A090247 n

theorem P9842007902395926973.correct : P9842007902395926973.Spec := by
  intro n
  simp only [A090247]

end A090247

/-! ## A090247.P12068225658340377963

`(13+sqrt(168))^n+(13-sqrt(168))^n`
-/

namespace A090247.P12068225658340377963
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 + Real.sqrt (168 : ℝ)) ^ n + (13 - Real.sqrt (168 : ℝ)) ^ n

end

end A090247.P12068225658340377963

namespace A090247

/-- `(13+sqrt(168))^n+(13-sqrt(168))^n` -/
def P12068225658340377963.Spec : Prop :=
  ∀ n, P12068225658340377963.a n = (A090247 n : ℝ)

theorem P12068225658340377963.correct : P12068225658340377963.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090247, Nat.add_sub_cancel, A090247.P12068225658340377963.a, A090247.P9842007902395926973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090247, Nat.add_sub_cancel, A090247.P12068225658340377963.a, A090247.P9842007902395926973.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090247

/-! ## A090247.P1898166895212301352

`2*A097308(n)`
-/

namespace A090247.P1898166895212301352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097308 n

end

end A090247.P1898166895212301352

namespace A090247

/-- `2*A097308(n)` -/
def P1898166895212301352.Spec : Prop :=
  ∀ n, P1898166895212301352.a n = A090247 n

end A090247

/-! ## A090247.P327015419493329130

`record[2*gcd(A041310(n), A077957(n))]`
-/

namespace A090247.P327015419493329130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A041310 n) (A077957 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090247.P327015419493329130

namespace A090247

/-- `record[2*gcd(A041310(n), A077957(n))]` -/
def P327015419493329130.Spec : Prop :=
  ∀ n, (P327015419493329130.a n : ℤ) = A090247 n

end A090247

/-! ## A090247.P16113567585182519046

`lcm(A020639(A005897(n+2)), A097308(n))`
-/

namespace A090247.P16113567585182519046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A005897 (n + 2)).toNat) (A097308 n)

end

end A090247.P16113567585182519046

namespace A090247

/-- `lcm(A020639(A005897(n+2)), A097308(n))` -/
def P16113567585182519046.Spec : Prop :=
  ∀ n, (P16113567585182519046.a n : ℤ) = A090247 n

end A090247

/-! ## A090247.P1364581996803564784

`2*(A041310(2*n+1)-A041310(2*n))`
-/

namespace A090247.P1364581996803564784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041310 (2 * n + 1) - A041310 (2 * n))

end

end A090247.P1364581996803564784

namespace A090247

/-- `2*(A041310(2*n+1)-A041310(2*n))` -/
def P1364581996803564784.Spec : Prop :=
  ∀ n, P1364581996803564784.a n = A090247 n

end A090247

/-!
# A090248: a(n) = 27a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 27.

The programs for A090248, the canonical program `A090248.P6278636942285646908` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090248 has offset 0).

The definition of A090248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*a(n-1)-a(n-2)` (program `A090248.P6278636942285646908`, by `A090248.P6278636942285646908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090248.P7707183085571510177

`ogf((2-27x)/(1-27x+x^2))`
-/

namespace A090248.P7707183085571510177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -27] [1, -27, 1] n

end

end A090248.P7707183085571510177

namespace A090248

/-- `ogf((2-27x)/(1-27x+x^2))` -/
def P7707183085571510177.Spec : Prop :=
  ∀ n, P7707183085571510177.a n = A090248 n

end A090248

/-! ## A090248.P6278636942285646908

`27*a(n-1)-a(n-2)` with `a(0)=2, a(1)=27`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090248

/-- `27*a(n-1)-a(n-2)` -/
def P6278636942285646908.Spec : Prop :=
  ∀ n, P6278636942285646908.a n = A090248 n

theorem P6278636942285646908.correct : P6278636942285646908.Spec := by
  intro n
  simp only [A090248]

end A090248

/-! ## A090248.P2687430931358162720

`A087130(2*n)`
-/

namespace A090248.P2687430931358162720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 (2 * n)

end

end A090248.P2687430931358162720

namespace A090248

/-- `A087130(2*n)` -/
def P2687430931358162720.Spec : Prop :=
  ∀ n, P2687430931358162720.a n = A090248 n

end A090248

/-! ## A090248.P18159953244445477275

`A100236(2*n)+1`
-/

namespace A090248.P18159953244445477275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100236 (2 * n) + 1

end

end A090248.P18159953244445477275

namespace A090248

/-- `A100236(2*n)+1` -/
def P18159953244445477275.Spec : Prop :=
  ∀ n, P18159953244445477275.a n = A090248 n

end A090248

/-! ## A090248.P16605878991902981119

`A051930(2*n)-4`
-/

namespace A090248.P16605878991902981119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051930 (2 * n) - 4

end

end A090248.P16605878991902981119

namespace A090248

/-- `A051930(2*n)-4` -/
def P16605878991902981119.Spec : Prop :=
  ∀ n, P16605878991902981119.a n = A090248 n

end A090248

/-! ## A090248.P5122071304362365061

`record[gcd(val(n+1, 2), A087130(n))]`
-/

namespace A090248.P5122071304362365061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A087130 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090248.P5122071304362365061

namespace A090248

/-- `record[gcd(val(n+1, 2), A087130(n))]` -/
def P5122071304362365061.Spec : Prop :=
  ∀ n, (P5122071304362365061.a n : ℤ) = A090248 n

end A090248

/-! ## A090248.P8951125660720218665

`record[A087130(A014681(n))]`
-/

namespace A090248.P8951125660720218665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090248.P8951125660720218665

namespace A090248

/-- `record[A087130(A014681(n))]` -/
def P8951125660720218665.Spec : Prop :=
  ∀ n, P8951125660720218665.a n = A090248 n

end A090248

/-! ## A090248.P8358758721348559206

`A100237(2*n)+A015449(2*n)`
-/

namespace A090248.P8358758721348559206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100237 (2 * n) + A015449 (2 * n)

end

end A090248.P8358758721348559206

namespace A090248

/-- `A100237(2*n)+A015449(2*n)` -/
def P8358758721348559206.Spec : Prop :=
  ∀ n, P8358758721348559206.a n = A090248 n

end A090248

/-!
# A090249: a(n) = 28a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 28.

The programs for A090249, the canonical program `A090249.P2706728060556408568` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090249 has offset 0).

The definition of A090249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*a(n-1)-a(n-2)` (program `A090249.P2706728060556408568`, by `A090249.P2706728060556408568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090249.P1207035572410507861

`ogf((2-28x)/(1-28x+x^2))`
-/

namespace A090249.P1207035572410507861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -28] [1, -28, 1] n

end

end A090249.P1207035572410507861

namespace A090249

/-- `ogf((2-28x)/(1-28x+x^2))` -/
def P1207035572410507861.Spec : Prop :=
  ∀ n, P1207035572410507861.a n = A090249 n

end A090249

/-! ## A090249.P2706728060556408568

`28*a(n-1)-a(n-2)` with `a(0)=2, a(1)=28`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090249

/-- `28*a(n-1)-a(n-2)` -/
def P2706728060556408568.Spec : Prop :=
  ∀ n, P2706728060556408568.a n = A090249 n

theorem P2706728060556408568.correct : P2706728060556408568.Spec := by
  intro n
  simp only [A090249]

end A090249

/-! ## A090249.P5228756214346849941

`2*A097310(n)`
-/

namespace A090249.P5228756214346849941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097310 n

end

end A090249.P5228756214346849941

namespace A090249

/-- `2*A097310(n)` -/
def P5228756214346849941.Spec : Prop :=
  ∀ n, P5228756214346849941.a n = A090249 n

end A090249

/-! ## A090249.P8348885444785806260

`record[2*and(A033999(n), A041362(n))]`
-/

namespace A090249.P8348885444785806260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A033999 n) (A041362 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090249.P8348885444785806260

namespace A090249

/-- `record[2*and(A033999(n), A041362(n))]` -/
def P8348885444785806260.Spec : Prop :=
  ∀ n, P8348885444785806260.a n = A090249 n

end A090249

/-! ## A090249.P362305061496381293

`A159668(n)+A041363(A004275(n))`
-/

namespace A090249.P362305061496381293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159668 n + A041363 (A004275 n).toNat

end

end A090249.P362305061496381293

namespace A090249

/-- `A159668(n)+A041363(A004275(n))` -/
def P362305061496381293.Spec : Prop :=
  ∀ n, P362305061496381293.a n = A090249 n

end A090249

/-! ## A090249.P14833826566014367625

`A041363(2*n)+A041363(A004275(n))`
-/

namespace A090249.P14833826566014367625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (2 * n) + A041363 (A004275 n).toNat

end

end A090249.P14833826566014367625

namespace A090249

/-- `A041363(2*n)+A041363(A004275(n))` -/
def P14833826566014367625.Spec : Prop :=
  ∀ n, P14833826566014367625.a n = A090249 n

end A090249

/-! ## A090249.P4348466751704722955

`A159668(A004273(n)-n)+A159668(n)`
-/

namespace A090249.P4348466751704722955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159668 (A004273 n - (n : ℤ)).toNat + A159668 n

end

end A090249.P4348466751704722955

namespace A090249

/-- `A159668(A004273(n)-n)+A159668(n)` -/
def P4348466751704722955.Spec : Prop :=
  ∀ n, P4348466751704722955.a n = A090249 n

end A090249

/-! ## A090249.P14792437030037951507

`2*(A041362(2*n+1)-A041362(2*n))`
-/

namespace A090249.P14792437030037951507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041362 (2 * n + 1) - A041362 (2 * n))

end

end A090249.P14792437030037951507

namespace A090249

/-- `2*(A041362(2*n+1)-A041362(2*n))` -/
def P14792437030037951507.Spec : Prop :=
  ∀ n, P14792437030037951507.a n = A090249 n

end A090249

/-!
# A090250: Least multiple of n such that deleting the first r most significant digits yields a number divisible by n-r, for r = 0 to n-2.

The programs for A090250, there is no canonical definition to state claims against.
-/

/-! ## A090250.P13007245805772140588

`A362936(n+1)+A000010(A096497(n+1))`
-/

namespace A090250.P13007245805772140588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362936 (n + 1) + A000010 (A096497 (n + 1)).toNat

end

end A090250.P13007245805772140588

/-!
# A090251: a(n) = 29a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 29.

The programs for A090251, the canonical program `A090251.P8074967159614129386` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090251 has offset 0).

The definition of A090251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29*a(n-1)-a(n-2)` (program `A090251.P8074967159614129386`, by `A090251.P8074967159614129386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090251.P16561046962766090473

`ogf((2-29x)/(1-29x+x^2))`
-/

namespace A090251.P16561046962766090473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -29] [1, -29, 1] n

end

end A090251.P16561046962766090473

namespace A090251

/-- `ogf((2-29x)/(1-29x+x^2))` -/
def P16561046962766090473.Spec : Prop :=
  ∀ n, P16561046962766090473.a n = A090251 n

end A090251

/-! ## A090251.P8074967159614129386

`29*a(n-1)-a(n-2)` with `a(0)=2, a(1)=29`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090251

/-- `29*a(n-1)-a(n-2)` -/
def P8074967159614129386.Spec : Prop :=
  ∀ n, P8074967159614129386.a n = A090251 n

theorem P8074967159614129386.correct : P8074967159614129386.Spec := by
  intro n
  simp only [A090251]

end A090251

/-! ## A090251.P16049922567249013217

`((29+sqrt(837))/2)^n+((29-sqrt(837))/2)^n`
-/

namespace A090251.P16049922567249013217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((29 + Real.sqrt (837 : ℝ)) / 2) ^ n + ((29 - Real.sqrt (837 : ℝ)) / 2) ^ n

end

end A090251.P16049922567249013217

namespace A090251

/-- `((29+sqrt(837))/2)^n+((29-sqrt(837))/2)^n` -/
def P16049922567249013217.Spec : Prop :=
  ∀ n, P16049922567249013217.a n = (A090251 n : ℝ)

theorem P16049922567249013217.correct : P16049922567249013217.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090251, Nat.add_sub_cancel, A090251.P16049922567249013217.a, A090251.P8074967159614129386.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090251, Nat.add_sub_cancel, A090251.P16049922567249013217.a, A090251.P8074967159614129386.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090251

/-! ## A090251.P4101553758175494872

`(A097782(2*n)+1)/A097782(n)`
-/

namespace A090251.P4101553758175494872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097782 (2 * n) + 1 : ℚ) / (A097782 n : ℚ)

end

end A090251.P4101553758175494872

namespace A090251

/-- `(A097782(2*n)+1)/A097782(n)` -/
def P4101553758175494872.Spec : Prop :=
  ∀ n, P4101553758175494872.a n = (A090251 n : ℚ)

end A090251

/-!
# A090252: The Two-Up sequence: a(n) is the least positive number not already used that is coprime to the previous floor(n/2) terms.

The programs for A090252, there is no canonical definition to state claims against.
-/

/-! ## A090252.P8161857595600799583

`A008578(n+1)-A354154(n+1)`
-/

namespace A090252.P8161857595600799583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A354154 (n + 1)

end

end A090252.P8161857595600799583

/-! ## A090252.P17763126726357127781

`record[A006530(n+1)]-A354154(n+1)`
-/

namespace A090252.P17763126726357127781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)

end

end A090252.P17763126726357127781

/-! ## A090252.P3072328158912386409

`record[A020639(n+1)]-A354154(n+1)`
-/

namespace A090252.P3072328158912386409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)

end

end A090252.P3072328158912386409

/-! ## A090252.P1268384050775484370

`record[A014963(n+1)]-A354154(n+1)`
-/

namespace A090252.P1268384050775484370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)

end

end A090252.P1268384050775484370

/-! ## A090252.P16591640752680214777

`record[A089026(n+1)]-A354154(n+1)`
-/

namespace A090252.P16591640752680214777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)

end

end A090252.P16591640752680214777

/-! ## A090252.P14268800995792125923

`record[A064989(n+1)]-A354154(n+1)`
-/

namespace A090252.P14268800995792125923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)

end

end A090252.P14268800995792125923

/-! ## A090252.P10142748853729153520

`A064989(p?[A259153(n)])-A354154(n+1)`
-/

namespace A090252.P10142748853729153520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A354154 (n + 1)

end

end A090252.P10142748853729153520

/-! ## A090252.P4731560048181431388

`A064989(p?[A018252(n+1)-7])-A354154(n+1)`
-/

namespace A090252.P4731560048181431388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A354154 (n + 1)

end

end A090252.P4731560048181431388

/-! ## A090252.P12103440703289115434

`record[A354764(n+1)]-A354154(n+1)`
-/

namespace A090252.P12103440703289115434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)

end

end A090252.P12103440703289115434

/-!
# A090253: a(1) = 2, a(2) = 3, a(n) = least prime greater than the product of two previous terms.

The programs for A090253, there is no canonical definition to state claims against.
-/

/-! ## A090253.P9139590710861569704

`A000015(a(n-1)*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A090253.P9139590710861569704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000015 (a (n - 1) * a (n - 2)).toNat

end

end A090253.P9139590710861569704

/-! ## A090253.P5351498639232467081

`A007918(a(n-1)*a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A090253.P5351498639232467081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007918 (a (n - 1) * a (n - 2)).toNat

end

end A090253.P5351498639232467081

/-!
# A090254: a(1) =1, a(n) the least n-th power greater than the product of all previous terms.

The programs for A090254, there is no canonical definition to state claims against.
-/

/-! ## A090254.P8512387925002075092

`round(sqrt(A188499(n)+1))^(n+1)`
-/

namespace A090254.P8512387925002075092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A188499 n + 1 : ℝ)) ^ (n + 1)

end

end A090254.P8512387925002075092

/-! ## A090254.P10400964729949533778

`(A048766(a(n-1))+1)^(n+1)` with `a(0)=1`
-/

namespace A090254.P10400964729949533778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A048766 (a (n - 1)).toNat + 1) ^ (n + 1)

end

end A090254.P10400964729949533778

/-!
# A090257: a(1) = 1, then least square such that every partial concatenation is a prime.

The programs for A090257, there is no canonical definition to state claims against.
-/

/-! ## A090257.P14404857492789983106

`A365427(A244874(n))`
-/

namespace A090257.P14404857492789983106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365427 (A244874 n).toNat

end

end A090257.P14404857492789983106

/-! ## A090257.P2136272330714017104

`A048691(A248744(n))²`
-/

namespace A090257.P2136272330714017104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A248744 n).toNat ^ 2

end

end A090257.P2136272330714017104

/-!
# A090258: Last term of prime quadruples.

The programs for A090258, there is no canonical definition to state claims against.
-/

/-! ## A090258.P8024901292919890584

`A064974(n+1)-1`
-/

namespace A090258.P8024901292919890584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1) - 1

end

end A090258.P8024901292919890584

/-! ## A090258.P10717755604647961817

`A136721(n+1)+2`
-/

namespace A090258.P10717755604647961817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1) + 2

end

end A090258.P10717755604647961817

/-! ## A090258.P10888224108723977580

`A173037(n+1)+4`
-/

namespace A090258.P10888224108723977580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) + 4

end

end A090258.P10888224108723977580

/-! ## A090258.P8819624392041448527

`A136720(n+1)+6`
-/

namespace A090258.P8819624392041448527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1) + 6

end

end A090258.P8819624392041448527

/-! ## A090258.P6844219333514154953

`A007530(n+1)+8`
-/

namespace A090258.P6844219333514154953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) + 8

end

end A090258.P6844219333514154953

/-! ## A090258.P9573979403385196554

`A125855(n+1)+9`
-/

namespace A090258.P9573979403385196554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1) + 9

end

end A090258.P9573979403385196554

/-! ## A090258.P3411290440633163736

`3*A173092(n+1)+4`
-/

namespace A090258.P3411290440633163736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A173092 (n + 1) + 4

end

end A090258.P3411290440633163736

/-! ## A090258.P7449798716677282519

`A136162(4*(n+1))`
-/

namespace A090258.P7449798716677282519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (4 * (n + 1))

end

end A090258.P7449798716677282519

/-! ## A090258.P16790985761353733275

`A136162(A016813(n)+2)+2`
-/

namespace A090258.P16790985761353733275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136162 (A016813 n + 2).toNat + 2

end

end A090258.P16790985761353733275

/-! ## A090258.P9300021404034071133

`∩[A001359(n+1), A098415(n+1)]+2`
-/

namespace A090258.P9300021404034071133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A090258.P9300021404034071133

/-! ## A090258.P14069550645481050392

`∩[A073649(n+1), A098415(n+1)]+2`
-/

namespace A090258.P14069550645481050392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A090258.P14069550645481050392

/-! ## A090258.P6253083404994784533

`A174839(4*(n+2))`
-/

namespace A090258.P6253083404994784533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174839 (4 * (n + 2))

end

end A090258.P6253083404994784533

/-! ## A090258.P13541553414905889220

`A174839(A004766(n+1)+2)+2`
-/

namespace A090258.P13541553414905889220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174839 (A004766 (n + 1) + 2).toNat + 2

end

end A090258.P13541553414905889220

/-! ## A090258.P15733176817389039865

`∩[A006512(n+1), A098415(n+1)+2]`
-/

namespace A090258.P15733176817389039865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090258.P15733176817389039865

/-! ## A090258.P8656764939093364737

`∩[A054799(n+1), A098415(n+1)]+2`
-/

namespace A090258.P8656764939093364737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A090258.P8656764939093364737

/-! ## A090258.P3797684199015887726

`∩[A073649(n+1), A088176(n+1)]+2`
-/

namespace A090258.P3797684199015887726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A090258.P3797684199015887726

/-! ## A090258.P10707696574127750953

`∩[A063700(n+1), A098415(n+1)]+2`
-/

namespace A090258.P10707696574127750953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A090258.P10707696574127750953

/-! ## A090258.P11488935730734248901

`∩[A067829(n+1), A098415(n+1)+2]`
-/

namespace A090258.P11488935730734248901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090258.P11488935730734248901

/-! ## A090258.P18072517624975326727

`∩[A088176(n+1)+2, A098415(n+1)]`
-/

namespace A090258.P18072517624975326727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090258.P18072517624975326727

/-! ## A090258.P17447651426648921170

`∩[A098415(n+1), A111166(n+1)]+2`
-/

namespace A090258.P17447651426648921170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A090258.P17447651426648921170

/-!
# A090259: Least even a(n) > 2 not representable as a sum of two of the first n primes. From Goldbach conjecture.

The programs for A090259, there is no canonical definition to state claims against.
-/

/-! ## A090259.P11795060944368111971

`A007944(n)+2%a(A000038(n))` with `a(0)=6`
-/

namespace A090259.P11795060944368111971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A007944 n + Int.tmod 2 (a (A000038 n).toNat)

end

end A090259.P11795060944368111971

/-! ## A090259.P5714528872040189104

`A007944(round(sqrt(n²+1)))+2-A000038(n)`
-/

namespace A090259.P5714528872040189104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (2 - A000038 n)

end

end A090259.P5714528872040189104

/-! ## A090259.P2708755238473167055

`A134451(2*n)+A007944(A028310(n))`
-/

namespace A090259.P2708755238473167055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n) + A007944 (A028310 n).toNat

end

end A090259.P2708755238473167055

/-! ## A090259.P16858703072105119935

`A007944(A028310(n))-2*A057428(n)`
-/

namespace A090259.P16858703072105119935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A028310 n).toNat - 2 * A057428 n

end

end A090259.P16858703072105119935

/-! ## A090259.P17099710239245181607

`A007944(A028310(n))+xor(2, A000038(n))`
-/

namespace A090259.P17099710239245181607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A028310 n).toNat + Int.xor 2 (A000038 n)

end

end A090259.P17099710239245181607

/-!
# A090260: Beginning with 1, distinct numbers such that concatenation a(n+1), a(n), a(n+1) is a prime.

The programs for A090260, there is no canonical definition to state claims against.
-/

/-! ## A090260.P4004408709309705518

`A038568(A169581(n+1)^A061017(n+2))`
-/

namespace A090260.P4004408709309705518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (SequenceMachineLib.roundAway ((A169581 (n + 1) : ℚ) ^ (A061017 (n + 2) : ℤ))).toNat

end

end A090260.P4004408709309705518

/-! ## A090260.P3557733402555123926

`A038568(A169581(n+1)^A000194(3*n+1))`
-/

namespace A090260.P3557733402555123926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (SequenceMachineLib.roundAway ((A169581 (n + 1) : ℚ) ^ (A000194 (3 * n + 1) : ℤ))).toNat

end

end A090260.P3557733402555123926

/-! ## A090260.P22794342212525444

`A038568((eq[1, A050873(n+1)]+1)^A000194(3*n+1))`
-/

namespace A090260.P22794342212525444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) ^ (A000194 (3 * n + 1) : ℤ))).toNat

end

end A090260.P22794342212525444

/-!
# A090262: Numbers n such that the strings n1n and 1n1 are both prime.

The programs for A090262, there is no canonical definition to state claims against.
-/

/-! ## A090262.P869314728247555194

`∩[A032682(n+1), A103967(n+1)]`
-/

namespace A090262.P869314728247555194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090262.P869314728247555194

/-!
# A090265: Numbers n such that the strings n9n and 9n9 are both prime.

The programs for A090265, there is no canonical definition to state claims against.
-/

/-! ## A090265.P14615570607866744532

`record[gcd(A249381(n+1), A249392(n))]`
-/

namespace A090265.P14615570607866744532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249381 (n + 1)) (A249392 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090265.P14615570607866744532

/-! ## A090265.P7369412024701935519

`A249381(n+2)%∑[A027888(3*n+5)]`
-/

namespace A090265.P7369412024701935519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027888 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249381 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090265.P7369412024701935519

/-! ## A090265.P16342712319959515021

`A249381(n+2)%A249362(A000031(n))`
-/

namespace A090265.P16342712319959515021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249381 (n + 2)) (A249362 (A000031 n).toNat)

end

end A090265.P16342712319959515021

/-!
# A090267: Primes arising in A090266.

The programs for A090267, there is no canonical definition to state claims against.
-/

/-! ## A090267.P8070306072985654281

`A252942(p?[comp[n²]])`
-/

namespace A090267.P8070306072985654281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090267.P8070306072985654281

/-! ## A090267.P8606983922092743409

`A252942(A051599(∑[n]))`
-/

namespace A090267.P8606983922092743409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (A051599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090267.P8606983922092743409

/-! ## A090267.P6221795078226808426

`A252942(Δ[A007504(n)])`
-/

namespace A090267.P6221795078226808426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (f1 (n + 1) - f1 n).toNat

end

end A090267.P6221795078226808426

/-! ## A090267.P12881552287772071659

`A252942(A000040(n+1))`
-/

namespace A090267.P12881552287772071659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (A000040 (n + 1)).toNat

end

end A090267.P12881552287772071659

/-! ## A090267.P6730496652052355532

`A252942(A049551(n+1))`
-/

namespace A090267.P6730496652052355532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (A049551 (n + 1)).toNat

end

end A090267.P6730496652052355532

/-!
# A090268: Smallest prime obtained by sandwiching prime(n) between identical digits, except that a(5) = 0.

The programs for A090268, there is no canonical definition to state claims against.
-/

/-! ## A090268.P8061819368915065384

`A090287(p?[comp[n²]])`
-/

namespace A090268.P8061819368915065384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090287 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A090268.P8061819368915065384

/-! ## A090268.P4112554368249461137

`A090287(A000040(n+1))`
-/

namespace A090268.P4112554368249461137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090287 (A000040 (n + 1)).toNat

end

end A090268.P4112554368249461137

/-! ## A090268.P11772210211283024352

`A090287(A030291(n+1))`
-/

namespace A090268.P11772210211283024352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090287 (A030291 (n + 1)).toNat

end

end A090268.P11772210211283024352

/-! ## A090268.P18425482298908758838

`A090287(A030475(n+1))`
-/

namespace A090268.P18425482298908758838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090287 (A030475 (n + 1)).toNat

end

end A090268.P18425482298908758838

/-! ## A090268.P15345079288484254387

`A090287(A038616(n+1))`
-/

namespace A090268.P15345079288484254387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090287 (A038616 (n + 1)).toNat

end

end A090268.P15345079288484254387

/-!
# A090270: Least positive r such that concatenation k, r, k is prime, where k == 1,3,7 or 9 (mod 10) in increasing order.

The programs for A090270, there is no canonical definition to state claims against.
-/

/-! ## A090270.P4853214331622367347

`A181801(A259677(n+1)-A338494(n+1))`
-/

namespace A090270.P4853214331622367347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (A259677 (n + 1) - A338494 (n + 1)).toNat

end

end A090270.P4853214331622367347

/-! ## A090270.P2872500232749402724

`A296150(A289509(3*n+2)+A026585(n))`
-/

namespace A090270.P2872500232749402724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A289509 (3 * n + 2) + A026585 n).toNat

end

end A090270.P2872500232749402724

/-! ## A090270.P9336476526047212593

`gcd(6, A183465(A046691(n+4)+11)-A092892(n))`
-/

namespace A090270.P9336476526047212593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A183465 (A046691 (n + 4) + 11).toNat - A092892 n)

end

end A090270.P9336476526047212593

/-! ## A090270.P14965113274284283865

`A211097(A250120(2*(n+1))+A239712(2*n+5))`
-/

namespace A090270.P14965113274284283865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A250120 (2 * (n + 1)) + A239712 (2 * n + 5)).toNat

end

end A090270.P14965113274284283865

/-! ## A090270.P2641425188136571654

`A324046(xor(A061579(n), A186063(n+1)))`
-/

namespace A090270.P2641425188136571654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324046 (Int.xor (A061579 n) (A186063 (n + 1))).toNat

end

end A090270.P2641425188136571654

/-!
# A090271: Palindromes in A090272.

The programs for A090271, there is no canonical definition to state claims against.
-/

/-! ## A090271.P13718826403200550624

`A090272(A084749(n+2))`
-/

namespace A090271.P13718826403200550624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090272 (A084749 (n + 2)).toNat

end

end A090271.P13718826403200550624

/-! ## A090271.P10121040146508550250

`A090272(lcm(A105540(n+3), A266645(n+1)))`
-/

namespace A090271.P10121040146508550250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090272 (Int.lcm (A105540 (n + 3)) (A266645 (n + 1)))

end

end A090271.P10121040146508550250

/-! ## A090271.P13719181802062367318

`A000027(A090272(n+1))`
-/

namespace A090271.P13719181802062367318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A090272 (n + 1)).toNat

end

end A090271.P13719181802062367318

/-!
# A090273: Numbers with a palindromic digital product.

The programs for A090273, there is no canonical definition to state claims against.
-/

/-! ## A090273.P12680196784299805112

`eq[0, A064834(A007954(n))]`
-/

namespace A090273.P12680196784299805112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090273.P12680196784299805112

/-! ## A090273.P10235548725701303162

`eq[A050782(A007954(n)), A168046(n)]`
-/

namespace A090273.P10235548725701303162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090273.P10235548725701303162

/-! ## A090273.P2161386871917011116

`lt[A031346(n), A053669(A000040(3*(n+1)))]`
-/

namespace A090273.P2161386871917011116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A000040 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P2161386871917011116

/-! ## A090273.P6710331234726352920

`lt[A031346(n), A181819(A385192(n+1))]`
-/

namespace A090273.P6710331234726352920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A385192 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P6710331234726352920

/-! ## A090273.P1023709042478989550

`lt[A007954(n), A137580(A106856(n+1))]`
-/

namespace A090273.P1023709042478989550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137580 (A106856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P1023709042478989550

/-! ## A090273.P14153178817162728231

`lt[A031346(n), A000005(A065720(3*n+5))]`
-/

namespace A090273.P14153178817162728231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065720 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P14153178817162728231

/-! ## A090273.P8296639616411183082

`lt[A031346(n), A020639((n+1)*(n+6))]`
-/

namespace A090273.P8296639616411183082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P8296639616411183082

/-! ## A090273.P9145385655149135986

`eq[A329340(A007954(n)), A329379(2*n+1)]`
-/

namespace A090273.P9145385655149135986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329379 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090273.P9145385655149135986

/-! ## A090273.P11220800550836183469

`lt[A031346(n), A000005(A028916(3*n+1))]`
-/

namespace A090273.P11220800550836183469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028916 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P11220800550836183469

/-! ## A090273.P7304532352291647786

`lt[A051801(n), A040021(A290095(n))]`
-/

namespace A090273.P7304532352291647786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 (A290095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090273.P7304532352291647786

/-!
# A090274: Numbers with a nonzero palindromic digital product (contains no zeros).

The programs for A090274, there is no canonical definition to state claims against.
-/

/-! ## A090274.P11968105282705973877

`eq[1, A050782(abs(A187844(n)))]`
-/

namespace A090274.P11968105282705973877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090274.P11968105282705973877

/-! ## A090274.P3995217224725124613

`∩[A052382(n+1), A090273(n+1)]`
-/

namespace A090274.P3995217224725124613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090274.P3995217224725124613

/-! ## A090274.P5084358207886075950

`eq[1, A050782(A007954(n))]`
-/

namespace A090274.P5084358207886075950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090274.P5084358207886075950

/-! ## A090274.P17592330783322193908

`filter[A090273(n+1), A168046(#)]`
-/

namespace A090274.P17592330783322193908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A090274.P17592330783322193908

/-! ## A090274.P4342753220369711285

`eq[A007954(n), A343681(A051801(n))]`
-/

namespace A090274.P4342753220369711285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090274.P4342753220369711285

/-! ## A090274.P14728735283138635327

`lt[A059995(A380873(n)), A061762(n)]`
-/

namespace A090274.P14728735283138635327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A380873 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090274.P14728735283138635327

/-!
# A090277: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 1 of n-th permutation.

The programs for A090277, there is no canonical definition to state claims against.
-/

/-! ## A090277.P3603082611143189734

`A090278((-1)^n+n+1)`
-/

namespace A090277.P3603082611143189734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090278 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A090277.P3603082611143189734

/-!
# A090278: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 2 of n-th permutation.

The programs for A090278, there is no canonical definition to state claims against.
-/

/-! ## A090278.P5510619022517908193

`A090277((-1)^n+n+1)`
-/

namespace A090278.P5510619022517908193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090277 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A090278.P5510619022517908193

/-!
# A090279: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 3 of n-th permutation.

The programs for A090279, there is no canonical definition to state claims against.
-/

/-! ## A090279.P7689958556612096670

`A090280(xor(1, n)+1)`
-/

namespace A090279.P7689958556612096670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090280 (Nat.xor 1 n + 1)

end

end A090279.P7689958556612096670

/-!
# A090280: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 4 of n-th permutation.

The programs for A090280, there is no canonical definition to state claims against.
-/

/-! ## A090280.P10088390901482927894

`A090279((-1)^n+n+1)`
-/

namespace A090280.P10088390901482927894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090279 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A090280.P10088390901482927894

/-!
# A090281: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), ... which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 1 (the treble bell) in n-th permutation.

The programs for A090281, the canonical program `A090281.P2798625818919084146` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090281 has offset 1).

The definition of A090281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090281.P2798625818919084146

`ogf((1+x+x^2+x^3+x^4)/(1-x+x^4-x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090281

/-- `ogf((1+x+x^2+x^3+x^4)/(1-x+x^4-x^5))` -/
def P2798625818919084146.Spec : Prop :=
  ∀ n, P2798625818919084146.a n = A090281 (n + 1)

theorem P2798625818919084146.correct : P2798625818919084146.Spec := by
  intro n
  simp only [A090281, Nat.add_sub_cancel]

end A090281

/-!
# A090282: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 2 in n-th permutation.

The programs for A090282, there is no canonical definition to state claims against.
-/

/-! ## A090282.P5328912703587411521

`A090283(n+9)`
-/

namespace A090282.P5328912703587411521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090283 (n + 9)

end

end A090282.P5328912703587411521

/-!
# A090283: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 3 in n-th permutation.

The programs for A090283, there is no canonical definition to state claims against.
-/

/-! ## A090283.P3127106528242911727

`A090284(n+9)`
-/

namespace A090283.P3127106528242911727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090284 (n + 9)

end

end A090283.P3127106528242911727

/-!
# A090284: "Plain Bob Minimus" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(2,1,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 4 (the tenor bell) in n-th permutation.

The programs for A090284, there is no canonical definition to state claims against.
-/

/-! ## A090284.P3341595712284431940

`A090282(n+9)`
-/

namespace A090284.P3341595712284431940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090282 (n + 9)

end

end A090284.P3341595712284431940

/-!
# A090285: Triangle T(n,k), 0<=k<=n, read by rows, defined by: T(n,k)=0 if k>n, T(n,0) = A000108(n); T(n+1,k)= Sum_{j=0..n} T(n-j,k-1)*binomial(2j+1,j+1).

The programs for A090285, there is no canonical definition to state claims against.
-/

/-! ## A090285.P8208465051983407057

`2*A116395(n)-A035324(n+1)`
-/

namespace A090285.P8208465051983407057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116395 n - A035324 (n + 1)

end

end A090285.P8208465051983407057

/-! ## A090285.P10546411847665978144

`A004277(A116395(n))-A035324(n+1)`
-/

namespace A090285.P10546411847665978144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A116395 n).toNat - A035324 (n + 1)

end

end A090285.P10546411847665978144

/-! ## A090285.P3085521673098807639

`A004277(A116395(n))-A075435(n+2)/(2*A059268(n))`
-/

namespace A090285.P3085521673098807639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A116395 n).toNat : ℚ) - (A075435 (n + 2) : ℚ) / (2 * A059268 n : ℚ)

end

end A090285.P3085521673098807639

/-!
# A090286: Median term of prime 5-tuples (p, p+2, p+6, p+8, p+12).

The programs for A090286, there is no canonical definition to state claims against.
-/

/-! ## A090286.P4903406522435046204

`A022006(n+1)+6`
-/

namespace A090286.P4903406522435046204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1) + 6

end

end A090286.P4903406522435046204

/-! ## A090286.P18341601874394351559

`A245304(n+1)+7`
-/

namespace A090286.P18341601874394351559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245304 (n + 1) + 7

end

end A090286.P18341601874394351559

/-! ## A090286.P15175544852858654709

`or(1, A245304(ϕ²-(ϕ-n)))-(4/2-8)`
-/

namespace A090286.P15175544852858654709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A245304 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) : ℚ) - ((4 : ℚ) / 2 - 8)

end

end A090286.P15175544852858654709

/-! ## A090286.P13367400785651969188

`∩[A007530(n+1), A086140(n+1)]+6`
-/

namespace A090286.P13367400785651969188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 6

end

end A090286.P13367400785651969188

/-! ## A090286.P1925513444880220957

`A270998(5*n+3)`
-/

namespace A090286.P1925513444880220957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (5 * n + 3)

end

end A090286.P1925513444880220957

/-! ## A090286.P17202631772964785667

`A270998(A016897(n))-2`
-/

namespace A090286.P17202631772964785667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (A016897 n).toNat - 2

end

end A090286.P17202631772964785667

/-! ## A090286.P13712986036729785263

`A270998(A016873(n))+4`
-/

namespace A090286.P13712986036729785263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (A016873 n).toNat + 4

end

end A090286.P13712986036729785263

/-! ## A090286.P1370343023265486728

`A270998(A016861(n))+6`
-/

namespace A090286.P1370343023265486728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (A016861 n).toNat + 6

end

end A090286.P1370343023265486728

/-! ## A090286.P11656994790481642415

`or(1, A270998(A016885(n)))`
-/

namespace A090286.P11656994790481642415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270998 (A016885 n).toNat)

end

end A090286.P11656994790481642415

/-! ## A090286.P6264350454924718255

`A270998(Δ[A000566(n)])+6`
-/

namespace A090286.P6264350454924718255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (f1 (n + 1) - f1 n).toNat + 6

end

end A090286.P6264350454924718255

/-! ## A090286.P14026742604816340828

`A270998(A016885(n)+1)-2`
-/

namespace A090286.P14026742604816340828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (A016885 n + 1).toNat - 2

end

end A090286.P14026742604816340828

/-! ## A090286.P9507740149263130957

`A270998(A008587(n)+1)+6`
-/

namespace A090286.P9507740149263130957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (A008587 n + 1).toNat + 6

end

end A090286.P9507740149263130957

/-! ## A090286.P4917566261838435244

`∩[A022004(n+1), A098412(n+1)]`
-/

namespace A090286.P4917566261838435244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P4917566261838435244

/-! ## A090286.P3331211247323226026

`∩[A022004(n+1), A136721(n+1)]`
-/

namespace A090286.P3331211247323226026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P3331211247323226026

/-! ## A090286.P17996026650185063596

`∩[A136721(n+1), A341357(n+1)]`
-/

namespace A090286.P17996026650185063596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P17996026650185063596

/-! ## A090286.P4983574147627611273

`∩[A006489(n+1), A073649(n+1)]`
-/

namespace A090286.P4983574147627611273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P4983574147627611273

/-! ## A090286.P14534021540907489286

`∩[A007529(n+1), A098412(n+1)]`
-/

namespace A090286.P14534021540907489286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P14534021540907489286

/-! ## A090286.P15865661091486134526

`∩[A022004(n+1), A098415(n+1)]`
-/

namespace A090286.P15865661091486134526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P15865661091486134526

/-! ## A090286.P2835539137922810287

`∩[A006489(n+1), A136721(n+1)]`
-/

namespace A090286.P2835539137922810287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P2835539137922810287

/-! ## A090286.P12006566050749243819

`∩[A007529(n+1), A136721(n+1)]`
-/

namespace A090286.P12006566050749243819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090286.P12006566050749243819

/-!
# A090287: Smallest prime obtained by sandwiching n between a number with identical digits, or 0 if no such prime exists. Primes of the form k n k where all the digits of k are identical.

The programs for A090287, there is no canonical definition to state claims against.
-/

/-! ## A090287.P8859180776772593136

`A205406(A252942(n))`
-/

namespace A090287.P8859180776772593136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 (A252942 n).toNat

end

end A090287.P8859180776772593136

/-! ## A090287.P544157050905039532

`A252942(n^A290298(n))`
-/

namespace A090287.P544157050905039532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252942 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A290298 n : ℤ))).toNat

end

end A090287.P544157050905039532

/-!
# A090288: a(n) = 2*n^2 + 6*n + 2.

The programs for A090288, the canonical program `A090288.P18129157653264208824` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090288 has offset 0).

The definition of A090288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+6*n+2` (program `A090288.P18129157653264208824`, by `A090288.P18129157653264208824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090288.P7376801590553538105

`ogf((2+4x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A090288.P7376801590553538105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -2] [1, -3, 3, -1] n

end

end A090288.P7376801590553538105

namespace A090288

/-- `ogf((2+4x-2x^2)/(1-3x+3x^2-x^3))` -/
def P7376801590553538105.Spec : Prop :=
  ∀ n, P7376801590553538105.a n = A090288 n

end A090288

/-! ## A090288.P13359896290858814907

`2*(1+3*n+n²)`
-/

namespace A090288.P13359896290858814907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + 3 * n + n ^ 2)

end

end A090288.P13359896290858814907

namespace A090288

/-- `2*(1+3*n+n²)` -/
def P13359896290858814907.Spec : Prop :=
  ∀ n, (P13359896290858814907.a n : ℤ) = A090288 n

theorem P13359896290858814907.correct : P13359896290858814907.Spec := by
  intro n
  simp only [A090288, Nat.add_sub_cancel, A090288.P13359896290858814907.a, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A090288

/-! ## A090288.P18129157653264208824

`2*n²+6*n+2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090288

/-- `2*n²+6*n+2` -/
def P18129157653264208824.Spec : Prop :=
  ∀ n, (P18129157653264208824.a n : ℤ) = A090288 n

theorem P18129157653264208824.correct : P18129157653264208824.Spec := by
  intro n
  simp only [A090288]

end A090288

/-! ## A090288.P690369613536993438

`lcm(2, (n+1)²+n)`
-/

namespace A090288.P690369613536993438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2 + n)

end

end A090288.P690369613536993438

namespace A090288

/-- `lcm(2, (n+1)²+n)` -/
def P690369613536993438.Spec : Prop :=
  ∀ n, (P690369613536993438.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P8067110473649643955

`or(2, 4*(∑[n]+n))`
-/

namespace A090288.P8067110473649643955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A090288.P8067110473649643955

namespace A090288

/-- `or(2, 4*(∑[n]+n))` -/
def P8067110473649643955.Spec : Prop :=
  ∀ n, (P8067110473649643955.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P2370144138658666934

`xor(2, 4*(∑[n]+n))`
-/

namespace A090288.P2370144138658666934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A090288.P2370144138658666934

namespace A090288

/-- `xor(2, 4*(∑[n]+n))` -/
def P2370144138658666934.Spec : Prop :=
  ∀ n, (P2370144138658666934.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P2156966774921398880

`∑[a(n-1)+4]` with `a(0)=2, a(1)=8`
-/

namespace A090288.P2156966774921398880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090288.P2156966774921398880

namespace A090288

/-- `∑[a(n-1)+4]` -/
def P2156966774921398880.Spec : Prop :=
  ∀ n, (P2156966774921398880.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P4690674002157687047

`2*or(1, n*(n+3))`
-/

namespace A090288.P4690674002157687047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 (n * (n + 3))

end

end A090288.P4690674002157687047

namespace A090288

/-- `2*or(1, n*(n+3))` -/
def P4690674002157687047.Spec : Prop :=
  ∀ n, (P4690674002157687047.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P667595018813190369

`2*xor(1, n*(n+3))`
-/

namespace A090288.P667595018813190369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (n * (n + 3))

end

end A090288.P667595018813190369

namespace A090288

/-- `2*xor(1, n*(n+3))` -/
def P667595018813190369.Spec : Prop :=
  ∀ n, (P667595018813190369.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P17435849378998903424

`2*(record[(n-1)²]+n)`
-/

namespace A090288.P17435849378998903424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A090288.P17435849378998903424

namespace A090288

/-- `2*(record[(n-1)²]+n)` -/
def P17435849378998903424.Spec : Prop :=
  ∀ n, P17435849378998903424.a n = A090288 n

end A090288

/-! ## A090288.P15863353352677666650

`record[2*((1-n)²-n)]`
-/

namespace A090288.P15863353352677666650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((1 - (n : ℤ)) ^ 2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090288.P15863353352677666650

namespace A090288

/-- `record[2*((1-n)²-n)]` -/
def P15863353352677666650.Spec : Prop :=
  ∀ n, P15863353352677666650.a n = A090288 n

end A090288

/-! ## A090288.P17814266292304772215

`∑[record[xor(3, n+1)]]+n`
-/

namespace A090288.P17814266292304772215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A090288.P17814266292304772215

namespace A090288

/-- `∑[record[xor(3, n+1)]]+n` -/
def P17814266292304772215.Spec : Prop :=
  ∀ n, (P17814266292304772215.a n : ℤ) = A090288 n

end A090288

/-! ## A090288.P16999113413802642953

`∑[ogf((2+4x-2x^2)/(1-2x+x^2))]`
-/

namespace A090288.P16999113413802642953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090288.P16999113413802642953

namespace A090288

/-- `∑[ogf((2+4x-2x^2)/(1-2x+x^2))]` -/
def P16999113413802642953.Spec : Prop :=
  ∀ n, P16999113413802642953.a n = A090288 n

end A090288

/-! ## A090288.P594625297608385049

`abs(2-4*C(n+2, 2))`
-/

namespace A090288.P594625297608385049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (4 * Nat.choose (n + 2) 2 : ℤ)|

end

end A090288.P594625297608385049

namespace A090288

/-- `abs(2-4*C(n+2, 2))` -/
def P594625297608385049.Spec : Prop :=
  ∀ n, P594625297608385049.a n = A090288 n

end A090288

/-! ## A090288.P3864954239817516145

`floor(2/acot((n+1)²+n))`
-/

namespace A090288.P3864954239817516145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((n + 1) ^ 2 + n : ℝ)⌋

end

end A090288.P3864954239817516145

namespace A090288

/-- `floor(2/acot((n+1)²+n))` -/
def P3864954239817516145.Spec : Prop :=
  ∀ n, P3864954239817516145.a n = A090288 n

end A090288

/-! ## A090288.P6662487692028051670

`2/tan(acot((n+1)²+n))`
-/

namespace A090288.P6662487692028051670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot ((n + 1) ^ 2 + n : ℝ))

end

end A090288.P6662487692028051670

namespace A090288

/-- `2/tan(acot((n+1)²+n))` -/
def P6662487692028051670.Spec : Prop :=
  ∀ n, P6662487692028051670.a n = (A090288 n : ℝ)

end A090288

/-! ## A090288.P7055450251244552418

`((n+1)²+n)/cot(atan(2))`
-/

namespace A090288.P7055450251244552418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A090288.P7055450251244552418

namespace A090288

/-- `((n+1)²+n)/cot(atan(2))` -/
def P7055450251244552418.Spec : Prop :=
  ∀ n, P7055450251244552418.a n = (A090288 n : ℝ)

end A090288

/-! ## A090288.P13711356751588853703

`round(2*n/acot(n+3)+ϕ)`
-/

namespace A090288.P13711356751588853703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + Real.goldenRatio)

end

end A090288.P13711356751588853703

namespace A090288

/-- `round(2*n/acot(n+3)+ϕ)` -/
def P13711356751588853703.Spec : Prop :=
  ∀ n, P13711356751588853703.a n = A090288 n

end A090288

/-! ## A090288.P1545151456575940468

`and((n+3)*2*n+2, -2)`
-/

namespace A090288.P1545151456575940468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 3) * (2 * n) + 2 : ℤ) (-2)

end

end A090288.P1545151456575940468

namespace A090288

/-- `and((n+3)*2*n+2, -2)` -/
def P1545151456575940468.Spec : Prop :=
  ∀ n, P1545151456575940468.a n = A090288 n

end A090288

/-! ## A090288.P1370292409191086240

`abs(a(n-1)+4*(n+1))` with `a(0)=2`
-/

namespace A090288.P1370292409191086240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 4 * (n + 1)

end

end A090288.P1370292409191086240

namespace A090288

/-- `abs(a(n-1)+4*(n+1))` -/
def P1370292409191086240.Spec : Prop :=
  ∀ n, (P1370292409191086240.a n : ℤ) = A090288 n

theorem P1370292409191086240.correct : P1370292409191086240.Spec := by
  intro n
  induction n with
  | zero => simp [A090288, A090288.P1370292409191086240.a, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A090288, Nat.add_sub_cancel, A090288.P1370292409191086240.a, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A090288

/-!
# A090290: Value of k pertaining to A090289, or 0 if A090289(n) = 0.

The programs for A090290, there is no canonical definition to state claims against.
-/

/-! ## A090290.P5765935419404537106

`A048766(A000720(n+1)*A048766(A090289(n+2)))`
-/

namespace A090290.P5765935419404537106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000720 (n + 1) * A048766 (A090289 (n + 2)).toNat).toNat

end

end A090290.P5765935419404537106

/-! ## A090290.P6515654147273580029

`A273846(n+1)+A064911(A068911(n))`
-/

namespace A090290.P6515654147273580029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273846 (n + 1) + A064911 (A068911 n).toNat

end

end A090290.P6515654147273580029

/-! ## A090290.P9699849031933084937

`A273846(n+1)+A064911(A019505(n+1))`
-/

namespace A090290.P9699849031933084937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273846 (n + 1) + A064911 (A019505 (n + 1)).toNat

end

end A090290.P9699849031933084937

/-! ## A090290.P7318824724825359038

`A273846(n+1)+A064911(A108951(n+1))`
-/

namespace A090290.P7318824724825359038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273846 (n + 1) + A064911 (A108951 (n + 1)).toNat

end

end A090290.P7318824724825359038

/-!
# A090292: Least square k^2 > n^2 whose decimal expansion ends in n^2.

The programs for A090292, there is no canonical definition to state claims against.
-/

/-! ## A090292.P13865027654882642570

`A090293(n)²`
-/

namespace A090292.P13865027654882642570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090293 n ^ 2

end

end A090292.P13865027654882642570

/-! ## A090292.P5003283392181625784

`A090293(n)^A020639(2*(n+1))`
-/

namespace A090292.P5003283392181625784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A090292.P5003283392181625784

/-! ## A090292.P2041371660929573066

`A090293(n)^A001316(A001316(n))`
-/

namespace A090292.P2041371660929573066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A090292.P2041371660929573066

/-! ## A090292.P6464822193747962041

`A090293(n)^A000005(A076973(n+1))`
-/

namespace A090292.P6464822193747962041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A000005 (A076973 (n + 1)).toNat : ℤ)

end

end A090292.P6464822193747962041

/-! ## A090292.P13532612499994651345

`A090293(n)^A000005(A308340(n+1))`
-/

namespace A090292.P13532612499994651345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A000005 (A308340 (n + 1)).toNat : ℤ)

end

end A090292.P13532612499994651345

/-! ## A090292.P5310826375960806632

`A090293(n)*A090293(n%A090293(n))`
-/

namespace A090292.P5310826375960806632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090293 n * A090293 (Int.tmod (n : ℤ) (A090293 n)).toNat

end

end A090292.P5310826375960806632

/-! ## A090292.P16036119949490687272

`lcm(A020985(n), A090293(n))*A090293(n)`
-/

namespace A090292.P16036119949490687272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A090293 n) : ℤ) * A090293 n

end

end A090292.P16036119949490687272

/-! ## A090292.P14258233462227971126

`A090293(or(n, A000035(n)))*A090293(n)`
-/

namespace A090292.P14258233462227971126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090293 (Int.lor (n : ℤ) (A000035 n)).toNat * A090293 n

end

end A090292.P14258233462227971126

/-! ## A090292.P2021140483822846157

`A090293(n)^A120380(A120380(C(n, n+1)))`
-/

namespace A090292.P2021140483822846157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A120380 (A120380 (Nat.choose n (n + 1))).toNat : ℤ)

end

end A090292.P2021140483822846157

/-! ## A090292.P2151874584883123412

`A090293(n)^A000034(2*n+1)`
-/

namespace A090292.P2151874584883123412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A090292.P2151874584883123412

/-! ## A090292.P14993523452835001111

`A090293(n)^A000005(A029743(n+1))`
-/

namespace A090292.P14993523452835001111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A000005 (A029743 (n + 1)).toNat : ℤ)

end

end A090292.P14993523452835001111

/-! ## A090292.P17700497916242082100

`A090293(n)^A000005(A243461(n+1))`
-/

namespace A090292.P17700497916242082100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090293 n : ℚ) ^ (A000005 (A243461 (n + 1)).toNat : ℤ)

end

end A090292.P17700497916242082100

/-!
# A090293: Least k > n such that the decimal expansion of k^2 ends in n^2.

The programs for A090293, there is no canonical definition to state claims against.
-/

/-! ## A090293.P10471721565853227286

`A090292(n)^(1/2)`
-/

namespace A090293.P10471721565853227286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090292 n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A090293.P10471721565853227286

/-! ## A090293.P9844539723830673864

`sqrt(A090292(n))`
-/

namespace A090293.P9844539723830673864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A090292 n : ℝ)

end

end A090293.P9844539723830673864

/-! ## A090293.P16202571919112440134

`root(A090292(n), lcm(2, A020985(n)))`
-/

namespace A090293.P16202571919112440134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090292 n : ℝ) ^ (1 / (Int.lcm 2 (A020985 n) : ℝ))

end

end A090293.P16202571919112440134

/-! ## A090293.P14275482622984795313

`root(A090292(n), A001316(A001316(n)))`
-/

namespace A090293.P14275482622984795313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090292 n : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A090293.P14275482622984795313

/-! ## A090293.P14653990235272115740

`root(A090292(n), A133265(A133265(n)))`
-/

namespace A090293.P14653990235272115740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090292 n : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A090293.P14653990235272115740

/-! ## A090293.P16999688533287634270

`root(A090292(n), A000034(2*n+1))`
-/

namespace A090293.P16999688533287634270
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A090292 n : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A090293.P16999688533287634270

/-!
# A090294: a(n) = K_3(n) = Sum_{k>=0} A090285(3,k)*2^k*binomial(n,k). a(n) = (4*n^3+30*n^2+56*n+15)/3.

The programs for A090294, the canonical program `A090294.P12427730223927020637` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090294 has offset 0).

The definition of A090294 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A090294.anchor (n : ℕ) : (A090294 n : ℚ) = (4 * n ^ 3 + 30 * n ^ 2 + 56 * n + 15 : ℚ) / 3` in `Proof.A090.A090294`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090294.P12427730223927020637

`(4*n^3+30*n²+56*n+15)/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090294

/-- `(4*n^3+30*n²+56*n+15)/3` -/
def P12427730223927020637.Spec : Prop :=
  ∀ n, P12427730223927020637.a n = (A090294 n : ℚ)

end A090294

/-! ## A090294.P14714604858229571033

`Δ[(n-1)*∑[lcm(n+2, n+3)-1]]`
-/

namespace A090294.P14714604858229571033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n + 3) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090294.P14714604858229571033

namespace A090294

/-- `Δ[(n-1)*∑[lcm(n+2, n+3)-1]]` -/
def P14714604858229571033.Spec : Prop :=
  ∀ n, P14714604858229571033.a n = A090294 n

end A090294

/-! ## A090294.P14646993729945939775

`A323218(n)+2*(n+2)`
-/

namespace A090294.P14646993729945939775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323218 n + (2 * (n + 2) : ℤ)

end

end A090294.P14646993729945939775

namespace A090294

/-- `A323218(n)+2*(n+2)` -/
def P14646993729945939775.Spec : Prop :=
  ∀ n, P14646993729945939775.a n = A090294 n

end A090294

/-! ## A090294.P12637428784715426153

`A005899(n+2)-A400968(n+3)`
-/

namespace A090294.P12637428784715426153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 (n + 2) - A400968 (n + 3)

end

end A090294.P12637428784715426153

namespace A090294

/-- `A005899(n+2)-A400968(n+3)` -/
def P12637428784715426153.Spec : Prop :=
  ∀ n, P12637428784715426153.a n = A090294 n

end A090294

/-! ## A090294.P9868467610716789776

`A001845(n+2)-4*(A005843(n)+5)`
-/

namespace A090294.P9868467610716789776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 2) - 4 * (A005843 n + 5)

end

end A090294.P9868467610716789776

namespace A090294

/-- `A001845(n+2)-4*(A005843(n)+5)` -/
def P9868467610716789776.Spec : Prop :=
  ∀ n, P9868467610716789776.a n = A090294 n

end A090294

/-! ## A090294.P558465461832271278

`A001845(n+2)-Δ[A005843(n+2)²]`
-/

namespace A090294.P558465461832271278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 2) - (f1 (n + 1) - f1 n)

end

end A090294.P558465461832271278

namespace A090294

/-- `A001845(n+2)-Δ[A005843(n+2)²]` -/
def P558465461832271278.Spec : Prop :=
  ∀ n, P558465461832271278.a n = A090294 n

end A090294

/-! ## A090294.P1137108853126839504

`A111396(2*n)+5`
-/

namespace A090294.P1137108853126839504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (2 * n) + 5

end

end A090294.P1137108853126839504

namespace A090294

/-- `A111396(2*n)+5` -/
def P1137108853126839504.Spec : Prop :=
  ∀ n, P1137108853126839504.a n = A090294 n

end A090294

/-! ## A090294.P14058068032511932147

`A034857(2*(n+1))-1`
-/

namespace A090294.P14058068032511932147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (2 * (n + 1)) - 1

end

end A090294.P14058068032511932147

namespace A090294

/-- `A034857(2*(n+1))-1` -/
def P14058068032511932147.Spec : Prop :=
  ∀ n, P14058068032511932147.a n = A090294 n

end A090294

/-! ## A090294.P1750925275292734667

`A006416(2*n+3)-3`
-/

namespace A090294.P1750925275292734667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (2 * n + 3) - 3

end

end A090294.P1750925275292734667

namespace A090294

/-- `A006416(2*n+3)-3` -/
def P1750925275292734667.Spec : Prop :=
  ∀ n, P1750925275292734667.a n = A090294 n

end A090294

/-! ## A090294.P4986210541202604160

`A055831(2*(n+2))+4*n`
-/

namespace A090294.P4986210541202604160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (2 * (n + 2)) + (4 * n : ℤ)

end

end A090294.P4986210541202604160

namespace A090294

/-- `A055831(2*(n+2))+4*n` -/
def P4986210541202604160.Spec : Prop :=
  ∀ n, P4986210541202604160.a n = A090294 n

end A090294

/-! ## A090294.P15628236273727512035

`A264443(2*n)+2*n+5`
-/

namespace A090294.P15628236273727512035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (2 * n) + (2 * n + 5 : ℤ)

end

end A090294.P15628236273727512035

namespace A090294

/-- `A264443(2*n)+2*n+5` -/
def P15628236273727512035.Spec : Prop :=
  ∀ n, P15628236273727512035.a n = A090294 n

end A090294

/-! ## A090294.P44898809021644245

`A023545(Δ[n²])+2*n-1`
-/

namespace A090294.P44898809021644245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((2 * n : ℤ) - 1)

end

end A090294.P44898809021644245

namespace A090294

/-- `A023545(Δ[n²])+2*n-1` -/
def P44898809021644245.Spec : Prop :=
  ∀ n, P44898809021644245.a n = A090294 n

end A090294

/-! ## A090294.P17585595585113675348

`A323221(2*n+1)-2*(n+2)`
-/

namespace A090294.P17585595585113675348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 (2 * n + 1) - (2 * (n + 2) : ℤ)

end

end A090294.P17585595585113675348

namespace A090294

/-- `A323221(2*n+1)-2*(n+2)` -/
def P17585595585113675348.Spec : Prop :=
  ∀ n, P17585595585113675348.a n = A090294 n

end A090294

/-! ## A090294.P16177175324334630681

`A005586(2*n+1)+n*(2*n+5)`
-/

namespace A090294.P16177175324334630681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (2 * n + 1) + (n * (2 * n + 5) : ℤ)

end

end A090294.P16177175324334630681

namespace A090294

/-- `A005586(2*n+1)+n*(2*n+5)` -/
def P16177175324334630681.Spec : Prop :=
  ∀ n, P16177175324334630681.a n = A090294 n

end A090294

/-! ## A090294.P8580739495855152862

`A028552(2*(n+1))+a(n-1)+n+n` with `a(0)=5`
-/

namespace A090294.P8580739495855152862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A028552 (2 * (n + 1)) + (a (n - 1) + (n : ℤ) + (n : ℤ))

end

end A090294.P8580739495855152862

namespace A090294

/-- `A028552(2*(n+1))+a(n-1)+n+n` -/
def P8580739495855152862.Spec : Prop :=
  ∀ n, P8580739495855152862.a n = A090294 n

end A090294

/-! ## A090294.P16780410556821936754

`A055998(2*n)+A005586(2*n+1)`
-/

namespace A090294.P16780410556821936754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (2 * n) + A005586 (2 * n + 1)

end

end A090294.P16780410556821936754

namespace A090294

/-- `A055998(2*n)+A005586(2*n+1)` -/
def P16780410556821936754.Spec : Prop :=
  ∀ n, P16780410556821936754.a n = A090294 n

end A090294

/-! ## A090294.P9920430804998179919

`A055999(2*n)+A008778(2*n+1)`
-/

namespace A090294.P9920430804998179919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (2 * n) + A008778 (2 * n + 1)

end

end A090294.P9920430804998179919

namespace A090294

/-- `A055999(2*n)+A008778(2*n+1)` -/
def P9920430804998179919.Spec : Prop :=
  ∀ n, P9920430804998179919.a n = A090294 n

end A090294

/-! ## A090294.P1884558638970884632

`A055999(2*n)+∑[A028347(2*n+3)]`
-/

namespace A090294.P1884558638970884632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090294.P1884558638970884632

namespace A090294

/-- `A055999(2*n)+∑[A028347(2*n+3)]` -/
def P1884558638970884632.Spec : Prop :=
  ∀ n, P1884558638970884632.a n = A090294 n

end A090294

/-!
# A090296: a(n) = K_4(n) = Sum_{k>=0} A090285(4,k)*2^k*binomial(n,k). a(n) = 2*(n^4+14*n^3+62*n^2+91*n+21)/3.

The programs for A090296, the canonical program `A090296.P8610668846866085165` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090296 has offset 0).

The definition of A090296 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A090296.anchor (n : ℕ) : (A090296 n : ℚ) = (2 * (n ^ 4 + 14 * n ^ 3 + 62 * n ^ 2 + 91 * n + 21) : ℚ) / 3` in `Proof.A090.A090296`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090296.P8610668846866085165

`2*(n^4+14*n^3+62*n²+91*n+21)/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090296

/-- `2*(n^4+14*n^3+62*n²+91*n+21)/3` -/
def P8610668846866085165.Spec : Prop :=
  ∀ n, P8610668846866085165.a n = (A090296 n : ℚ)

end A090296

/-!
# A090297: a(n) = K_5(n) = Sum_{k>=0} A090285(5,k)*2^k*binomial(n,k). a(n) = 2*(2*n^5+45*n^4+360*n^3+1215*n^2+1528*n+315)/15.

The programs for A090297, there is no canonical definition to state claims against.
-/

/-! ## A090297.P7134027642465528394

`A090299(A055999(n+3))`
-/

namespace A090297.P7134027642465528394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090299 (A055999 (n + 3)).toNat

end

end A090297.P7134027642465528394

/-!
# A090299: Table T(n,k), n>=0 and k>=0, read by antidiagonals : the k-th column given by the k-th polynomial K_k related to A090285.

The programs for A090299, there is no canonical definition to state claims against.
-/

/-! ## A090299.P13873708613334429370

`A039599(n)+A001222(A069777(n)!)`
-/

namespace A090299.P13873708613334429370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 n + A001222 (Nat.factorial (A069777 n).toNat)

end

end A090299.P13873708613334429370

/-! ## A090299.P8460541036555180546

`A347411(A248830(n))+A172381(n)`
-/

namespace A090299.P8460541036555180546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347411 (A248830 n).toNat + A172381 n

end

end A090299.P8460541036555180546

/-! ## A090299.P8908971733549426547

`A060693(n)-A006927(A013609(n))`
-/

namespace A090299.P8908971733549426547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 n - A006927 (A013609 n).toNat

end

end A090299.P8908971733549426547

/-! ## A090299.P4115826556545477870

`A060693(n)-A016371(A027379(n))`
-/

namespace A090299.P4115826556545477870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 n - A016371 (A027379 n).toNat

end

end A090299.P4115826556545477870

/-! ## A090299.P16117481776797173642

`A060693(n)-A077655(A052545(n))`
-/

namespace A090299.P16117481776797173642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 n - A077655 (A052545 n).toNat

end

end A090299.P16117481776797173642

