import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

/-!
# A218600: Partial sums of A213709.

The programs for A218600, there is no canonical definition to state claims against.
-/

/-! ## A218600.P7539771331073016279

`A213710(n)-1`
-/

namespace A218600.P7539771331073016279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213710 n - 1

end

end A218600.P7539771331073016279

/-! ## A218600.P13808462314752057018

`∑[A213709(abs(1-n))]-1`
-/

namespace A218600.P13808462314752057018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A218600.P13808462314752057018

/-! ## A218600.P17454372769329681446

`A213709(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A218600.P17454372769329681446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A213709 (n - 1) + a (n - 1)

end

end A218600.P17454372769329681446

/-! ## A218600.P6837244773896770233

`A260196(n+2)+A213710(n)`
-/

namespace A218600.P6837244773896770233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A213710 n

end

end A218600.P6837244773896770233

/-! ## A218600.P15626435251554291519

`A280193(Δ[n²])+A213710(n)`
-/

namespace A218600.P15626435251554291519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A213710 n

end

end A218600.P15626435251554291519

/-!
# A218601: After the first zero, integers from 0 to A213709(n)-1 followed by integers from 0 to A213709(n+1)-1, etc.

The programs for A218601, the canonical program `A218601.P8037354091719983160` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218601 has offset 0).

The definition of A218601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218601.P14586400042732542495

`A218599(A218602(n))`
-/

namespace A218601.P14586400042732542495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218599 (A218602 n).toNat

end

end A218601.P14586400042732542495

namespace A218601

/-- `A218599(A218602(n))` -/
def P14586400042732542495.Spec : Prop :=
  ∀ n, P14586400042732542495.a n = A218601 n

end A218601

/-! ## A218601.P8037354091719983160

`n%A213710(∑[char[A213710(n+1)]])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A218601

/-- `n%A213710(∑[char[A213710(n+1)]])` -/
def P8037354091719983160.Spec : Prop :=
  ∀ n, P8037354091719983160.a n = A218601 n

theorem P8037354091719983160.correct : P8037354091719983160.Spec := by
  intro n
  simp only [A218601]

end A218601

/-! ## A218601.P3012430902082808690

`A218599(A071542(A218616(n)))`
-/

namespace A218601.P3012430902082808690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218599 (A071542 (A218616 n).toNat).toNat

end

end A218601.P3012430902082808690

namespace A218601

/-- `A218599(A071542(A218616(n)))` -/
def P3012430902082808690.Spec : Prop :=
  ∀ n, P3012430902082808690.a n = A218601 n

end A218601

/-! ## A218601.P12762114166699587275

`n-A218602(A218600(A213711(n)))`
-/

namespace A218601.P12762114166699587275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A218602 (A218600 (A213711 n).toNat).toNat

end

end A218601.P12762114166699587275

namespace A218601

/-- `n-A218602(A218600(A213711(n)))` -/
def P12762114166699587275.Spec : Prop :=
  ∀ n, P12762114166699587275.a n = A218601 n

end A218601

/-! ## A218601.P218114503793754328

`A218600(A213711(n))-A071542(A218616(n))`
-/

namespace A218601.P218114503793754328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 (A213711 n).toNat - A071542 (A218616 n).toNat

end

end A218601.P218114503793754328

namespace A218601

/-- `A218600(A213711(n))-A071542(A218616(n))` -/
def P218114503793754328.Spec : Prop :=
  ∀ n, P218114503793754328.a n = A218601 n

end A218601

/-!
# A218602: Simple self-inverse permutation of natural numbers: after zero, list each block of A213709(n) numbers in reverse order, from A218600(n) to A213710(n-1).

The programs for A218602, there is no canonical definition to state claims against.
-/

/-! ## A218602.P17564396408701816857

`A218600(A213711(n))-A218601(n)`
-/

namespace A218602.P17564396408701816857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218600 (A213711 n).toNat - A218601 n

end

end A218602.P17564396408701816857

/-! ## A218602.P8760563401523293208

`A071542(A218616(n))`
-/

namespace A218602.P8760563401523293208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A218616 n).toNat

end

end A218602.P8760563401523293208

/-! ## A218602.P4822769518579264990

`A218599(n)+n-A218601(n)`
-/

namespace A218602.P4822769518579264990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218599 n + ((n : ℤ) - A218601 n)

end

end A218602.P4822769518579264990

/-! ## A218602.P5865662636805752259

`A269371(A218616(n)%A000328(n))`
-/

namespace A218602.P5865662636805752259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (Int.tmod (A218616 n) (A000328 n)).toNat

end

end A218602.P5865662636805752259

/-! ## A218602.P1835959503008474190

`A269371(A218616(n))%A001546(n)`
-/

namespace A218602.P1835959503008474190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269371 (A218616 n).toNat) (A001546 n)

end

end A218602.P1835959503008474190

/-! ## A218602.P9827067669108131420

`A269371(or(A025456(n), A218616(n)))`
-/

namespace A218602.P9827067669108131420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (Int.lor (A025456 n) (A218616 n)).toNat

end

end A218602.P9827067669108131420

/-! ## A218602.P17836232545642027410

`A269371(or(A043545(n), A218616(n)))`
-/

namespace A218602.P17836232545642027410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (Int.lor (A043545 n) (A218616 n)).toNat

end

end A218602.P17836232545642027410

/-! ## A218602.P1556814696022317846

`A269371(or(A209229(n), A218616(n)))`
-/

namespace A218602.P1556814696022317846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (Int.lor (A209229 n) (A218616 n)).toNat

end

end A218602.P1556814696022317846

/-!
# A218603: a(n) = A179016(n) - A213708(n).

The programs for A218603, there is no canonical definition to state claims against.
-/

/-! ## A218603.P17842801597541588507

`A179016(n)-A213708(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218603.P17842801597541588507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A213708 n

end

end A218603.P17842801597541588507

/-! ## A218603.P17385450226149905853

`A086876(n)-A218604(n)-1`
-/

namespace A218603.P17385450226149905853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n - A218604 n - 1

end

end A218603.P17385450226149905853

/-! ## A218603.P11336884662167037313

`A173601(n)-(A218604(n)+A213708(n))`
-/

namespace A218603.P11336884662167037313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (A218604 n + A213708 n)

end

end A218603.P11336884662167037313

/-! ## A218603.P11398656094512005355

`(A179016(n)+A086876(n))%(A173601(n)+1)`
-/

namespace A218603.P11398656094512005355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179016 n + A086876 n) (A173601 n + 1)

end

end A218603.P11398656094512005355

/-! ## A218603.P2132742836647706389

`A011371(A213730(n))-A213708(n)`
-/

namespace A218603.P2132742836647706389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A213730 n).toNat - A213708 n

end

end A218603.P2132742836647706389

/-!
# A218604: a(n) = A173601(n) - A179016(n).

The programs for A218604, there is no canonical definition to state claims against.
-/

/-! ## A218604.P10605607156727335390

`A173601(n)-A179016(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218604.P10605607156727335390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A179016 n

end

end A218604.P10605607156727335390

/-! ## A218604.P6938916098407495754

`A086876(n)-A218603(n)-1`
-/

namespace A218604.P6938916098407495754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n - A218603 n - 1

end

end A218604.P6938916098407495754

/-! ## A218604.P1545154287512477046

`A213708(n+1)-(A179016(n)+1)`
-/

namespace A218604.P1545154287512477046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1) - (A179016 n + 1)

end

end A218604.P1545154287512477046

/-! ## A218604.P6806477765640024158

`A173601(n)-(A218603(n)+A213708(n))`
-/

namespace A218604.P6806477765640024158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - (A218603 n + A213708 n)

end

end A218604.P6806477765640024158

/-! ## A218604.P14622848428903661352

`Δ[A179016(n)]-(A218603(n+1)+1)`
-/

namespace A218604.P14622848428903661352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A218603 (n + 1) + 1)

end

end A218604.P14622848428903661352

/-! ## A218604.P16271401336763190543

`A173601(n)-A005187(A213715(n))`
-/

namespace A218604.P16271401336763190543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A005187 (A213715 n).toNat

end

end A218604.P16271401336763190543

/-! ## A218604.P6824036709125985804

`A173601(n)-A011371(A213730(n))`
-/

namespace A218604.P6824036709125985804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A011371 (A213730 n).toNat

end

end A218604.P6824036709125985804

/-!
# A218605: a(n) = A218607(n-1) + 1.

The programs for A218605, there is no canonical definition to state claims against.
-/

/-! ## A218605.P2597494691452202663

`A218607(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218605.P2597494691452202663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218607 n + 1

end

end A218605.P2597494691452202663

/-! ## A218605.P382059424710495216

`1-(A004524(Δ[A004524(n)])-A218607(n))`
-/

namespace A218605.P382059424710495216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A004524 (f1 (n + 1) - f1 n).toNat - A218607 n)

end

end A218605.P382059424710495216

/-! ## A218605.P15171656447409078095

`record[gcd(n+1, A218603(n))]`
-/

namespace A218605.P15171656447409078095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A218603 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P15171656447409078095

/-! ## A218605.P17238745714347546285

`record[(n+1)/A000326(A218603(n)+1)]`
-/

namespace A218605.P17238745714347546285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000326 (A218603 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P17238745714347546285

/-! ## A218605.P12808935722176973918

`record[n+1-A001096(n)*A218603(n)]`
-/

namespace A218605.P12808935722176973918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001096 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P12808935722176973918

/-! ## A218605.P14978391688385882749

`record[n+1-A071542(n*A218603(n))]`
-/

namespace A218605.P14978391688385882749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A071542 ((n : ℤ) * A218603 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P14978391688385882749

/-! ## A218605.P1013499411926072297

`record[n+1-A173601(n)*A218603(n)]`
-/

namespace A218605.P1013499411926072297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A173601 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P1013499411926072297

/-! ## A218605.P3150637475622936524

`record[(n+1)/A005898(A218603(n%(n+1)))]`
-/

namespace A218605.P3150637475622936524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A005898 (A218603 (n % (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218605.P3150637475622936524

/-!
# A218606: a(n) = A218608(n-1) + 1.

The programs for A218606, there is no canonical definition to state claims against.
-/

/-! ## A218606.P5107546915804962530

`A218608(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A218606.P5107546915804962530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218608 n + 1

end

end A218606.P5107546915804962530

/-! ## A218606.P5730358787922098033

`A000005(A151800(n))-(1-A218608(n))`
-/

namespace A218606.P5730358787922098033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A151800 n).toNat - (1 - A218608 n)

end

end A218606.P5730358787922098033

/-! ## A218606.P10042252377872978907

`eq[0, A218604(n)]+1`
-/

namespace A218606.P10042252377872978907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A218606.P10042252377872978907

/-! ## A218606.P10450013973524113272

`record[gcd(n+1, A000120(n)*A218604(n))]`
-/

namespace A218606.P10450013973524113272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000120 n * A218604 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P10450013973524113272

/-! ## A218606.P17239343314571375749

`record[n+1-A000040(n+1)*A218604(n)]`
-/

namespace A218606.P17239343314571375749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P17239343314571375749

/-! ## A218606.P9457951213521444189

`record[n+1-A124487(n+1)*A218604(n)]`
-/

namespace A218606.P9457951213521444189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A124487 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P9457951213521444189

/-! ## A218606.P14008370852593153538

`record[n+1-A218604(n)*A330715(n+1)]`
-/

namespace A218606.P14008370852593153538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A218604 n * A330715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218606.P14008370852593153538

/-!
# A218607: The positions of zeros in A218603, i.e., those integers i for which A179016(i) = A213708(i).

The programs for A218607, there is no canonical definition to state claims against.
-/

/-! ## A218607.P7678672970562187620

`A218605(n+1)-1`
-/

namespace A218607.P7678672970562187620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218605 (n + 1) - 1

end

end A218607.P7678672970562187620

/-! ## A218607.P16577811643802117471

`eq[0, A179016(n)-A213708(n)]`
-/

namespace A218607.P16577811643802117471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 n - A213708 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218607.P16577811643802117471

/-! ## A218607.P17189747373787449845

`A023443(A218605(n+1))`
-/

namespace A218607.P17189747373787449845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A218605 (n + 1)).toNat

end

end A218607.P17189747373787449845

/-! ## A218607.P3090988488620822722

`eq[0, A218603(n)]`
-/

namespace A218607.P3090988488620822722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218607.P3090988488620822722

/-! ## A218607.P9987467770264836853

`record[n/A005898(A218603(n)²)]`
-/

namespace A218607.P9987467770264836853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005898 (A218603 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P9987467770264836853

/-! ## A218607.P10366465314853777904

`record[gcd(n, A000120(2*A218603(n)))]`
-/

namespace A218607.P10366465314853777904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000120 (2 * A218603 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P10366465314853777904

/-! ## A218607.P417732253738971102

`record[n-A000326(n)*A218603(n)]`
-/

namespace A218607.P417732253738971102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000326 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P417732253738971102

/-! ## A218607.P1508747586144757162

`record[n-A001096(n)*A218603(n)]`
-/

namespace A218607.P1508747586144757162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001096 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P1508747586144757162

/-! ## A218607.P9975996226223978287

`record[n-A005898(n)*A218603(n)]`
-/

namespace A218607.P9975996226223978287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005898 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P9975996226223978287

/-! ## A218607.P475679730203089320

`record[n-A071542(n*A218603(n))]`
-/

namespace A218607.P475679730203089320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071542 ((n : ℤ) * A218603 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P475679730203089320

/-! ## A218607.P873454623285263834

`record[n-A173601(n)*A218603(n)]`
-/

namespace A218607.P873454623285263834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A173601 n * A218603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218607.P873454623285263834

/-!
# A218608: The positions of zeros in A218604, i.e., those integers i for which A179016(i) = A173601(i).

The programs for A218608, there is no canonical definition to state claims against.
-/

/-! ## A218608.P397959413406752393

`A218606(n+1)-1`
-/

namespace A218608.P397959413406752393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218606 (n + 1) - 1

end

end A218608.P397959413406752393

/-! ## A218608.P12395695978218749788

`A326407(A006530(3*n+4))+A218606(n+1)`
-/

namespace A218608.P12395695978218749788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326407 (A006530 (3 * n + 4)).toNat + A218606 (n + 1)

end

end A218608.P12395695978218749788

/-! ## A218608.P12139763770240591904

`A326407(A000040(n+1))+A218606(n+1)`
-/

namespace A218608.P12139763770240591904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326407 (A000040 (n + 1)).toNat + A218606 (n + 1)

end

end A218608.P12139763770240591904

/-! ## A218608.P1977958195343471473

`A023443(A218606(n+1))`
-/

namespace A218608.P1977958195343471473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A218606 (n + 1)).toNat

end

end A218608.P1977958195343471473

/-! ## A218608.P11419929697356113012

`eq[0, A173601(n)-A179016(n)]`
-/

namespace A218608.P11419929697356113012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n - A179016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218608.P11419929697356113012

/-! ## A218608.P6931353339488348022

`eq[0, A218604(n)]`
-/

namespace A218608.P6931353339488348022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218604 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A218608.P6931353339488348022

/-! ## A218608.P8479552900242149679

`record[n-A071542(n*A218604(n))]`
-/

namespace A218608.P8479552900242149679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071542 ((n : ℤ) * A218604 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P8479552900242149679

/-! ## A218608.P11771808915125718778

`record[gcd(n, A000120(n)*A218604(n))]`
-/

namespace A218608.P11771808915125718778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000120 n * A218604 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P11771808915125718778

/-! ## A218608.P16258038234373721660

`record[n-A000040(n+1)*A218604(n)]`
-/

namespace A218608.P16258038234373721660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P16258038234373721660

/-! ## A218608.P12462680310614700312

`record[n-A124487(n+1)*A218604(n)]`
-/

namespace A218608.P12462680310614700312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A124487 (n + 1) * A218604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P12462680310614700312

/-! ## A218608.P1912081650995015353

`record[n-A218604(n)*A330715(n+1)]`
-/

namespace A218608.P1912081650995015353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A218604 n * A330715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218608.P1912081650995015353

/-!
# A218609: Distinct values of A218787 in the order of appearance.

The programs for A218609, there is no canonical definition to state claims against.
-/

/-! ## A218609.P17930673637365001616

`A218787(A218611(n+1))`
-/

namespace A218609.P17930673637365001616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218787 (A218611 (n + 1)).toNat

end

end A218609.P17930673637365001616

/-! ## A218609.P13291245724806767525

`A218787(A071542(A218612(n+1))-1)`
-/

namespace A218609.P13291245724806767525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218787 (A071542 (A218612 (n + 1)).toNat - 1).toNat

end

end A218609.P13291245724806767525

/-! ## A218609.P6200898927588806733

`A057163(A218610(n+1))`
-/

namespace A218609.P6200898927588806733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218610 (n + 1)).toNat

end

end A218609.P6200898927588806733

/-!
# A218610: Distinct values of A218788 in the order of appearance.

The programs for A218610, there is no canonical definition to state claims against.
-/

/-! ## A218610.P17344624452384529094

`A218788(A218611(n+1))`
-/

namespace A218610.P17344624452384529094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218788 (A218611 (n + 1)).toNat

end

end A218610.P17344624452384529094

/-! ## A218610.P7351621587649252806

`A218788(A071542(A218612(n+1))-1)`
-/

namespace A218610.P7351621587649252806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218788 (A071542 (A218612 (n + 1)).toNat - 1).toNat

end

end A218610.P7351621587649252806

/-! ## A218610.P10603312719545252822

`A057163(A218609(n+1))`
-/

namespace A218610.P10603312719545252822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A218609 (n + 1)).toNat

end

end A218610.P10603312719545252822

/-!
# A218611: Positions in A218787 and A218788 of successive distinct values.

The programs for A218611, there is no canonical definition to state claims against.
-/

/-! ## A218611.P18240685621207113049

`A071542(A218612(n+1))-1`
-/

namespace A218611.P18240685621207113049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A218612 (n + 1)).toNat - 1

end

end A218611.P18240685621207113049

/-! ## A218611.P7653799451579612509

`A134824(n+2)+A071542(A218612(n+1))`
-/

namespace A218611.P7653799451579612509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A071542 (A218612 (n + 1)).toNat

end

end A218611.P7653799451579612509

/-! ## A218611.P17896762500008546636

`A153881(n+2)+A071542(A218612(n+1))`
-/

namespace A218611.P17896762500008546636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A071542 (A218612 (n + 1)).toNat

end

end A218611.P17896762500008546636

/-! ## A218611.P13683882188044710174

`A260196(n+2)+A071542(A218612(n+1))`
-/

namespace A218611.P13683882188044710174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A071542 (A218612 (n + 1)).toNat

end

end A218611.P13683882188044710174

/-! ## A218611.P3751990992168308014

`A165326(2*(n+1))+A071542(A218612(n+1))`
-/

namespace A218611.P3751990992168308014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A071542 (A218612 (n + 1)).toNat

end

end A218611.P3751990992168308014

/-! ## A218611.P17397525940565722969

`A129667(A007918(n))+A071542(A218612(n+1))`
-/

namespace A218611.P17397525940565722969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (A007918 n).toNat + A071542 (A218612 (n + 1)).toNat

end

end A218611.P17397525940565722969

/-! ## A218611.P8356185904968399439

`A161204(A326307(n))+A071542(A218612(n+1))`
-/

namespace A218611.P8356185904968399439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 (A326307 n).toNat + A071542 (A218612 (n + 1)).toNat

end

end A218611.P8356185904968399439

/-! ## A218611.P3538226249359990933

`A291914(A000040(n+1))+A071542(A218612(n+1))`
-/

namespace A218611.P3538226249359990933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A071542 (A218612 (n + 1)).toNat

end

end A218611.P3538226249359990933

/-! ## A218611.P8699639088210027670

`A339791(A014963(n+1))+A071542(A218612(n+1))`
-/

namespace A218611.P8699639088210027670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A014963 (n + 1)).toNat + A071542 (A218612 (n + 1)).toNat

end

end A218611.P8699639088210027670

/-!
# A218612: Numbers which are the roots of distinct not-previously-encountered side-trees ("tendrils") sprouting from the side of the infinite beanstalk (see A213730).

The programs for A218612, there is no canonical definition to state claims against.
-/

/-! ## A218612.P3839011772444922294

`A213730(A218611(n+1))`
-/

namespace A218612.P3839011772444922294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213730 (A218611 (n + 1)).toNat

end

end A218612.P3839011772444922294

/-!
# A218613: Sizes of distinct new sidetrees ("tendrils", in the order of their appearance) that sprout along (A218787) the infinite trunk of beanstalk (A179016).

The programs for A218613, there is no canonical definition to state claims against.
-/

/-! ## A218613.P13648221382278098841

`A218786(A218611(n+1))`
-/

namespace A218613.P13648221382278098841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218786 (A218611 (n + 1)).toNat

end

end A218613.P13648221382278098841

/-!
# A218614: a(n) = binary code (shown here in decimal) of the position of natural number n in the beanstalk-tree A218778.

The programs for A218614, there is no canonical definition to state claims against.
-/

/-! ## A218614.P7573888320230117947

`A054429(A218615(n+1))`
-/

namespace A218614.P7573888320230117947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A218615 (n + 1)).toNat

end

end A218614.P7573888320230117947

/-! ## A218614.P250358067849870388

`A092569(xor(A057427(n), A218615(n+1)))`
-/

namespace A218614.P250358067849870388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A057427 n) (A218615 (n + 1))).toNat

end

end A218614.P250358067849870388

/-! ## A218614.P11675677173868544889

`A092569(2*A218615(n+1))/2`
-/

namespace A218614.P11675677173868544889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A218615 (n + 1)).toNat : ℚ) / 2

end

end A218614.P11675677173868544889

/-! ## A218614.P9896511621058099935

`∑[∏[A278567(A001333(n))]]`
-/

namespace A218614.P9896511621058099935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278567 (A001333 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218614.P9896511621058099935

/-! ## A218614.P1487119749663751446

`∑[∏[A239512(A239557(n))]]`
-/

namespace A218614.P1487119749663751446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239512 (A239557 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218614.P1487119749663751446

/-!
# A218615: a(n) = binary code (shown here in decimal) of the position of natural number n in the beanstalk-tree A218776.

The programs for A218615, there is no canonical definition to state claims against.
-/

/-! ## A218615.P10607785350766979078

`A054429(A218614(n+1))`
-/

namespace A218615.P10607785350766979078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A218614 (n + 1)).toNat

end

end A218615.P10607785350766979078

/-!
# A218616: The infinite trunk of beanstalk (A179016) with reversed subsections.

The programs for A218616, there is no canonical definition to state claims against.
-/

/-! ## A218616.P2173720225459494488

`A179016(A218602(n))`
-/

namespace A218616.P2173720225459494488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (A218602 n).toNat

end

end A218616.P2173720225459494488

/-! ## A218616.P192954773264275090

`A233271(A218602(n))-A233270(n)`
-/

namespace A218616.P192954773264275090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233271 (A218602 n).toNat - A233270 n

end

end A218616.P192954773264275090

/-! ## A218616.P8568439779984232525

`A179016(A218600(A213711(n))-A218601(n))`
-/

namespace A218616.P8568439779984232525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (A218600 (A213711 n).toNat - A218601 n).toNat

end

end A218616.P8568439779984232525

/-! ## A218616.P5065987187505385598

`xor(A086099(A213708(n)), A233271(n))`
-/

namespace A218616.P5065987187505385598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086099 (A213708 n).toNat) (A233271 n)

end

end A218616.P5065987187505385598

/-! ## A218616.P1474199454003653873

`∑{d}[A213730(A218602(n)), A297117(#)]`
-/

namespace A218616.P1474199454003653873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213730 (A218602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297117 d

end

end A218616.P1474199454003653873

/-! ## A218616.P3885065812908123620

`filter[A092569(n), A213719(#)]`
-/

namespace A218616.P3885065812908123620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A218616.P3885065812908123620

/-!
# A218617: Positions in A213728 and A213729 where the next record length run starts.

The programs for A218617, there is no canonical definition to state claims against.
-/

/-! ## A218617.P1657641300986894784

`A218784(A218546(n+1)-1)`
-/

namespace A218617.P1657641300986894784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218784 (A218546 (n + 1) - 1).toNat

end

end A218617.P1657641300986894784

/-!
# A218618: Absolute value of a(n) tells the size of the n-th side-tree ("tendril", A213730(n)) in the binary beanstalk; the sign tells on which side of the infinite trunk (A179016) it is.

The programs for A218618, there is no canonical definition to state claims against.
-/

/-! ## A218618.P18259191013746965105

`Δ[A218789(A028310(n)-1)]`
-/

namespace A218618.P18259191013746965105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P18259191013746965105

/-! ## A218618.P7836547168910343097

`Δ[A218789(A004273(n)-n)]`
-/

namespace A218618.P7836547168910343097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P7836547168910343097

/-! ## A218618.P462841062543717480

`A218789(n)-A218789(A028310(n)-1)`
-/

namespace A218618.P462841062543717480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (A028310 n - 1).toNat

end

end A218618.P462841062543717480

/-! ## A218618.P7809921291939324654

`A218789(n)-A218789(A004273(n)-n)`
-/

namespace A218618.P7809921291939324654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (A004273 n - (n : ℤ)).toNat

end

end A218618.P7809921291939324654

/-! ## A218618.P2923246506888419558

`Δ[A218789(A004526(A004273(n)))]`
-/

namespace A218618.P2923246506888419558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P2923246506888419558

/-! ## A218618.P9749754347714046608

`Δ[A218789(A142150(A004275(n)))]`
-/

namespace A218618.P9749754347714046608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A142150 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P9749754347714046608

/-! ## A218618.P15678401332573510646

`Δ[A218789(A110659(A111284(n+1)))]`
-/

namespace A218618.P15678401332573510646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A110659 (A111284 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P15678401332573510646

/-! ## A218618.P7469663701593299749

`(-1)^A213730(n)*A213727(A213730(n))`
-/

namespace A218618.P7469663701593299749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A213730 n : ℤ) * (A213727 (A213730 n).toNat : ℚ)

end

end A218618.P7469663701593299749

/-! ## A218618.P2748141821083384081

`A218789(n)-A218789(log2(A011782(n)))`
-/

namespace A218618.P2748141821083384081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A218618.P2748141821083384081

/-! ## A218618.P12755134948102911128

`Δ[A218789(log2(A011782(n)))]`
-/

namespace A218618.P12755134948102911128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P12755134948102911128

/-! ## A218618.P10726841343294732760

`A218789(n)-A218789(A259361(n²))`
-/

namespace A218618.P10726841343294732760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 n - A218789 (A259361 (n ^ 2)).toNat

end

end A218618.P10726841343294732760

/-! ## A218618.P8660687541771582861

`Δ[A218789(A259361(n²))]`
-/

namespace A218618.P8660687541771582861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218789 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A218618.P8660687541771582861

/-!
# A218619: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n*A(x)^n/n * Sum_{k=0..2*n} A200536(n,k)^2 * x^k * A(x)^(2*k) ), where A200536(n,k) = [x^k] (1 + 3*x + 2*x^2)^n.

The programs for A218619, there is no canonical definition to state claims against.
-/

/-! ## A218619.P16993333544970930648

`A277886(A187746(n))-n`
-/

namespace A218619.P16993333544970930648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 (A187746 n).toNat - (n : ℤ)

end

end A218619.P16993333544970930648

/-!
# A218620: Least number m to appear exactly n times in A095972.

The programs for A218620, there is no canonical definition to state claims against.
-/

/-! ## A218620.P18067119720503972254

`A007954(A060525(n+4)^ceil(abs((1-n)/2)))`
-/

namespace A218620.P18067119720503972254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((A060525 (n + 4) : ℚ) ^ (⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ : ℤ))).toNat

end

end A218620.P18067119720503972254

/-!
# A218621: a(n) = unique divisor d of n such that d + (n/d - 1)/2 is minimal and integral.

The programs for A218621, there is no canonical definition to state claims against.
-/

/-! ## A218621.P5918837827820408777

`(n+1)/A261697(∑[A001227(n+1)])`
-/

namespace A218621.P5918837827820408777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A261697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A218621.P5918837827820408777

/-! ## A218621.P7074527020305625583

`lcm(A327405(n+1), A327514(A074828(n+1)))`
-/

namespace A218621.P7074527020305625583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327405 (n + 1)) (A327514 (A074828 (n + 1)).toNat)

end

end A218621.P7074527020305625583

/-! ## A218621.P3112735104152581983

`lcm(A166123(A031285(n)), A327405(n+1))`
-/

namespace A218621.P3112735104152581983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166123 (A031285 n).toNat) (A327405 (n + 1))

end

end A218621.P3112735104152581983

/-! ## A218621.P8136541552523987690

`gcd(n+1, A085543(A111045(n+2)))`
-/

namespace A218621.P8136541552523987690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085543 (A111045 (n + 2)).toNat)

end

end A218621.P8136541552523987690

/-! ## A218621.P17846135690973910504

`gcd(Δ[n²]-n, A152691(A322864(n+1)))`
-/

namespace A218621.P17846135690973910504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A152691 (A322864 (n + 1)).toNat)

end

end A218621.P17846135690973910504

/-!
# A218622: a(n) = A183161(n) (mod 4), n>=0.

The programs for A218622, the canonical program `A218622.P5261897689198646449` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218622 has offset 0).

The definition of A218622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218622.P5261897689198646449

`A001316(A184616(n))%4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A218622

/-- `A001316(A184616(n))%4` -/
def P5261897689198646449.Spec : Prop :=
  ∀ n, P5261897689198646449.a n = A218622 n

theorem P5261897689198646449.correct : P5261897689198646449.Spec := by
  intro n
  simp only [A218622]

end A218622

/-! ## A218622.P16869380363560681849

`and(3, A001316(A184616(2*n)))`
-/

namespace A218622.P16869380363560681849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001316 (A184616 (2 * n)).toNat)

end

end A218622.P16869380363560681849

namespace A218622

/-- `and(3, A001316(A184616(2*n)))` -/
def P16869380363560681849.Spec : Prop :=
  ∀ n, P16869380363560681849.a n = A218622 n

end A218622

/-! ## A218622.P8942143319780217495

`and(3, A001316(A184616(n)²))`
-/

namespace A218622.P8942143319780217495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001316 (A184616 n ^ 2).toNat)

end

end A218622.P8942143319780217495

namespace A218622

/-- `and(3, A001316(A184616(n)²))` -/
def P8942143319780217495.Spec : Prop :=
  ∀ n, P8942143319780217495.a n = A218622 n

end A218622

/-! ## A218622.P12129212979921290604

`and(3, A056040(n-and(n, 3*n)))`
-/

namespace A218622.P12129212979921290604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A056040 (n - Nat.land n (3 * n)))

end

end A218622.P12129212979921290604

namespace A218622

/-- `and(3, A056040(n-and(n, 3*n)))` -/
def P12129212979921290604.Spec : Prop :=
  ∀ n, P12129212979921290604.a n = A218622 n

end A218622

/-! ## A218622.P1026173731157401619

`A073267(A184616(n)²+2)`
-/

namespace A218622.P1026173731157401619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (A184616 n ^ 2 + 2).toNat

end

end A218622.P1026173731157401619

namespace A218622

/-- `A073267(A184616(n)²+2)` -/
def P1026173731157401619.Spec : Prop :=
  ∀ n, P1026173731157401619.a n = A218622 n

end A218622

/-! ## A218622.P7348574425966904510

`C(2, A000120((n-and(n, 3*n))²/2))`
-/

namespace A218622.P7348574425966904510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000120 (SequenceMachineLib.roundAway ((((n : ℤ) - (Nat.land n (3 * n) : ℤ)) ^ 2 : ℚ) / 2)).toNat).toNat

end

end A218622.P7348574425966904510

namespace A218622

/-- `C(2, A000120((n-and(n, 3*n))²/2))` -/
def P7348574425966904510.Spec : Prop :=
  ∀ n, (P7348574425966904510.a n : ℤ) = A218622 n

end A218622

/-! ## A218622.P1239445824673612629

`A183161(n)%4`
-/

namespace A218622.P1239445824673612629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183161 n) 4

end

end A218622.P1239445824673612629

namespace A218622

/-- `A183161(n)%4` -/
def P1239445824673612629.Spec : Prop :=
  ∀ n, P1239445824673612629.a n = A218622 n

end A218622

/-! ## A218622.P5563251006785081816

`A219197(2*n)%4`
-/

namespace A218622.P5563251006785081816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219197 (2 * n)) 4

end

end A218622.P5563251006785081816

namespace A218622

/-- `A219197(2*n)%4` -/
def P5563251006785081816.Spec : Prop :=
  ∀ n, P5563251006785081816.a n = A218622 n

end A218622

/-!
# A218623: Number of partitions of n+2 with largest inscribed rectangle having area <= n.

The programs for A218623, there is no canonical definition to state claims against.
-/

/-! ## A218623.P11279860423951201091

`A182114(∑[n+3])`
-/

namespace A218623.P11279860423951201091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218623.P11279860423951201091

/-! ## A218623.P1820867117655753840

`or(char[3], A182114(A055998(n+1)))`
-/

namespace A218623.P1820867117655753840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A182114 (A055998 (n + 1)).toNat)

end

end A218623.P1820867117655753840

/-! ## A218623.P14636431900768810746

`A144300(n+2)-A115723(∑[n+2])`
-/

namespace A218623.P14636431900768810746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 2) - A115723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218623.P14636431900768810746

/-! ## A218623.P12758744026384472332

`A057427(n)*A182114(A055998(n+1))`
-/

namespace A218623.P12758744026384472332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A182114 (A055998 (n + 1)).toNat

end

end A218623.P12758744026384472332

/-! ## A218623.P16211964733933440460

`A060576(n)*A182114(A055998(n+1))`
-/

namespace A218623.P16211964733933440460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A182114 (A055998 (n + 1)).toNat

end

end A218623.P16211964733933440460

/-! ## A218623.P5608259551344421853

`A178334(n)*A182114(A055998(n+1))`
-/

namespace A218623.P5608259551344421853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A182114 (A055998 (n + 1)).toNat

end

end A218623.P5608259551344421853

/-! ## A218623.P11257091463382096431

`A182114(A055998(n+1))%A000032(n)`
-/

namespace A218623.P11257091463382096431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182114 (A055998 (n + 1)).toNat) (A000032 n)

end

end A218623.P11257091463382096431

/-! ## A218623.P5750260331945423583

`char[A303787(n)]*A182114(A055998(n+1))`
-/

namespace A218623.P5750260331945423583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182114 (A055998 (n + 1)).toNat

end

end A218623.P5750260331945423583

/-! ## A218623.P15617983819737621304

`A182114(A055998(n+1))+A000007(n+1)`
-/

namespace A218623.P15617983819737621304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A218623.P15617983819737621304

/-! ## A218623.P1283345474057658294

`A182114(A055998(n+1))+A000035(2*n)`
-/

namespace A218623.P1283345474057658294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055998 (n + 1)).toNat + A000035 (2 * n)

end

end A218623.P1283345474057658294

/-! ## A218623.P8309598432719884525

`A007318(C(2, n))*A182114(A055998(n+1))`
-/

namespace A218623.P8309598432719884525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A182114 (A055998 (n + 1)).toNat

end

end A218623.P8309598432719884525

/-! ## A218623.P14533862557887157425

`(A000041(n)%2)!*A182114(A055998(n+1))`
-/

namespace A218623.P14533862557887157425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A182114 (A055998 (n + 1)).toNat

end

end A218623.P14533862557887157425

/-! ## A218623.P2155257490959753415

`A000045(ceil(n/98))*A182114(A055998(n+1))`
-/

namespace A218623.P2155257490959753415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(n : ℚ) / 98⌉.toNat * A182114 (A055998 (n + 1)).toNat

end

end A218623.P2155257490959753415

/-! ## A218623.P17361431051305691432

`A182114(A055998(n+1))+A008683(4*(n+1))`
-/

namespace A218623.P17361431051305691432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055998 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A218623.P17361431051305691432

/-! ## A218623.P834570431924589135

`A014963(12*n+6)*A182114(A055998(n+1))`
-/

namespace A218623.P834570431924589135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A182114 (A055998 (n + 1)).toNat

end

end A218623.P834570431924589135

/-! ## A218623.P17355700949899045327

`A000005(C(2, n)+1)*A182114(A055998(n+1))`
-/

namespace A218623.P17355700949899045327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 n + 1) * A182114 (A055998 (n + 1)).toNat

end

end A218623.P17355700949899045327

/-! ## A218623.P18061452563824846485

`A007318(and(3, 2-n))*A182114(A055998(n+1))`
-/

namespace A218623.P18061452563824846485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A182114 (A055998 (n + 1)).toNat

end

end A218623.P18061452563824846485

/-! ## A218623.P10195668334552443898

`A001222(4-(-1)^n)*A182114(A055998(n+1))`
-/

namespace A218623.P10195668334552443898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 - (-1) ^ n).toNat * A182114 (A055998 (n + 1)).toNat

end

end A218623.P10195668334552443898

/-! ## A218623.P7703443594816794717

`A182114(A055998(n+1))/A007318((n+2)%(n+1))`
-/

namespace A218623.P7703443594816794717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182114 (A055998 (n + 1)).toNat : ℚ) / (A007318 ((n + 2) % (n + 1)) : ℚ)

end

end A218623.P7703443594816794717

/-!
# A218624: Number of partitions of n+3 with largest inscribed rectangle having area <= n.

The programs for A218624, there is no canonical definition to state claims against.
-/

/-! ## A218624.P1751701880459460870

`A182114(∑[n+4]+2)`
-/

namespace A218624.P1751701880459460870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218624.P1751701880459460870

/-! ## A218624.P13738214706929736691

`A182114(A056000(n)+6)%A000716(n)`
-/

namespace A218624.P13738214706929736691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182114 (A056000 n + 6).toNat) (A000716 n)

end

end A218624.P13738214706929736691

/-! ## A218624.P11158983824917934222

`A182114(A056000(n)+6)+n*A000038(n)`
-/

namespace A218624.P11158983824917934222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 n + 6).toNat + (n : ℤ) * A000038 n

end

end A218624.P11158983824917934222

/-! ## A218624.P16431796594515738024

`A182114(A056000(n)+6)+char[A065123(n+1)]`
-/

namespace A218624.P16431796594515738024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065123 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 n + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218624.P16431796594515738024

/-! ## A218624.P13724946559950361596

`char[A316524(n+1)]*A182114(A056000(n)+6)`
-/

namespace A218624.P13724946559950361596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182114 (A056000 n + 6).toNat

end

end A218624.P13724946559950361596

/-! ## A218624.P14964918940989653065

`A182114(A056000(n)+6)+char[A000302(n+4)]`
-/

namespace A218624.P14964918940989653065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 n + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218624.P14964918940989653065

/-! ## A218624.P14092343425963966933

`A182114(A056000(n)+6)+char[A354332(2*n+3)]`
-/

namespace A218624.P14092343425963966933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354332 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 n + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218624.P14092343425963966933

/-! ## A218624.P4962722343598989412

`A182114(A056000(n)+6)+char[A080279(3*n+5)]`
-/

namespace A218624.P4962722343598989412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080279 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 n + 6).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A218624.P4962722343598989412

/-! ## A218624.P9777207533224335790

`A182114(A056000(n)+6)+A259825(3*n+4)%3`
-/

namespace A218624.P9777207533224335790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 n + 6).toNat + Int.tmod (A259825 (3 * n + 4)) 3

end

end A218624.P9777207533224335790

/-! ## A218624.P13231535362390612308

`A218623(n+1)-A115723(∑[n+3]+1)`
-/

namespace A218624.P13231535362390612308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218623 (n + 1) - A115723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218624.P13231535362390612308

/-!
# A218625: Number of partitions of n+4 with largest inscribed rectangle having area <= n.

The programs for A218625, there is no canonical definition to state claims against.
-/

/-! ## A218625.P8055737469996042342

`A182114(∑[n+5]+5)`
-/

namespace A218625.P8055737469996042342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A218625.P8055737469996042342

/-! ## A218625.P11947563644093807308

`or(char[4], A182114(A052905(n+2)))`
-/

namespace A218625.P11947563644093807308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A182114 (A052905 (n + 2)).toNat)

end

end A218625.P11947563644093807308

/-! ## A218625.P14117399696482942538

`A182114(A052905(n+2))%A011782(n)`
-/

namespace A218625.P14117399696482942538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182114 (A052905 (n + 2)).toNat) (A011782 n)

end

end A218625.P14117399696482942538

/-! ## A218625.P18073855280033480171

`A182114(eq[4, A025581(n)])%A005810(n)`
-/

namespace A218625.P18073855280033480171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A005810 n)

end

end A218625.P18073855280033480171

/-! ## A218625.P12474794935414263263

`A182114(A052905(n+2))+A000007(n+1)`
-/

namespace A218625.P12474794935414263263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A218625.P12474794935414263263

/-! ## A218625.P2928811116769940740

`A182114(A052905(n+2))+A000038(n+1)`
-/

namespace A218625.P2928811116769940740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A052905 (n + 2)).toNat + A000038 (n + 1)

end

end A218625.P2928811116769940740

/-! ## A218625.P15217080388510589980

`A000328(n)%2*A182114(A052905(n+2))`
-/

namespace A218625.P15217080388510589980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) 2 * A182114 (A052905 (n + 2)).toNat

end

end A218625.P15217080388510589980

/-! ## A218625.P11944294137592717767

`A036704(n)%2*A182114(A052905(n+2))`
-/

namespace A218625.P11944294137592717767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036704 n) 2 * A182114 (A052905 (n + 2)).toNat

end

end A218625.P11944294137592717767

/-! ## A218625.P8551515997052768736

`A007318(C(2, n))*A182114(A052905(n+2))`
-/

namespace A218625.P8551515997052768736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A182114 (A052905 (n + 2)).toNat

end

end A218625.P8551515997052768736

/-! ## A218625.P14406639580295944414

`A182114(A052905(n+2))^A007318(C(2, n²))`
-/

namespace A218625.P14406639580295944414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182114 (A052905 (n + 2)).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A218625.P14406639580295944414

/-! ## A218625.P14505718191967378505

`A000041(C(n, n²))*A182114(A052905(n+2))`
-/

namespace A218625.P14505718191967378505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A182114 (A052905 (n + 2)).toNat

end

end A218625.P14505718191967378505

/-! ## A218625.P1975892814981318965

`A182114(A052905(n+2))+A008683(8*(n+1))`
-/

namespace A218625.P1975892814981318965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A052905 (n + 2)).toNat + A008683 (8 * (n + 1))

end

end A218625.P1975892814981318965

/-! ## A218625.P7449083040742587739

`A014963(12*(n+1))*A182114(A052905(n+2))`
-/

namespace A218625.P7449083040742587739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A182114 (A052905 (n + 2)).toNat

end

end A218625.P7449083040742587739

/-! ## A218625.P15031907767881905652

`A000041(gcd(n, n+1))*A182114(A052905(n+2))`
-/

namespace A218625.P15031907767881905652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A182114 (A052905 (n + 2)).toNat

end

end A218625.P15031907767881905652

/-! ## A218625.P11285574439546277213

`A182114(A052905(n+2))^log2(A020639(2*(n+1)))`
-/

namespace A218625.P11285574439546277213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A182114 (A052905 (n + 2)).toNat : ℝ) ^ (Real.logb 2 (A020639 (2 * (n + 1)) : ℝ))

end

end A218625.P11285574439546277213

/-! ## A218625.P6946789328255348624

`A182114(A052905(n+2))/(A000045(C(2, n²))+1)`
-/

namespace A218625.P6946789328255348624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182114 (A052905 (n + 2)).toNat : ℚ) / (A000045 (Nat.choose 2 (n ^ 2)) + 1 : ℚ)

end

end A218625.P6946789328255348624

/-! ## A218625.P5825379163282260893

`A000108(floor(1/(n+1)))*A182114(A052905(n+2))`
-/

namespace A218625.P5825379163282260893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊1 / (n + 1 : ℚ)⌋.toNat * A182114 (A052905 (n + 2)).toNat

end

end A218625.P5825379163282260893

/-! ## A218625.P287597249633233944

`A007318(floor(1/(n+1)))*A182114(A052905(n+2))`
-/

namespace A218625.P287597249633233944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A182114 (A052905 (n + 2)).toNat

end

end A218625.P287597249633233944

/-! ## A218625.P3893437948359948823

`A000045(floor(n^(3/14)))*A182114(A052905(n+2))`
-/

namespace A218625.P3893437948359948823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋.toNat * A182114 (A052905 (n + 2)).toNat

end

end A218625.P3893437948359948823

/-! ## A218625.P3987141833814351149

`A182114(A052905(n+2))/A007318((n+3)%(n+1))`
-/

namespace A218625.P3987141833814351149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182114 (A052905 (n + 2)).toNat : ℚ) / (A007318 ((n + 3) % (n + 1)) : ℚ)

end

end A218625.P3987141833814351149

/-!
# A218626: Number of partitions of n+5 with largest inscribed rectangle having area <= n.

The programs for A218626, there is no canonical definition to state claims against.
-/

/-! ## A218626.P16726960663172576380

`A182114(A055999(n+3))`
-/

namespace A218626.P16726960663172576380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (n + 3)).toNat

end

end A218626.P16726960663172576380

/-! ## A218626.P1511045376733154928

`A182114(Δ[A026054(n+3)])`
-/

namespace A218626.P1511045376733154928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (f1 (n + 1) - f1 n).toNat

end

end A218626.P1511045376733154928

/-! ## A218626.P7002111513943739948

`A182114(A046691(n+4)-2)`
-/

namespace A218626.P7002111513943739948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A046691 (n + 4) - 2).toNat

end

end A218626.P7002111513943739948

/-! ## A218626.P1158214690648947290

`A182114(eq[6, A004736(n+1)])`
-/

namespace A218626.P1158214690648947290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218626.P1158214690648947290

/-! ## A218626.P3069579477528043146

`A182114(A000096(n+4)+n+1)`
-/

namespace A218626.P3069579477528043146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A218626.P3069579477528043146

/-! ## A218626.P4655208179012253071

`A182114(A167499(n+3)+A005843(n))`
-/

namespace A218626.P4655208179012253071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A167499 (n + 3) + A005843 n).toNat

end

end A218626.P4655208179012253071

/-!
# A218627: Number of partitions of n+6 with largest inscribed rectangle having area <= n.

The programs for A218627, there is no canonical definition to state claims against.
-/

/-! ## A218627.P12239682208000192142

`A182114(A056121(n)+21)`
-/

namespace A218627.P12239682208000192142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056121 n + 21).toNat

end

end A218627.P12239682208000192142

/-! ## A218627.P16546694011252140965

`A182114(eq[6, A025581(n)])`
-/

namespace A218627.P16546694011252140965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218627.P16546694011252140965

/-! ## A218627.P10957032121354589107

`A182114(A055999(n+4)-1)`
-/

namespace A218627.P10957032121354589107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (n + 4) - 1).toNat

end

end A218627.P10957032121354589107

/-! ## A218627.P17832506597823992932

`A182114(A052905(n+4)-2)`
-/

namespace A218627.P17832506597823992932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A052905 (n + 4) - 2).toNat

end

end A218627.P17832506597823992932

/-! ## A218627.P14027291275173971202

`A182114(A000217(n+7)-7)`
-/

namespace A218627.P14027291275173971202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000217 (n + 7) - 7).toNat

end

end A218627.P14027291275173971202

/-! ## A218627.P18002254627303081041

`A182114(A161680(n+8)-7)`
-/

namespace A218627.P18002254627303081041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A161680 (n + 8) - 7).toNat

end

end A218627.P18002254627303081041

/-! ## A218627.P18282370468116675885

`A182114(eq[7, A004736(n+1)])`
-/

namespace A218627.P18282370468116675885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218627.P18282370468116675885

/-! ## A218627.P8346273284242468928

`A182114(A000096(n+5)+n+1)`
-/

namespace A218627.P8346273284242468928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A218627.P8346273284242468928

/-! ## A218627.P3445877242601747866

`A182114(A000124(n+6)+n-1)`
-/

namespace A218627.P3445877242601747866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A218627.P3445877242601747866

/-! ## A218627.P10281459013246018485

`A182114(2*n+A000217(n+5)+6)`
-/

namespace A218627.P10281459013246018485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 ((2 * n : ℤ) + (A000217 (n + 5) + 6)).toNat

end

end A218627.P10281459013246018485

/-!
# A218628: Number of partitions of n+7 with largest inscribed rectangle having area <= n.

The programs for A218628, there is no canonical definition to state claims against.
-/

/-! ## A218628.P2504480837312280751

`A182114(A155212(n+4))`
-/

namespace A218628.P2504480837312280751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A155212 (n + 4)).toNat

end

end A218628.P2504480837312280751

/-! ## A218628.P18192528505321962761

`A182114(eq[7, A025581(n)])`
-/

namespace A218628.P18192528505321962761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218628.P18192528505321962761

/-! ## A218628.P13199411979204733347

`A182114(eq[15, A099375(n)])`
-/

namespace A218628.P13199411979204733347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218628.P13199411979204733347

/-! ## A218628.P16745523001270051629

`A182114(A056000(n+4)+2)`
-/

namespace A218628.P16745523001270051629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A056000 (n + 4) + 2).toNat

end

end A218628.P16745523001270051629

/-! ## A218628.P15837488502004666404

`A182114(A052905(n+5)-3)`
-/

namespace A218628.P15837488502004666404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A052905 (n + 5) - 3).toNat

end

end A218628.P15837488502004666404

/-! ## A218628.P3742618380214510928

`A182114(A046691(n+6)-4)`
-/

namespace A218628.P3742618380214510928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A046691 (n + 6) - 4).toNat

end

end A218628.P3742618380214510928

/-! ## A218628.P12397616354114720774

`A182114(A000217(n+8)-8)`
-/

namespace A218628.P12397616354114720774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000217 (n + 8) - 8).toNat

end

end A218628.P12397616354114720774

/-! ## A218628.P14782348947324282065

`A182114(A000124(n+8)-9)`
-/

namespace A218628.P14782348947324282065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000124 (n + 8) - 9).toNat

end

end A218628.P14782348947324282065

/-! ## A218628.P10827656296270241477

`A182114(A161680(n+9)-8)`
-/

namespace A218628.P10827656296270241477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A161680 (n + 9) - 8).toNat

end

end A218628.P10827656296270241477

/-! ## A218628.P13718021949065769377

`A182114(2*n+A000124(n+6)+6)`
-/

namespace A218628.P13718021949065769377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A218628.P13718021949065769377

/-! ## A218628.P5354382260235713121

`A182114(A167499(n+4)+A016789(n+2))`
-/

namespace A218628.P5354382260235713121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A167499 (n + 4) + A016789 (n + 2)).toNat

end

end A218628.P5354382260235713121

/-! ## A218628.P2150818088577731106

`A182114(A167614(n+5)+A005843(n+2))`
-/

namespace A218628.P2150818088577731106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A167614 (n + 5) + A005843 (n + 2)).toNat

end

end A218628.P2150818088577731106

/-!
# A218629: Number of partitions of n+8 with largest inscribed rectangle having area <= n.

The programs for A218629, there is no canonical definition to state claims against.
-/

/-! ## A218629.P2273872989131213806

`A182114(eq[8, A025581(n)])`
-/

namespace A218629.P2273872989131213806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218629.P2273872989131213806

/-! ## A218629.P3635523099090468136

`A182114(A055999(n+6)-3)`
-/

namespace A218629.P3635523099090468136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (n + 6) - 3).toNat

end

end A218629.P3635523099090468136

/-! ## A218629.P14943924656020108778

`A182114(A046691(n+7)-5)`
-/

namespace A218629.P14943924656020108778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A046691 (n + 7) - 5).toNat

end

end A218629.P14943924656020108778

/-! ## A218629.P4199834380512906454

`A182114(A000217(n+9)-9)`
-/

namespace A218629.P4199834380512906454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000217 (n + 9) - 9).toNat

end

end A218629.P4199834380512906454

/-! ## A218629.P13167329419897873022

`A182114(eq[9, A004736(n+1)])`
-/

namespace A218629.P13167329419897873022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218629.P13167329419897873022

/-!
# A218630: Number of partitions of n+9 with largest inscribed rectangle having area <= n.

The programs for A218630, there is no canonical definition to state claims against.
-/

/-! ## A218630.P18184445032563681811

`A182114(eq[8, A116598(n)])`
-/

namespace A218630.P18184445032563681811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218630.P18184445032563681811

/-! ## A218630.P7112599854557781779

`A182114(eq[9, A025581(n)])`
-/

namespace A218630.P7112599854557781779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218630.P7112599854557781779

/-! ## A218630.P18101080515036494732

`A182114(A055999(n+7)-4)`
-/

namespace A218630.P18101080515036494732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (n + 7) - 4).toNat

end

end A218630.P18101080515036494732

/-! ## A218630.P8301080801928110681

`A182114(A133263(n+10)-12)`
-/

namespace A218630.P8301080801928110681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A133263 (n + 10) - 12).toNat

end

end A218630.P8301080801928110681

/-! ## A218630.P8341434693385467324

`A125984(C(n+1, 8))`
-/

namespace A218630.P8341434693385467324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125984 (Nat.choose (n + 1) 8)

end

end A218630.P8341434693385467324

/-!
# A218631: Number of partitions of n+10 with largest inscribed rectangle having area <= n.

The programs for A218631, there is no canonical definition to state claims against.
-/

/-! ## A218631.P12752867855472843988

`A182114(eq[10, A025581(n)])`
-/

namespace A218631.P12752867855472843988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218631.P12752867855472843988

/-! ## A218631.P2687482315092591871

`A182114(eq[21, A099375(n)])`
-/

namespace A218631.P2687482315092591871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218631.P2687482315092591871

/-! ## A218631.P10555406534089771419

`A182114(A155212(n+7)-3)`
-/

namespace A218631.P10555406534089771419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A155212 (n + 7) - 3).toNat

end

end A218631.P10555406534089771419

/-! ## A218631.P7295960219955813383

`A182114(A055999(n+8)-5)`
-/

namespace A218631.P7295960219955813383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A055999 (n + 8) - 5).toNat

end

end A218631.P7295960219955813383

/-! ## A218631.P7346731634987246782

`A182114(A046691(n+9)-7)`
-/

namespace A218631.P7346731634987246782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A046691 (n + 9) - 7).toNat

end

end A218631.P7346731634987246782

/-! ## A218631.P9668816271192581920

`A182114(A034856(n+10)-9)`
-/

namespace A218631.P9668816271192581920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A034856 (n + 10) - 9).toNat

end

end A218631.P9668816271192581920

/-! ## A218631.P9990213678401201732

`A182114(A000217(n+11)-11)`
-/

namespace A218631.P9990213678401201732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000217 (n + 11) - 11).toNat

end

end A218631.P9990213678401201732

/-! ## A218631.P16299259118887877450

`A182114(A000124(n+11)-12)`
-/

namespace A218631.P16299259118887877450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A000124 (n + 11) - 12).toNat

end

end A218631.P16299259118887877450

/-! ## A218631.P10308808208249400089

`A182114(A167499(n+7)+A016789(n+4))`
-/

namespace A218631.P10308808208249400089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A167499 (n + 7) + A016789 (n + 4)).toNat

end

end A218631.P10308808208249400089

/-! ## A218631.P1897523042793954670

`A182114(A005408(n+5)+A000096(n+8))`
-/

namespace A218631.P1897523042793954670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A005408 (n + 5) + A000096 (n + 8)).toNat

end

end A218631.P1897523042793954670

/-! ## A218631.P13390116920834412161

`A182114(A052905(n+5)+A008486(n+8))`
-/

namespace A218631.P13390116920834412161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182114 (A052905 (n + 5) + A008486 (n + 8)).toNat

end

end A218631.P13390116920834412161

/-!
# A218632: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 n X n array.

The programs for A218632, there is no canonical definition to state claims against.
-/

/-! ## A218632.P4100088283947779657

`A218638(∑[4*n]+1)`
-/

namespace A218632.P4100088283947779657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218632.P4100088283947779657

/-! ## A218632.P18211087877098996473

`or(1, A218638(A001844(n)))`
-/

namespace A218632.P18211087877098996473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218638 (A001844 n).toNat)

end

end A218632.P18211087877098996473

/-! ## A218632.P14480344916147646479

`record[A218638(A272267(n+1))]`
-/

namespace A218632.P14480344916147646479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218632.P14480344916147646479

/-!
# A218633: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX3 array.

The programs for A218633, there is no canonical definition to state claims against.
-/

/-! ## A218633.P3800280110809363739

`A218638(∑[n+3]+1)`
-/

namespace A218633.P3800280110809363739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218633.P3800280110809363739

/-! ## A218633.P9750564459610163095

`record[A218638(A198464(n+1))]`
-/

namespace A218633.P9750564459610163095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218633.P9750564459610163095

/-! ## A218633.P14054589348527002957

`or(1, A218638(A034856(n+2)))`
-/

namespace A218633.P14054589348527002957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218638 (A034856 (n + 2)).toNat)

end

end A218633.P14054589348527002957

/-! ## A218633.P2278852267064843267

`A218638(A034856(n+2))+A151878(n+1)`
-/

namespace A218633.P2278852267064843267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A034856 (n + 2)).toNat + A151878 (n + 1)

end

end A218633.P2278852267064843267

/-! ## A218633.P11557422490642804865

`A218638(A034856(n+2))%A199037(n+2)`
-/

namespace A218633.P11557422490642804865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218638 (A034856 (n + 2)).toNat) (A199037 (n + 2))

end

end A218633.P11557422490642804865

/-!
# A218634: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX4 array.

The programs for A218634, there is no canonical definition to state claims against.
-/

/-! ## A218634.P16752525550467278350

`A218638(A141214(n+1))`
-/

namespace A218634.P16752525550467278350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A141214 (n + 1)).toNat

end

end A218634.P16752525550467278350

/-! ## A218634.P10194268870906678539

`A218638(A155212(n)+5)`
-/

namespace A218634.P10194268870906678539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A155212 n + 5).toNat

end

end A218634.P10194268870906678539

/-! ## A218634.P1202170605329817482

`A218638(A056000(n)+7)`
-/

namespace A218634.P1202170605329817482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A056000 n + 7).toNat

end

end A218634.P1202170605329817482

/-! ## A218634.P16487323975302188617

`A218638(eq[3, A193592(n)])`
-/

namespace A218634.P16487323975302188617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218634.P16487323975302188617

/-! ## A218634.P298029360657211467

`A218638(Δ[A034857(n+1)])`
-/

namespace A218634.P298029360657211467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (f1 (n + 1) - f1 n).toNat

end

end A218634.P298029360657211467

/-!
# A218635: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX5 array.

The programs for A218635, there is no canonical definition to state claims against.
-/

/-! ## A218635.P12218110829176204200

`A218638(eq[2, A092921(n)])`
-/

namespace A218635.P12218110829176204200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218635.P12218110829176204200

/-! ## A218635.P8484389973101211439

`A218638(eq[4, A193592(n)])`
-/

namespace A218635.P8484389973101211439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218635.P8484389973101211439

/-! ## A218635.P6392039321573689146

`A218638(Δ[A023545(n+1)])`
-/

namespace A218635.P6392039321573689146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (f1 (n + 1) - f1 n).toNat

end

end A218635.P6392039321573689146

/-! ## A218635.P4862314012673288395

`A218638(eq[5, A200370(n+1)])`
-/

namespace A218635.P4862314012673288395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218635.P4862314012673288395

/-! ## A218635.P3444236075962334484

`A218638(eq[8, A057728(n+1)])`
-/

namespace A218635.P3444236075962334484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218635.P3444236075962334484

/-!
# A218636: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX6 array.

The programs for A218636, there is no canonical definition to state claims against.
-/

/-! ## A218636.P10023559020611327423

`A218638(eq[3, A219347(n)])`
-/

namespace A218636.P10023559020611327423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218636.P10023559020611327423

/-! ## A218636.P5166725864622529296

`A218638(eq[5, A193592(n)])`
-/

namespace A218636.P5166725864622529296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218636.P5166725864622529296

/-! ## A218636.P11227786112120060595

`A218638(eq[8, A258709(n)])`
-/

namespace A218636.P11227786112120060595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218636.P11227786112120060595

/-! ## A218636.P17831617633539569756

`A218638(eq[6, A200370(n+1)])`
-/

namespace A218636.P17831617633539569756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218636.P17831617633539569756

/-! ## A218636.P1407945151089384094

`A218638(Δ[A023545(n+2)]-1)`
-/

namespace A218636.P1407945151089384094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (f1 (n + 1) - f1 n - 1).toNat

end

end A218636.P1407945151089384094

/-!
# A218637: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nX7 array.

The programs for A218637, there is no canonical definition to state claims against.
-/

/-! ## A218637.P1890875861786833352

`A218638(A055999(n+4))`
-/

namespace A218637.P1890875861786833352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A055999 (n + 4)).toNat

end

end A218637.P1890875861786833352

/-! ## A218637.P6832810702596606125

`A218638(A056121(n)+22)`
-/

namespace A218637.P6832810702596606125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A056121 n + 22).toNat

end

end A218637.P6832810702596606125

/-! ## A218637.P15713423573604197839

`A218638(eq[4, A219347(n)])`
-/

namespace A218637.P15713423573604197839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218637.P15713423573604197839

/-! ## A218637.P18139470485420828119

`A218638(eq[6, A193592(n)])`
-/

namespace A218637.P18139470485420828119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218637.P18139470485420828119

/-!
# A218638: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 nXk array.

The programs for A218638, there is no canonical definition to state claims against.
-/

/-! ## A218638.P16761546530428090041

`A218242(n+1)^A183134(A004086(n))`
-/

namespace A218638.P16761546530428090041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218242 (n + 1) : ℚ) ^ (A183134 (A004086 n).toNat : ℤ)

end

end A218638.P16761546530428090041

/-! ## A218638.P7838828778228162957

`A218242(n+1)%A001105(A337410(n+1))`
-/

namespace A218638.P7838828778228162957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218242 (n + 1)) (A001105 (A337410 (n + 1)).toNat)

end

end A218638.P7838828778228162957

/-! ## A218638.P14949212211278782949

`A218242((n+1)^A250484(n))`
-/

namespace A218638.P14949212211278782949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A250484 n : ℤ))).toNat

end

end A218638.P14949212211278782949

/-! ## A218638.P16885511051348030205

`A218242((n+1)^A293960(n))`
-/

namespace A218638.P16885511051348030205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A293960 n : ℤ))).toNat

end

end A218638.P16885511051348030205

/-! ## A218638.P10610237433311143245

`A218242(C(n+1, A250484(n)))`
-/

namespace A218638.P10610237433311143245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218242 (Nat.choose (n + 1) (A250484 n).toNat)

end

end A218638.P10610237433311143245

/-!
# A218639: Hilltop maps: number of 4Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 4Xn array.

The programs for A218639, there is no canonical definition to state claims against.
-/

/-! ## A218639.P219962594527964887

`A218638(A141214(n)+7)`
-/

namespace A218639.P219962594527964887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A141214 n + 7).toNat

end

end A218639.P219962594527964887

/-! ## A218639.P12627032268784434597

`A218638(A052905(n)+9)`
-/

namespace A218639.P12627032268784434597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A052905 n + 9).toNat

end

end A218639.P12627032268784434597

/-! ## A218639.P16863928379806230639

`A218638(A055999(n)+10)`
-/

namespace A218639.P16863928379806230639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A055999 n + 10).toNat

end

end A218639.P16863928379806230639

/-! ## A218639.P17242135101618058300

`A218638(eq[5, A066657(n)])`
-/

namespace A218639.P17242135101618058300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218639.P17242135101618058300

/-! ## A218639.P17165674456330339806

`A218638(A167614(n+2)+1)`
-/

namespace A218639.P17165674456330339806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A167614 (n + 2) + 1).toNat

end

end A218639.P17165674456330339806

/-!
# A218640: Hilltop maps: number of 5Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 5Xn array.

The programs for A218640, there is no canonical definition to state claims against.
-/

/-! ## A218640.P6846991188722996701

`A218638(A167499(n+3))`
-/

namespace A218640.P6846991188722996701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A167499 (n + 3)).toNat

end

end A218640.P6846991188722996701

/-! ## A218640.P12355365521633804519

`A218638(A155212(n)+13)`
-/

namespace A218640.P12355365521633804519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A155212 n + 13).toNat

end

end A218640.P12355365521633804519

/-! ## A218640.P9842800743562371382

`A218638(A056000(n)+15)`
-/

namespace A218640.P9842800743562371382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A056000 n + 15).toNat

end

end A218640.P9842800743562371382

/-! ## A218640.P6142258318559550432

`A218638(eq[7, A066657(n)])`
-/

namespace A218640.P6142258318559550432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218640.P6142258318559550432

/-! ## A218640.P11788136348335923567

`A218638(eq[6, A131818(n+1)])`
-/

namespace A218640.P11788136348335923567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218640.P11788136348335923567

/-!
# A218641: Hilltop maps: number of 6Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 6Xn array.

The programs for A218641, there is no canonical definition to state claims against.
-/

/-! ## A218641.P15970329113812206610

`A218638(A167614(n+4)+3)`
-/

namespace A218641.P15970329113812206610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A167614 (n + 4) + 3).toNat

end

end A218641.P15970329113812206610

/-! ## A218641.P1199333351534602010

`A218638(A134869(n+5)+5)`
-/

namespace A218641.P1199333351534602010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A134869 (n + 5) + 5).toNat

end

end A218641.P1199333351534602010

/-! ## A218641.P18125074921323242997

`A218638(A000217(n+5)+6)`
-/

namespace A218641.P18125074921323242997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A000217 (n + 5) + 6).toNat

end

end A218641.P18125074921323242997

/-! ## A218641.P14883094110733184680

`A218638(eq[6, A130270(n+1)])`
-/

namespace A218641.P14883094110733184680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218641.P14883094110733184680

/-! ## A218641.P9513388688749301751

`A218638(eq[7, A131818(n+1)])`
-/

namespace A218641.P9513388688749301751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218641.P9513388688749301751

/-!
# A218642: Hilltop maps: number of 7Xn binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, diagonal or antidiagonal neighbor in a random 0..3 7Xn array.

The programs for A218642, there is no canonical definition to state claims against.
-/

/-! ## A218642.P7203597142053677449

`A218638(A056119(n)+28)`
-/

namespace A218642.P7203597142053677449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A056119 n + 28).toNat

end

end A218642.P7203597142053677449

/-! ## A218642.P4482477328077394391

`A218638(eq[11, A066657(n)])`
-/

namespace A218642.P4482477328077394391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218642.P4482477328077394391

/-! ## A218642.P10224752759660456469

`A218638(A166136(n+5)+1)`
-/

namespace A218642.P10224752759660456469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A166136 (n + 5) + 1).toNat

end

end A218642.P10224752759660456469

/-! ## A218642.P9878330112084891287

`A218638(A167499(n+5)+2)`
-/

namespace A218642.P9878330112084891287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (A167499 (n + 5) + 2).toNat

end

end A218642.P9878330112084891287

/-!
# A218644: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 n X n array.

The programs for A218644, there is no canonical definition to state claims against.
-/

/-! ## A218644.P10613374111805985637

`A218651(∑[4*n]+1)`
-/

namespace A218644.P10613374111805985637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218644.P10613374111805985637

/-! ## A218644.P16616673350843491610

`lcm(2, A218651(A001844(n)))`
-/

namespace A218644.P16616673350843491610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218651 (A001844 n).toNat)

end

end A218644.P16616673350843491610

/-! ## A218644.P6185187162496504731

`record[A218651(abs(A069480(n+1)))]`
-/

namespace A218644.P6185187162496504731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 |A069480 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218644.P6185187162496504731

/-! ## A218644.P10402648486334647791

`record[A003982(n)*A218651(n+1)]`
-/

namespace A218644.P10402648486334647791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218644.P10402648486334647791

/-!
# A218645: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 n X 2 array.

The programs for A218645, there is no canonical definition to state claims against.
-/

/-! ## A218645.P1169970507674317000

`A218651(∑[n+1]+2)`
-/

namespace A218645.P1169970507674317000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218645.P1169970507674317000

/-! ## A218645.P40301750003665179

`record[gcd(A177975(n+2), A218651(n+3))]`
-/

namespace A218645.P40301750003665179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177975 (n + 2)) (A218651 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P40301750003665179

/-! ## A218645.P18413780375467071402

`record[A218651(record[A185180(n+1)])]`
-/

namespace A218645.P18413780375467071402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P18413780375467071402

/-! ## A218645.P14479599074460979621

`record[A129186(n)*A218651(n+1)]`
-/

namespace A218645.P14479599074460979621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A218651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P14479599074460979621

/-! ## A218645.P15226462846748432954

`record[root(A218651(n+1), A168396(n+1))]`
-/

namespace A218645.P15226462846748432954
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218651 (n + 1) : ℝ) ^ (1 / (A168396 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218645.P15226462846748432954

/-!
# A218646: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A218646, there is no canonical definition to state claims against.
-/

/-! ## A218646.P6376907382740087992

`A218651(∑[n+2]+4)`
-/

namespace A218646.P6376907382740087992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218646.P6376907382740087992

/-! ## A218646.P15268683864488878332

`lcm(2, A218651(A167614(n+1)))`
-/

namespace A218646.P15268683864488878332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A218651 (A167614 (n + 1)).toNat)

end

end A218646.P15268683864488878332

/-! ## A218646.P14742372964433159449

`A218651(A167614(n+1))+A025469(n)`
-/

namespace A218646.P14742372964433159449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A167614 (n + 1)).toNat + A025469 n

end

end A218646.P14742372964433159449

/-! ## A218646.P8259022727629695906

`A218651(A167614(n+1))+A178798(n)`
-/

namespace A218646.P8259022727629695906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A167614 (n + 1)).toNat + A178798 n

end

end A218646.P8259022727629695906

/-! ## A218646.P4674647996261619572

`A218651(A167614(n+1))+A185284(n)`
-/

namespace A218646.P4674647996261619572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A167614 (n + 1)).toNat + A185284 n

end

end A218646.P4674647996261619572

/-!
# A218647: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A218647, there is no canonical definition to state claims against.
-/

/-! ## A218647.P3378819520830575789

`A218651(A374004(n+1))`
-/

namespace A218647.P3378819520830575789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374004 (n + 1)).toNat

end

end A218647.P3378819520830575789

/-! ## A218647.P4873024189621067033

`A218651(A141214(n)+7)`
-/

namespace A218647.P4873024189621067033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A141214 n + 7).toNat

end

end A218647.P4873024189621067033

/-! ## A218647.P9963424588882097031

`A218651(A052905(n)+9)`
-/

namespace A218647.P9963424588882097031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A052905 n + 9).toNat

end

end A218647.P9963424588882097031

/-! ## A218647.P9954411019149129355

`A218651(A167614(n+2)+1)`
-/

namespace A218647.P9954411019149129355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A167614 (n + 2) + 1).toNat

end

end A218647.P9954411019149129355

/-! ## A218647.P4028851690098003675

`A218651(eq[5, A131818(n+1)])`
-/

namespace A218647.P4028851690098003675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218647.P4028851690098003675

/-!
# A218648: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A218648, there is no canonical definition to state claims against.
-/

/-! ## A218648.P3991160121904346046

`A218651(A374005(n+1))`
-/

namespace A218648.P3991160121904346046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374005 (n + 1)).toNat

end

end A218648.P3991160121904346046

/-! ## A218648.P16038457890940866324

`A218651(eq[4, A002262(n)]+1)`
-/

namespace A218648.P16038457890940866324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218648.P16038457890940866324

/-! ## A218648.P11156204145897115094

`A218651(eq[6, A131818(n+1)])`
-/

namespace A218648.P11156204145897115094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218648.P11156204145897115094

/-! ## A218648.P13482141324728033993

`A218651(Δ[A264443(n)])`
-/

namespace A218648.P13482141324728033993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (f1 (n + 1) - f1 n).toNat

end

end A218648.P13482141324728033993

/-! ## A218648.P10296802142587265746

`A218651(A056115(n)+11)`
-/

namespace A218648.P10296802142587265746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A056115 n + 11).toNat

end

end A218648.P10296802142587265746

/-!
# A218649: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A218649, there is no canonical definition to state claims against.
-/

/-! ## A218649.P2909199272349812104

`A218651(A374007(n+1))`
-/

namespace A218649.P2909199272349812104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374007 (n + 1)).toNat

end

end A218649.P2909199272349812104

/-! ## A218649.P7960416045322227102

`A218651(A027379(n+3)+9)`
-/

namespace A218649.P7960416045322227102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A027379 (n + 3) + 9).toNat

end

end A218649.P7960416045322227102

/-! ## A218649.P13922060303954463896

`A218651(eq[7, A131818(n+1)])`
-/

namespace A218649.P13922060303954463896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218649.P13922060303954463896

/-! ## A218649.P3889598457803721030

`A218651(eq[3, A219347(n)])`
-/

namespace A218649.P3889598457803721030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218649.P3889598457803721030

/-! ## A218649.P11854076039065588231

`A218651(eq[5, A193592(n)])`
-/

namespace A218649.P11854076039065588231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218649.P11854076039065588231

/-!
# A218650: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random 0..3 nX7 array.

The programs for A218650, there is no canonical definition to state claims against.
-/

/-! ## A218650.P13681895235642999756

`A218651(A374008(n+1))`
-/

namespace A218650.P13681895235642999756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A374008 (n + 1)).toNat

end

end A218650.P13681895235642999756

/-! ## A218650.P11119282277766354114

`A218651(eq[8, A131818(n+1)])`
-/

namespace A218650.P11119282277766354114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218650.P11119282277766354114

/-! ## A218650.P3556874650861419847

`A218651(A155212(n+4)-2*n)`
-/

namespace A218650.P3556874650861419847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A218650.P3556874650861419847

/-! ## A218650.P7147783117988782082

`A218651(A155212(n+3)+8-n)`
-/

namespace A218650.P7147783117988782082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (A155212 (n + 3) + 8 - (n : ℤ)).toNat

end

end A218650.P7147783117988782082

/-! ## A218650.P7408118242992873326

`A218651(eq[4, A219347(n)])`
-/

namespace A218650.P7408118242992873326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218650.P7408118242992873326

/-!
# A218652: E.g.f. satisfies: A(x) = x + log(1 + A(x)^2).

The programs for A218652, there is no canonical definition to state claims against.
-/

/-! ## A218652.P1411464538156631338

`(n+1)*A218653(n)`
-/

namespace A218652.P1411464538156631338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A218653 n

end

end A218652.P1411464538156631338

/-! ## A218652.P13920928424932271492

`A218653(n)*A277813(comp[xor(n, 2*n)])`
-/

namespace A218652.P13920928424932271492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A277813 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A218652.P13920928424932271492

/-! ## A218652.P7900635416285769647

`A218653(n)*A322630(ceil(or(1, 2*n)²/8))`
-/

namespace A218652.P7900635416285769647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A322630 ⌈(Nat.lor 1 (2 * n) ^ 2 : ℚ) / 8⌉.toNat

end

end A218652.P7900635416285769647

/-! ## A218652.P10433865283599083843

`A218653(n)*A322630(ceil(xor(1, 2*n)²/8))`
-/

namespace A218652.P10433865283599083843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A322630 ⌈(Nat.xor 1 (2 * n) ^ 2 : ℚ) / 8⌉.toNat

end

end A218652.P10433865283599083843

/-! ## A218652.P15960367998398651469

`A218653(n)*A324293(A000079(n))`
-/

namespace A218652.P15960367998398651469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218653 n * A324293 (A000079 n).toNat

end

end A218652.P15960367998398651469

/-!
# A218653: E.g.f. A(x) satisfies A(x) = 1 + log(1 + x^2*A(x)^2)/x.

The programs for A218653, there is no canonical definition to state claims against.
-/

/-! ## A218653.P755491638091327672

`A218652(n+1)/(n+1)`
-/

namespace A218653.P755491638091327672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218652 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A218653.P755491638091327672

/-! ## A218653.P4353306515262316476

`abs(A218652(A005408(n)-n)/(A005408(n)-n))`
-/

namespace A218653.P4353306515262316476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A218652 (A005408 n - (n : ℤ)).toNat : ℚ) / (A005408 n - (n : ℤ) : ℚ)|

end

end A218653.P4353306515262316476

/-!
# A218654: Number of ways to write n as x+y with 0

The programs for A218654, there is no canonical definition to state claims against.
-/

/-! ## A218654.P3537354865133248838

`A001221(A058766(n)+A011631(n))`
-/

namespace A218654.P3537354865133248838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A058766 n + A011631 n).toNat

end

end A218654.P3537354865133248838

/-! ## A218654.P7352667549411483563

`A211272(A007093(n)+A001104(n+1))`
-/

namespace A218654.P7352667549411483563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (A007093 n + A001104 (n + 1)).toNat

end

end A218654.P7352667549411483563

/-! ## A218654.P4183877013970275733

`A279060(A102371(n+1)-A008619(n))`
-/

namespace A218654.P4183877013970275733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A102371 (n + 1) - A008619 n).toNat

end

end A218654.P4183877013970275733

/-! ## A218654.P2923668090736532262

`A072376(A059907(n+1)%A123277(n))`
-/

namespace A218654.P2923668090736532262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (Int.tmod (A059907 (n + 1)) (A123277 (n + 34))).toNat

end

end A218654.P2923668090736532262

/-! ## A218654.P6078078903084833170

`A072376(A059907(n+1))%A270565(n)`
-/

namespace A218654.P6078078903084833170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072376 (A059907 (n + 1)).toNat) (A270565 n)

end

end A218654.P6078078903084833170

/-!
# A218656: Number of ways to write 2n+1 as x+y with 0 < x < y and x^4 + y^4 prime.

The programs for A218656, there is no canonical definition to state claims against.
-/

/-! ## A218656.P3329860758461134340

`A053735(A315834(n)^A136711(n))`
-/

namespace A218656.P3329860758461134340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((A315834 n : ℚ) ^ (A136711 n : ℤ))).toNat

end

end A218656.P3329860758461134340

/-! ## A218656.P3730887862731906539

`A053735(C(A315834(n), A136711(n)))`
-/

namespace A218656.P3730887862731906539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Nat.choose (A315834 n).toNat (A136711 n).toNat)

end

end A218656.P3730887862731906539

/-! ## A218656.P11127873941758896894

`A122632(xor(4, A131189(n+1)))`
-/

namespace A218656.P11127873941758896894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122632 (Int.xor 4 (A131189 (n + 1))).toNat

end

end A218656.P11127873941758896894

/-!
# A218657: Number of n X 2 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218657, the canonical program `A218657.P17859511460360803181` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218657 has offset 1).

The definition of A218657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218657.P10135196592217052610

`ogf((3+6x+3x^2)/(1-3x-3x^2-3x^3))`
-/

namespace A218657.P10135196592217052610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 3] [1, -3, -3, -3] n

end

end A218657.P10135196592217052610

namespace A218657

/-- `ogf((3+6x+3x^2)/(1-3x-3x^2-3x^3))` -/
def P10135196592217052610.Spec : Prop :=
  ∀ n, P10135196592217052610.a n = A218657 (n + 1)

end A218657

/-! ## A218657.P17859511460360803181

`3*a(n-1)+3*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=15, a(2)=57`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218657

/-- `3*a(n-1)+3*a(n-2)+3*a(n-3)` -/
def P17859511460360803181.Spec : Prop :=
  ∀ n, (P17859511460360803181.a n : ℤ) = A218657 (n + 1)

theorem P17859511460360803181.correct : P17859511460360803181.Spec := by
  intro n
  simp only [A218657, Nat.add_sub_cancel]

end A218657

/-! ## A218657.P5293372062621038319

`A077836(n+1)+A077836(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A218657.P5293372062621038319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A077836 (n + 1) + A077836 (n + 1) - a (n - 1)

end

end A218657.P5293372062621038319

namespace A218657

/-- `A077836(n+1)+A077836(n+1)-a(n-1)` -/
def P5293372062621038319.Spec : Prop :=
  ∀ n, P5293372062621038319.a n = A218657 (n + 1)

end A218657

/-! ## A218657.P14259627750960541938

`sqrt(A218659(n+1))`
-/

namespace A218657.P14259627750960541938
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A218659 (n + 1) : ℝ)

end

end A218657.P14259627750960541938

namespace A218657

/-- `sqrt(A218659(n+1))` -/
def P14259627750960541938.Spec : Prop :=
  ∀ n, P14259627750960541938.a n = (A218657 (n + 1) : ℝ)

end A218657

/-! ## A218657.P12809365047390347936

`root(A218659(n+1), A227533(A227533(n+1)))`
-/

namespace A218657.P12809365047390347936
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218659 (n + 1) : ℝ) ^ (1 / (A227533 (A227533 (n + 1)).toNat : ℝ))

end

end A218657.P12809365047390347936

namespace A218657

/-- `root(A218659(n+1), A227533(A227533(n+1)))` -/
def P12809365047390347936.Spec : Prop :=
  ∀ n, P12809365047390347936.a n = (A218657 (n + 1) : ℝ)

end A218657

/-!
# A218658: Number of n X 3 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218658, there is no canonical definition to state claims against.
-/

/-! ## A218658.P1699024409727991303

`A218663(∑[n+2]+4)`
-/

namespace A218658.P1699024409727991303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218658.P1699024409727991303

/-! ## A218658.P13176870501684748627

`or(1, A218663(A167614(n+1)))`
-/

namespace A218658.P13176870501684748627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218663 (A167614 (n + 1)).toNat)

end

end A218658.P13176870501684748627

/-! ## A218658.P8167788261470498352

`A015970(n)*A218663(A167614(n+1))`
-/

namespace A218658.P8167788261470498352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A218663 (A167614 (n + 1)).toNat

end

end A218658.P8167788261470498352

/-! ## A218658.P16591337108369343132

`lcm(A087960(n), A218663(A167614(n+1)))`
-/

namespace A218658.P16591337108369343132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A218663 (A167614 (n + 1)).toNat)

end

end A218658.P16591337108369343132

/-! ## A218658.P1555793595279542148

`A218663(A167614(n+1))%A221442(n+1)`
-/

namespace A218658.P1555793595279542148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218663 (A167614 (n + 1)).toNat) (A221442 (n + 1))

end

end A218658.P1555793595279542148

/-!
# A218659: Number of n X 4 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218659, there is no canonical definition to state claims against.
-/

/-! ## A218659.P16461062451310085672

`A218657(n+1)²`
-/

namespace A218659.P16461062451310085672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218657 (n + 1) ^ 2

end

end A218659.P16461062451310085672

/-! ## A218659.P2813824427196780041

`A218663(∑[n+1]+2)²`
-/

namespace A218659.P2813824427196780041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A218659.P2813824427196780041

/-! ## A218659.P14107986102796630699

`A218663(A052905(n)+9)`
-/

namespace A218659.P14107986102796630699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A052905 n + 9).toNat

end

end A218659.P14107986102796630699

/-! ## A218659.P15153194411474256690

`A218663(A167614(n+2)+1)`
-/

namespace A218659.P15153194411474256690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A167614 (n + 2) + 1).toNat

end

end A218659.P15153194411474256690

/-! ## A218659.P10749673405669473268

`A218663(A374004(n+1))`
-/

namespace A218659.P10749673405669473268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A374004 (n + 1)).toNat

end

end A218659.P10749673405669473268

/-!
# A218660: Number of n X 5 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218660, there is no canonical definition to state claims against.
-/

/-! ## A218660.P10293999026983297020

`A218663(A167499(n+3))`
-/

namespace A218660.P10293999026983297020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A167499 (n + 3)).toNat

end

end A218660.P10293999026983297020

/-! ## A218660.P11034420014044047694

`A218663(A000096(n+3)+6)`
-/

namespace A218660.P11034420014044047694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A000096 (n + 3) + 6).toNat

end

end A218660.P11034420014044047694

/-! ## A218660.P11697382832475531558

`A218663(eq[6, A131818(n+1)])`
-/

namespace A218660.P11697382832475531558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218660.P11697382832475531558

/-! ## A218660.P10846107827800375278

`A218663(Δ[A264443(n)])`
-/

namespace A218660.P10846107827800375278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (f1 (n + 1) - f1 n).toNat

end

end A218660.P10846107827800375278

/-! ## A218660.P7546217923582278750

`A218663(A374005(n+1))`
-/

namespace A218660.P7546217923582278750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A374005 (n + 1)).toNat

end

end A218660.P7546217923582278750

/-!
# A218661: Number of n X 6 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218661, there is no canonical definition to state claims against.
-/

/-! ## A218661.P2348955114116573771

`A218663(A000217(n+5)+6)`
-/

namespace A218661.P2348955114116573771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A000217 (n + 5) + 6).toNat

end

end A218661.P2348955114116573771

/-! ## A218661.P14677373942862787154

`A218663(eq[7, A131818(n+1)])`
-/

namespace A218661.P14677373942862787154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218661.P14677373942862787154

/-! ## A218661.P12322086949718067112

`A218663(A374007(n+1))`
-/

namespace A218661.P12322086949718067112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A374007 (n + 1)).toNat

end

end A218661.P12322086949718067112

/-! ## A218661.P16492735257361762915

`A218663(A052905(n+3))`
-/

namespace A218661.P16492735257361762915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A052905 (n + 3)).toNat

end

end A218661.P16492735257361762915

/-! ## A218661.P3832565034278304537

`A218663(eq[3, A219347(n)])`
-/

namespace A218661.P3832565034278304537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218661.P3832565034278304537

/-!
# A218662: Number of n X 7 binary arrays with every 0 a king-move neighbor to some 1.

The programs for A218662, there is no canonical definition to state claims against.
-/

/-! ## A218662.P15853231255039759627

`A218663(eq[11, A066657(n)])`
-/

namespace A218662.P15853231255039759627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218662.P15853231255039759627

/-! ## A218662.P17871966825446784119

`A218663(eq[8, A131818(n+1)])`
-/

namespace A218662.P17871966825446784119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218662.P17871966825446784119

/-! ## A218662.P8069989434543379624

`A218663(A374008(n+1))`
-/

namespace A218662.P8069989434543379624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (A374008 (n + 1)).toNat

end

end A218662.P8069989434543379624

/-! ## A218662.P6981026056568588306

`A218663(eq[4, A219347(n)])`
-/

namespace A218662.P6981026056568588306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218662.P6981026056568588306

/-! ## A218662.P15733470502621160076

`A218663(eq[6, A193592(n)])`
-/

namespace A218662.P15733470502621160076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218662.P15733470502621160076

/-!
# A218663: T(n,k) = number of n X k binary arrays with every 0 a king-move neighbor to some 1, n >= 1, k >= 1, read by antidiagonals.

The programs for A218663, there is no canonical definition to state claims against.
-/

/-! ## A218663.P8374335517194082496

`or(A118180(n), A218426(A070938(n+1)))`
-/

namespace A218663.P8374335517194082496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118180 n) (A218426 (A070938 (n + 1)).toNat)

end

end A218663.P8374335517194082496

/-! ## A218663.P10440889084708300653

`or(A118180(n), A218426(A077739(n+1)))`
-/

namespace A218663.P10440889084708300653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118180 n) (A218426 (A077739 (n + 1)).toNat)

end

end A218663.P10440889084708300653

/-! ## A218663.P3992524522272358376

`or(A154334(n), A218354(A070938(n+1)))`
-/

namespace A218663.P3992524522272358376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154334 n) (A218354 (A070938 (n + 1)).toNat)

end

end A218663.P3992524522272358376

/-! ## A218663.P6305759131776008673

`or(A154334(n), A218354(A077739(n+1)))`
-/

namespace A218663.P6305759131776008673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154334 n) (A218354 (A077739 (n + 1)).toNat)

end

end A218663.P6305759131776008673

/-! ## A218663.P17022902598864723562

`A201625(n+1)+A008836(A000108(n+1))`
-/

namespace A218663.P17022902598864723562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201625 (n + 1) + A008836 (A000108 (n + 1)).toNat

end

end A218663.P17022902598864723562

/-!
# A218665: Numbers k that divide the sum of the first k numbers from Flavius Josephus's sieve (A099074).

The programs for A218665, there is no canonical definition to state claims against.
-/

/-! ## A218665.P3322517455300072342

`lt[A099074(n)%(n+1), 1]+1`
-/

namespace A218665.P3322517455300072342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099074 n) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A218665.P3322517455300072342

/-!
# A218666: Triangular array read by rows: T(n,k) is the number of unlabeled rooted trees with n nodes in which the largest subtree (of the root) has exactly k nodes; n>=2, 1<=k<=n-1.

The programs for A218666, there is no canonical definition to state claims against.
-/

/-! ## A218666.P8630244809105919845

`dr(A003963(A131209(A156564(n))))`
-/

namespace A218666.P8630244809105919845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003963 (A131209 (A156564 n).toNat).toNat)

end

end A218666.P8630244809105919845

/-! ## A218666.P6575626211793197611

`A316473(A002260(n+1))+A001222(A347811(n))`
-/

namespace A218666.P6575626211793197611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316473 (A002260 (n + 1)).toNat + A001222 (A347811 n).toNat

end

end A218666.P6575626211793197611

/-!
# A218667: O.g.f.: Sum_{n>=0} 1/(1-n*x)^n * x^n/n! * exp(-x/(1-n*x)).

The programs for A218667, there is no canonical definition to state claims against.
-/

/-! ## A218667.P14601112735193475850

`A008676(A006095(n)+n²)`
-/

namespace A218667.P14601112735193475850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A006095 n + (n ^ 2 : ℤ)).toNat

end

end A218667.P14601112735193475850

/-! ## A218667.P5422370513634243112

`A008676(A062880(n)+A006095(n))`
-/

namespace A218667.P5422370513634243112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A062880 n + A006095 n).toNat

end

end A218667.P5422370513634243112

/-! ## A218667.P17502314449504490710

`A228062(A002379(n))-A300660(n)`
-/

namespace A218667.P17502314449504490710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228062 (A002379 n).toNat - A300660 n

end

end A218667.P17502314449504490710

/-! ## A218667.P9412552995390981437

`A085856(A352279(n+1))+A008617(n)`
-/

namespace A218667.P9412552995390981437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085856 (A352279 (n + 1)).toNat + A008617 n

end

end A218667.P9412552995390981437

/-!
# A218668: O.g.f.: Sum_{n>=0} 1/(1-n^2*x)^n * x^n/n! * exp(-x/(1-n^2*x)).

The programs for A218668, there is no canonical definition to state claims against.
-/

/-! ## A218668.P3004701620356466522

`A085855(∏[floor((n+1)*root(90, 8))])`
-/

namespace A218668.P3004701620356466522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (90 : ℝ) ^ (1 / (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218668.P3004701620356466522

/-! ## A218668.P2859897487330760022

`A289495(A223897(n)+n)`
-/

namespace A218668.P2859897487330760022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (A223897 n + (n : ℤ)).toNat

end

end A218668.P2859897487330760022

/-!
# A218669: O.g.f.: Sum_{n>=0} 1/(1-n^3*x)^n * x^n/n! * exp(-x/(1-n^3*x)).

The programs for A218669, there is no canonical definition to state claims against.
-/

/-! ## A218669.P10151296117714332555

`A345439(xor(n, A201594(n)))`
-/

namespace A218669.P10151296117714332555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (Int.xor (n : ℤ) (A201594 n)).toNat

end

end A218669.P10151296117714332555

/-! ## A218669.P14283631785080094034

`A103221(A052700(n))+A052715(n)`
-/

namespace A218669.P14283631785080094034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A052700 n).toNat + A052715 n

end

end A218669.P14283631785080094034

/-!
# A218670: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^n * x^n/n! * exp(-n*x*(1+n*x)).

The programs for A218670, there is no canonical definition to state claims against.
-/

/-! ## A218670.P7270075341358778868

`A167661(A162147(n)^A195174(n))`
-/

namespace A218670.P7270075341358778868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (SequenceMachineLib.roundAway ((A162147 n : ℚ) ^ (A195174 n : ℤ))).toNat

end

end A218670.P7270075341358778868

/-! ## A218670.P7419430092008077126

`A167661(A162147(n)^A257565(n))`
-/

namespace A218670.P7419430092008077126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (SequenceMachineLib.roundAway ((A162147 n : ℚ) ^ (A257565 n : ℤ))).toNat

end

end A218670.P7419430092008077126

/-! ## A218670.P8927256549100525234

`A167661(A162147(n)^A279222(n))`
-/

namespace A218670.P8927256549100525234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167661 (SequenceMachineLib.roundAway ((A162147 n : ℚ) ^ (A279222 n : ℤ))).toNat

end

end A218670.P8927256549100525234

/-!
# A218671: O.g.f.: Sum_{n>=0} n^(2*n) * (1+n*x)^n * x^n/n! * exp(-n^2*x*(1+n*x)).

The programs for A218671, there is no canonical definition to state claims against.
-/

/-! ## A218671.P4447150175550635734

`A101921((3*n-1)*a(n-1))` with `a(0)=1`
-/

namespace A218671.P4447150175550635734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101921 (((3 * n : ℤ) - 1) * a (n - 1)).toNat

end

end A218671.P4447150175550635734

/-!
# A218672: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n*x)^n/n! * exp(-n*x*A(n*x)).

The programs for A218672, there is no canonical definition to state claims against.
-/

/-! ## A218672.P5727504537271863104

`A210357(A221864(n)+1)`
-/

namespace A218672.P5727504537271863104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A221864 n + 1).toNat

end

end A218672.P5727504537271863104

/-! ## A218672.P1208875943734794398

`A244327(A244327(6^n)+1)`
-/

namespace A218672.P1208875943734794398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244327 (A244327 (6 ^ n) + 1).toNat

end

end A218672.P1208875943734794398

/-!
# A218673: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(2*n)/n! * exp(-n*x*A(n*x)^2).

The programs for A218673, there is no canonical definition to state claims against.
-/

/-! ## A218673.P11071893026521548969

`A008350(∑[4^n])`
-/

namespace A218673.P11071893026521548969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218673.P11071893026521548969

/-!
# A218674: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(3*n)/n! * exp(-n*x*A(n*x)^3).

The programs for A218674, there is no canonical definition to state claims against.
-/

/-! ## A218674.P5554868876983244723

`A130936(A293193(n))`
-/

namespace A218674.P5554868876983244723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 (A293193 n).toNat

end

end A218674.P5554868876983244723

/-!
# A218675: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(4*n)/n! * exp(-n*x*A(n*x)^4).

The programs for A218675, there is no canonical definition to state claims against.
-/

/-! ## A218675.P469508127112965592

`ceil(A316784(10^n)/(n+1))`
-/

namespace A218675.P469508127112965592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316784 (10 ^ n) : ℚ) / (n + 1 : ℚ)⌉

end

end A218675.P469508127112965592

/-!
# A218676: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n*A(n*x)^(5*n)/n! * exp(-n*x*A(n*x)^5).

The programs for A218676, there is no canonical definition to state claims against.
-/

/-! ## A218676.P4625760378487244070

`round(A283050(∑[(2*n)^n]+1)/10)`
-/

namespace A218676.P4625760378487244070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A283050 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 10)

end

end A218676.P4625760378487244070

/-!
# A218677: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^(2*n) * x^n/n! * exp(-n*x*(1+n*x)^2).

The programs for A218677, there is no canonical definition to state claims against.
-/

/-! ## A218677.P15256954429593113286

`A159477(A000831(n))-n`
-/

namespace A218677.P15256954429593113286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A000831 n).toNat - (n : ℤ)

end

end A218677.P15256954429593113286

/-! ## A218677.P16803291308229303667

`A002264(A222472(n+1)+2)`
-/

namespace A218677.P16803291308229303667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A222472 (n + 1) + 2).toNat

end

end A218677.P16803291308229303667

/-!
# A218678: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^(3*n) * x^n/n! * exp(-n*x*(1+n*x)^3).

The programs for A218678, there is no canonical definition to state claims against.
-/

/-! ## A218678.P3800653116556519482

`A103221(or(5, A284816(n+1)))`
-/

namespace A218678.P3800653116556519482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 5 (A284816 (n + 1))).toNat

end

end A218678.P3800653116556519482

/-! ## A218678.P4297555561005212770

`A008615(or(7, A284816(n+1)))`
-/

namespace A218678.P4297555561005212770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor 7 (A284816 (n + 1))).toNat

end

end A218678.P4297555561005212770

/-!
# A218679: O.g.f.: Sum_{n>=0} n^n * (1+n*x)^(4*n) * x^n/n! * exp(-n*x*(1+n*x)^4).

The programs for A218679, there is no canonical definition to state claims against.
-/

/-! ## A218679.P11581649166163574492

`A215698(n+1)+A054142(A000110(n))`
-/

namespace A218679.P11581649166163574492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1) + A054142 (A000110 n).toNat

end

end A218679.P11581649166163574492

/-! ## A218679.P15716937199095901071

`A215698(n+1)+A007318(A278074(n))`
-/

namespace A218679.P15716937199095901071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215698 (n + 1) + A007318 (A278074 n).toNat

end

end A218679.P15716937199095901071

/-!
# A218680: O.g.f.: A(x) = Sum_{n>=0} n^n*x^n/(1-n*x)^(2*n)/n! * exp(-n*x/(1-n*x)^2).

The programs for A218680, there is no canonical definition to state claims against.
-/

/-! ## A218680.P11613315542287979259

`A057361(A000309(n))+1`
-/

namespace A218680.P11613315542287979259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A000309 n).toNat + 1

end

end A218680.P11613315542287979259

/-! ## A218680.P9504408187755469734

`A057354(A192941(n))+1`
-/

namespace A218680.P9504408187755469734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A192941 n).toNat + 1

end

end A218680.P9504408187755469734

/-!
# A218681: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A(n^2*x)^n/n! * exp(-n*x*A(n^2*x)).

The programs for A218681, there is no canonical definition to state claims against.
-/

/-! ## A218681.P16949811444967053412

`A351628(n!)`
-/

namespace A218681.P16949811444967053412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351628 (Nat.factorial n)

end

end A218681.P16949811444967053412

/-!
# A218682: E.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n/n! * A(n*x)^n.

The programs for A218682, there is no canonical definition to state claims against.
-/

/-! ## A218682.P6296561837868688526

`n*A132141(n*a(n-1))` with `a(0)=1`
-/

namespace A218682.P6296561837868688526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A132141 ((n : ℤ) * a (n - 1)).toNat

end

end A218682.P6296561837868688526

/-!
# A218683: E.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n/n! * A(n*x).

The programs for A218683, there is no canonical definition to state claims against.
-/

/-! ## A218683.P6312687528589414717

`n*A262378(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A218683.P6312687528589414717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A262378 (a (n - 1) + 1).toNat

end

end A218683.P6312687528589414717

/-!
# A218685: O.g.f.: Sum_{n>=0} (1+n^3*x)^n * x^n/n! * exp(-(1+n^3*x)*x).

The programs for A218685, there is no canonical definition to state claims against.
-/

/-! ## A218685.P1775904196883343355

`A081753(A034726(n+1))`
-/

namespace A218685.P1775904196883343355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A034726 (n + 1)).toNat

end

end A218685.P1775904196883343355

/-! ## A218685.P5830213314379326816

`A003144(A227038(a(n-2)+6))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A218685.P5830213314379326816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 6] fun n a =>
  A003144 (A227038 (a (n - 2) + 6).toNat).toNat

end

end A218685.P5830213314379326816

/-!
# A218686: O.g.f.: Sum_{n>=0} n^n * (1+n^2*x)^n * x^n/n! * exp(-n*(1+n^2*x)*x).

The programs for A218686, there is no canonical definition to state claims against.
-/

/-! ## A218686.P12259756807066146584

`A123108(A285654(n)+A060882(n))`
-/

namespace A218686.P12259756807066146584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A285654 n + A060882 n).toNat

end

end A218686.P12259756807066146584

/-! ## A218686.P13203704289236453867

`A019446(or(A085295(n), A320733(n)))`
-/

namespace A218686.P13203704289236453867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (Int.lor (A085295 n) (A320733 n)).toNat

end

end A218686.P13203704289236453867

/-!
# A218687: O.g.f.: Sum_{n>=0} n^n * (1+n^3*x)^n * x^n/n! * exp(-n*(1+n^3*x)*x).

The programs for A218687, there is no canonical definition to state claims against.
-/

/-! ## A218687.P5397465615559712013

`∏{p}[A102726(∑[n])², #]`
-/

namespace A218687.P5397465615559712013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A218687.P5397465615559712013

/-!
# A218688: Number of ways to linearly arrange the trees over all forests on n labeled nodes.

The programs for A218688, there is no canonical definition to state claims against.
-/

/-! ## A218688.P6204690547243625423

`A107878(n)+A098852(3*n+1)`
-/

namespace A218688.P6204690547243625423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107878 n + A098852 (3 * n + 1)

end

end A218688.P6204690547243625423

/-! ## A218688.P16865781146498473067

`A228708(A120588(n))+A107878(n)`
-/

namespace A218688.P16865781146498473067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A120588 n).toNat + A107878 n

end

end A218688.P16865781146498473067

/-! ## A218688.P14800239423443927166

`A380986(A005867(n))+A107878(n)`
-/

namespace A218688.P14800239423443927166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380986 (A005867 n).toNat + A107878 n

end

end A218688.P14800239423443927166

/-!
# A218691: Number of ways to paint some (possibly none or all) of the trees over all forests on n labeled nodes.

The programs for A218691, there is no canonical definition to state claims against.
-/

/-! ## A218691.P223139605377817206

`A178772(A350662(2*n+1)+1)`
-/

namespace A218691.P223139605377817206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (A350662 (2 * n + 1) + 1).toNat

end

end A218691.P223139605377817206

/-! ## A218691.P9715838749323199004

`A004523(A084262(n)+A006605(n))`
-/

namespace A218691.P9715838749323199004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A084262 n + A006605 n).toNat

end

end A218691.P9715838749323199004

/-!
# A218695: Square array A(h,k) = (2^h-1)*A(h,k-1) + Sum_{i=1..h-1} binomial(h,h-i)*2^i*A(i,k-1), with A(1,k) = A(h,1) = 1; read by antidiagonals.

The programs for A218695, there is no canonical definition to state claims against.
-/

/-! ## A218695.P9207295044496599853

`A173068(A059922(n))+A004273(A022167(n))`
-/

namespace A218695.P9207295044496599853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A059922 n).toNat + A004273 (A022167 n).toNat

end

end A218695.P9207295044496599853

/-! ## A218695.P15249528450027299492

`A173068(A208879(n)²)+A004273(A022167(n))`
-/

namespace A218695.P15249528450027299492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A208879 n ^ 2).toNat + A004273 (A022167 n).toNat

end

end A218695.P15249528450027299492

/-! ## A218695.P167252435540923637

`A053738(A157523(n)%A240902(n+1))`
-/

namespace A218695.P167252435540923637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (Int.tmod (A157523 n) (A240902 (n + 1))).toNat

end

end A218695.P167252435540923637

/-! ## A218695.P8214150323392067961

`A082226(A022167(n))`
-/

namespace A218695.P8214150323392067961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A022167 n).toNat

end

end A218695.P8214150323392067961

/-! ## A218695.P10772538806251118725

`A137451(A056940(n))`
-/

namespace A218695.P10772538806251118725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137451 (A056940 n).toNat

end

end A218695.P10772538806251118725

/-!
# A218696: Number of components over all graphs on n labeled nodes with unicyclic components (graphs counted by A137916).

The programs for A218696, there is no canonical definition to state claims against.
-/

/-! ## A218696.P10858782297409711670

`A134362(n+3)/A134339(A134350(n+1))`
-/

namespace A218696.P10858782297409711670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134362 (n + 3) : ℚ) / (A134339 (A134350 (n + 1)).toNat : ℚ)

end

end A218696.P10858782297409711670

/-!
# A218697: Semiprimes that can be written in the form x^2 + 5*y^2 with x, y > 0.

The programs for A218697, the canonical program `A218697.P15989170104601870858` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218697 has offset 1).

The definition of A218697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218697.P10839895539270088069

`filter[A154778(n+1), A064911(#)]`
-/

namespace A218697.P10839895539270088069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A218697.P10839895539270088069

namespace A218697

/-- `filter[A154778(n+1), A064911(#)]` -/
def P10839895539270088069.Spec : Prop :=
  ∀ n, P10839895539270088069.a n = A218697 (n + 1)

end A218697

/-! ## A218697.P15989170104601870858

`∩[A001358(n+1), A154778(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A218697

/-- `∩[A001358(n+1), A154778(n+1)]` -/
def P15989170104601870858.Spec : Prop :=
  ∀ n, (P15989170104601870858.a n : ℤ) = A218697 (n + 1)

theorem P15989170104601870858.correct : P15989170104601870858.Spec := by
  intro n
  simp only [A218697, Nat.add_sub_cancel]

end A218697

/-! ## A218697.P18065892625780249404

`∩[A154778(n+1), A176540(n+1)]`
-/

namespace A218697.P18065892625780249404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218697.P18065892625780249404

namespace A218697

/-- `∩[A154778(n+1), A176540(n+1)]` -/
def P18065892625780249404.Spec : Prop :=
  ∀ n, (P18065892625780249404.a n : ℤ) = A218697 (n + 1)

end A218697

/-! ## A218697.P1428057634656346617

`record[A179312(A154778(n+1))]`
-/

namespace A218697.P1428057634656346617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A154778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218697.P1428057634656346617

namespace A218697

/-- `record[A179312(A154778(n+1))]` -/
def P1428057634656346617.Spec : Prop :=
  ∀ n, P1428057634656346617.a n = A218697 (n + 1)

end A218697

/-! ## A218697.P6257146900424301727

`eq[A107393(A033718(n)), A226378(n)]`
-/

namespace A218697.P6257146900424301727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A033718 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218697.P6257146900424301727

namespace A218697

/-- `eq[A107393(A033718(n)), A226378(n)]` -/
def P6257146900424301727.Spec : Prop :=
  ∀ n, (P6257146900424301727.a n : ℤ) = A218697 (n + 1)

end A218697

/-! ## A218697.P6538327158578842233

`eq[A077462(n), A317951(A033718(n))]`
-/

namespace A218697.P6538327158578842233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317951 (A033718 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218697.P6538327158578842233

namespace A218697

/-- `eq[A077462(n), A317951(A033718(n))]` -/
def P6538327158578842233.Spec : Prop :=
  ∀ n, (P6538327158578842233.a n : ℤ) = A218697 (n + 1)

end A218697

/-!
# A218699: Number of partitions of n in which any two distinct parts differ by at least 4.

The programs for A218699, there is no canonical definition to state claims against.
-/

/-! ## A218699.P492768183874579987

`A218698(A077169(n)-1+n)`
-/

namespace A218699.P492768183874579987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A077169 n - 1 + (n : ℤ)).toNat

end

end A218699.P492768183874579987

/-! ## A218699.P13635294356290515693

`A218698(n-(1-A077169(n)))`
-/

namespace A218699.P13635294356290515693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 ((n : ℤ) - (1 - A077169 n)).toNat

end

end A218699.P13635294356290515693

/-! ## A218699.P11488247860656322802

`A218698(A023443(A077169(n)+n))`
-/

namespace A218699.P11488247860656322802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A023443 (A077169 n + (n : ℤ)).toNat).toNat

end

end A218699.P11488247860656322802

/-! ## A218699.P16081167019587401976

`A218698(n-A024000(A077169(n)))`
-/

namespace A218699.P16081167019587401976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 ((n : ℤ) - A024000 (A077169 n).toNat).toNat

end

end A218699.P16081167019587401976

