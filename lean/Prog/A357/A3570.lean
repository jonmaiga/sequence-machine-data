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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A357000: Number of non-isomorphic cyclic Haar graphs on 2*n nodes.

The programs for A357000, there is no canonical definition to state claims against.
-/

/-! ## A357000.P6154984617112937674

`A002729(n+1)-A006337(A293157(n+1))`
-/

namespace A357000.P6154984617112937674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 (n + 1) - A006337 (A293157 (n + 1)).toNat

end

end A357000.P6154984617112937674

/-! ## A357000.P17465513892558784301

`runs[A070939(A137706(n+1))]`
-/

namespace A357000.P17465513892558784301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A137706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A357000.P17465513892558784301

/-! ## A357000.P6179894543282810371

`A002729(n+1)-A072911(A006082(n+1))`
-/

namespace A357000.P6179894543282810371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 (n + 1) - A072911 (A006082 (n + 1)).toNat

end

end A357000.P6179894543282810371

/-! ## A357000.P7002568477460682077

`A056415(n+1)+A005171(A056411(n+2))`
-/

namespace A357000.P7002568477460682077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056415 (n + 1) + A005171 (A056411 (n + 2)).toNat

end

end A357000.P7002568477460682077

/-! ## A357000.P15073230986624991991

`A002729(n+1)-A088569(A376662(n))`
-/

namespace A357000.P15073230986624991991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 (n + 1) - A088569 (A376662 n).toNat

end

end A357000.P15073230986624991991

/-!
# A357001: a(n) = A002729(n) - A357000(n) - 1.

The programs for A357001, there is no canonical definition to state claims against.
-/

/-! ## A357001.P17944972303670885645

`A002729(n+1)-A357000(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357001.P17944972303670885645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002729 (n + 1) - A357000 (n + 1) - 1

end

end A357001.P17944972303670885645

/-! ## A357001.P8716819482755324287

`A056415(n+1)+1-A357000(n+1)`
-/

namespace A357001.P8716819482755324287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056415 (n + 1) + (1 - A357000 (n + 1))

end

end A357001.P8716819482755324287

/-! ## A357001.P2605147395768934374

`A308364(A244171(n+9))`
-/

namespace A357001.P2605147395768934374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (A244171 (n + 9)).toNat

end

end A357001.P2605147395768934374

/-! ## A357001.P5377130371743195783

`A053200(A225499(3*n+2)+n)`
-/

namespace A357001.P5377130371743195783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (A225499 (3 * n + 2) + (n : ℤ)).toNat

end

end A357001.P5377130371743195783

/-! ## A357001.P863824162494377169

`A350898(∏{p}[A188866(n+1)+n-2, #])`
-/

namespace A357001.P863824162494377169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188866 (n + 1) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350898 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A357001.P863824162494377169

/-!
# A357003: Number of Hamiltonian cycles in the cyclic Haar graph with index n.

The programs for A357003, there is no canonical definition to state claims against.
-/

/-! ## A357003.P8301264806053316238

`A343464(A211097(n+1)²)`
-/

namespace A357003.P8301264806053316238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343464 (A211097 (n + 1) ^ 2).toNat

end

end A357003.P8301264806053316238

/-! ## A357003.P7191849623669676920

`A030161(A211097(n+1)!)`
-/

namespace A357003.P7191849623669676920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030161 (Nat.factorial (A211097 (n + 1)).toNat)

end

end A357003.P7191849623669676920

/-! ## A357003.P17373467176931754722

`A217032(A211097(n+1)!)`
-/

namespace A357003.P17373467176931754722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217032 (Nat.factorial (A211097 (n + 1)).toNat)

end

end A357003.P17373467176931754722

/-! ## A357003.P13956342036112645922

`A343464(A211097(n+1)^2)`
-/

namespace A357003.P13956342036112645922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343464 (A211097 (n + 1) ^ 2).toNat

end

end A357003.P13956342036112645922

/-! ## A357003.P15555690377827534791

`A023416(A211097(n+1)!!)`
-/

namespace A357003.P15555690377827534791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Nat.factorial (Nat.factorial (A211097 (n + 1)).toNat))

end

end A357003.P15555690377827534791

/-!
# A357004: Smallest k for which the cyclic Haar graphs with indices k and n are isomorphic.

The programs for A357004, there is no canonical definition to state claims against.
-/

/-! ## A357004.P8898522027207445238

`A357005(n+1)+A036987(A120622(n+1))`
-/

namespace A357004.P8898522027207445238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) + A036987 (A120622 (n + 1)).toNat

end

end A357004.P8898522027207445238

/-! ## A357004.P4995183419315808876

`A357005(n+1)+A000007(A370567(n+1))`
-/

namespace A357004.P4995183419315808876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) + A000007 (A370567 (n + 1)).toNat

end

end A357004.P4995183419315808876

/-! ## A357004.P1863291471731233513

`A357005(n+1)+A354097(A048413(n+1))`
-/

namespace A357004.P1863291471731233513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) + A354097 (A048413 (n + 1)).toNat

end

end A357004.P1863291471731233513

/-! ## A357004.P3123077636462150898

`A002260(A000124(n+4))*A357005(n+1)`
-/

namespace A357004.P3123077636462150898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 (n + 4)).toNat * A357005 (n + 1)

end

end A357004.P3123077636462150898

/-! ## A357004.P3101130194792084827

`A000035(A171832(n+4))*A357005(n+1)`
-/

namespace A357004.P3101130194792084827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A171832 (n + 4)).toNat * A357005 (n + 1)

end

end A357004.P3101130194792084827

/-! ## A357004.P9703799348029962183

`A357005(n+1)%A226380(A101864(n+1))`
-/

namespace A357004.P9703799348029962183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357005 (n + 1)) (A226380 (A101864 (n + 1)).toNat)

end

end A357004.P9703799348029962183

/-! ## A357004.P15942293689207662239

`A357005(n+1)+A000007(A014011(3*(n+1)))`
-/

namespace A357004.P15942293689207662239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) + A000007 (A014011 (3 * (n + 1))).toNat

end

end A357004.P15942293689207662239

/-! ## A357004.P8443115400072153392

`A357005(gcd(n+1, A072486(n+1)))`
-/

namespace A357004.P8443115400072153392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (Int.gcd (n + 1 : ℤ) (A072486 (n + 1)))

end

end A357004.P8443115400072153392

/-! ## A357004.P16080733755627148830

`A060576(A235394(n+1))*A357005(n+1)`
-/

namespace A357004.P16080733755627148830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A235394 (n + 1)).toNat * A357005 (n + 1)

end

end A357004.P16080733755627148830

/-! ## A357004.P5123408971199049585

`A357005(n+1)+A185013(A023896(n+4))`
-/

namespace A357004.P5123408971199049585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) + A185013 (A023896 (n + 4)).toNat

end

end A357004.P5123408971199049585

/-! ## A357004.P9645784717087473207

`A334230(A000124(n))*A357005(n+1)`
-/

namespace A357004.P9645784717087473207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334230 (A000124 n).toNat * A357005 (n + 1)

end

end A357004.P9645784717087473207

/-! ## A357004.P216832016339693344

`A357005(n+1)+A000038(A007318(n))`
-/

namespace A357004.P216832016339693344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) + A000038 (A007318 n).toNat

end

end A357004.P216832016339693344

/-! ## A357004.P12964730881625922713

`A357005(n+1)%A357020(n+1)`
-/

namespace A357004.P12964730881625922713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357005 (n + 1)) (A357020 (n + 1))

end

end A357004.P12964730881625922713

/-! ## A357004.P296297732058103028

`A357005(n+1)-A066799(∑[n+1])+1`
-/

namespace A357004.P296297732058103028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1) - A066799 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A357004.P296297732058103028

/-! ## A357004.P8446383690659831597

`A357005(n+1)%p?[A233312(n)]`
-/

namespace A357004.P8446383690659831597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357005 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A357004.P8446383690659831597

/-! ## A357004.P1683218082324079873

`and(A357005(n+1), A381707(n+1))`
-/

namespace A357004.P1683218082324079873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A357005 (n + 1)) (A381707 (n + 1))

end

end A357004.P1683218082324079873

/-! ## A357004.P8610350941531345119

`A357005(A357005(n+1))%A356984(2*n+2)`
-/

namespace A357004.P8610350941531345119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357005 (A357005 (n + 1)).toNat) (A356984 (2 * n + 2))

end

end A357004.P8610350941531345119

/-! ## A357004.P4564335201876626310

`and(A086827(n+1), A357005(n+1))`
-/

namespace A357004.P4564335201876626310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A357005 (n + 1))

end

end A357004.P4564335201876626310

/-!
# A357006: Numbers k that are the smallest of all numbers that are cyclically equivalent to k.

The programs for A357006, there is no canonical definition to state claims against.
-/

/-! ## A357006.P5097993362068564262

`record[A357005(n+1)]`
-/

namespace A357006.P5097993362068564262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357006.P5097993362068564262

/-! ## A357006.P6232158770397145774

`eq[n, A357005(abs(1-n)+1)]`
-/

namespace A357006.P6232158770397145774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357006.P6232158770397145774

/-! ## A357006.P3315681153053243545

`A357005(lt[n, A357005(n+1)]+1)`
-/

namespace A357006.P3315681153053243545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A357006.P3315681153053243545

/-!
# A357007: Number of vertices in an equilateral triangle when n internal equilateral triangles are drawn between the 3n points that divide each side into n+1 equal parts.

The programs for A357007, there is no canonical definition to state claims against.
-/

/-! ## A357007.P10464087131859887559

`A357008(n)-A356984(n)+1`
-/

namespace A357007.P10464087131859887559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357008 n - A356984 n + 1

end

end A357007.P10464087131859887559

/-! ## A357007.P14166619340436499664

`A357008(n)+1-A356984(n)`
-/

namespace A357007.P14166619340436499664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357008 n + 1 - A356984 n

end

end A357007.P14166619340436499664

/-! ## A357007.P7336680960310208474

`A357008(n)-(A356984(n)-A007318(A000217(n)))`
-/

namespace A357007.P7336680960310208474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357008 n - (A356984 n - A007318 (A000217 n).toNat)

end

end A357007.P7336680960310208474

/-! ## A357007.P2078351967317449292

`A357008(n)+A024000(A356984(n))`
-/

namespace A357007.P2078351967317449292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357008 n + A024000 (A356984 n).toNat

end

end A357007.P2078351967317449292

/-! ## A357007.P11905053055014474963

`A020725(A357008(n)-A356984(n))`
-/

namespace A357007.P11905053055014474963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A357008 n - A356984 n).toNat

end

end A357007.P11905053055014474963

/-! ## A357007.P1725868475089032474

`2-A024000(A357008(n)-A356984(n))`
-/

namespace A357007.P1725868475089032474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A357008 n - A356984 n).toNat

end

end A357007.P1725868475089032474

/-!
# A357008: Number of edges in an equilateral triangle when n internal equilateral triangles are drawn between the 3n points that divide each side into n+1 equal parts.

The programs for A357008, there is no canonical definition to state claims against.
-/

/-! ## A357008.P8800033218711302623

`A356984(n)+A357007(n)-1`
-/

namespace A357008.P8800033218711302623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356984 n + A357007 n - 1

end

end A357008.P8800033218711302623

/-! ## A357008.P16677732339839994339

`A356984(n)+A023443(A357007(n))`
-/

namespace A357008.P16677732339839994339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356984 n + A023443 (A357007 n).toNat

end

end A357008.P16677732339839994339

/-! ## A357008.P17439847365219682145

`A014681(A357007(n)+A356984(n))`
-/

namespace A357008.P17439847365219682145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A357007 n + A356984 n).toNat

end

end A357008.P17439847365219682145

/-! ## A357008.P9308847682152744081

`A199969(A357007(n)+A356984(n))`
-/

namespace A357008.P9308847682152744081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A357007 n + A356984 n).toNat

end

end A357008.P9308847682152744081

/-! ## A357008.P18359098167253666466

`A357254(∪[A000217(n), A337001(n)]+3)`
-/

namespace A357008.P18359098167253666466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337001 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357254 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 3)

end

end A357008.P18359098167253666466

/-!
# A357009: E.g.f. satisfies log(A(x)) = (exp(x) - 1)^2 * A(x).

The programs for A357009, there is no canonical definition to state claims against.
-/

/-! ## A357009.P5822553493902960753

`A074722(A378267(n+1))`
-/

namespace A357009.P5822553493902960753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074722 (A378267 (n + 1)).toNat

end

end A357009.P5822553493902960753

/-! ## A357009.P10118522676021209591

`A260683(A283166(n)+A249476(n))`
-/

namespace A357009.P10118522676021209591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 (A283166 n + A249476 n).toNat

end

end A357009.P10118522676021209591

/-!
# A357010: E.g.f. satisfies log(A(x)) = (exp(x) - 1)^3 * A(x).

The programs for A357010, there is no canonical definition to state claims against.
-/

/-! ## A357010.P3028262644494842890

`(3^n+3*(1-2^n))*A264990(A130907(n))`
-/

namespace A357010.P3028262644494842890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))) * A264990 (A130907 n).toNat

end

end A357010.P3028262644494842890

/-! ## A357010.P15730587074897188166

`(3^n-3*2^n+3)*A249717(A365528(n))`
-/

namespace A357010.P15730587074897188166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (3 * 2 ^ n : ℤ) + 3) * A249717 (A365528 n).toNat

end

end A357010.P15730587074897188166

/-! ## A357010.P2659755376381069844

`(3^n+3*(1-2^n))*A184303(A186253(n+1))`
-/

namespace A357010.P2659755376381069844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))) * A184303 (A186253 (n + 1)).toNat

end

end A357010.P2659755376381069844

/-!
# A357011: E.g.f. satisfies A(x) * log(A(x)) = exp(x * A(x)^3) - 1.

The programs for A357011, there is no canonical definition to state claims against.
-/

/-! ## A357011.P5692303923780326579

`A189688(comp[2*(n+1)]^n+1)`
-/

namespace A357011.P5692303923780326579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189688 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n + 1)

end

end A357011.P5692303923780326579

/-!
# A357012: Triangle read by rows. T(n, k) = [x^k](0^n + 4^n * ((2 - 2*(1 - x)^(1/2)) / x - 1)).

The programs for A357012, there is no canonical definition to state claims against.
-/

/-! ## A357012.P3967141690368428814

`A356651(n)/A002260(n+1)`
-/

namespace A357012.P3967141690368428814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356651 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A357012.P3967141690368428814

/-! ## A357012.P7211197368413715264

`A356651(n)/(A002262(n)+1)`
-/

namespace A357012.P7211197368413715264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356651 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A357012.P7211197368413715264

/-! ## A357012.P15477859303712912645

`A356651(n)/A131818(n+1)`
-/

namespace A357012.P15477859303712912645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356651 n : ℚ) / (A131818 (n + 1) : ℚ)

end

end A357012.P15477859303712912645

/-! ## A357012.P3259644346782215578

`A356651(n)/A134868(n+1)`
-/

namespace A357012.P3259644346782215578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356651 n : ℚ) / (A134868 (n + 1) : ℚ)

end

end A357012.P3259644346782215578

/-! ## A357012.P2073852591278614522

`A356651(n)/A135223(n+1)`
-/

namespace A357012.P2073852591278614522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356651 n : ℚ) / (A135223 (n + 1) : ℚ)

end

end A357012.P2073852591278614522

/-! ## A357012.P13989150591907793891

`A356651(n)/A384660(n+1)`
-/

namespace A357012.P13989150591907793891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356651 n : ℚ) / (A384660 (n + 1) : ℚ)

end

end A357012.P13989150591907793891

/-!
# A357013: Triangle read by rows. T(n, k) = ((2*n)! * k!) / (n + k)!.

The programs for A357013, the canonical program `A357013.P3082350506738276268` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357013 has offset 0).

The definition of A357013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357013.P3082350506738276268

`(2*row(n))!*col(n)!/(row(n)+col(n))!`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A357013

/-- `(2*row(n))!*col(n)!/(row(n)+col(n))!` -/
def P3082350506738276268.Spec : Prop :=
  ∀ n, P3082350506738276268.a n = (A357013 n : ℚ)

end A357013

/-! ## A357013.P4431206989666201964

`A094527(n)*A098361(n)`
-/

namespace A357013.P4431206989666201964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A098361 n

end

end A357013.P4431206989666201964

namespace A357013

/-- `A094527(n)*A098361(n)` -/
def P4431206989666201964.Spec : Prop :=
  ∀ n, P4431206989666201964.a n = A357013 n

end A357013

/-! ## A357013.P4782598535578353318

`A164961(n)/A063007(n)`
-/

namespace A357013.P4782598535578353318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164961 n : ℚ) / (A063007 n : ℚ)

end

end A357013.P4782598535578353318

namespace A357013

/-- `A164961(n)/A063007(n)` -/
def P4782598535578353318.Spec : Prop :=
  ∀ n, P4782598535578353318.a n = (A357013 n : ℚ)

end A357013

/-! ## A357013.P15162000792609066864

`A094527(n)*A112624(A036561(n))`
-/

namespace A357013.P15162000792609066864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A112624 (A036561 n).toNat

end

end A357013.P15162000792609066864

namespace A357013

/-- `A094527(n)*A112624(A036561(n))` -/
def P15162000792609066864.Spec : Prop :=
  ∀ n, P15162000792609066864.a n = A357013 n

end A357013

/-! ## A357013.P947895590577396269

`A094527(n)*A112624(A175840(n))`
-/

namespace A357013.P947895590577396269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n * A112624 (A175840 n).toNat

end

end A357013.P947895590577396269

namespace A357013

/-- `A094527(n)*A112624(A175840(n))` -/
def P947895590577396269.Spec : Prop :=
  ∀ n, P947895590577396269.a n = A357013 n

end A357013

/-!
# A357014: Numbers whose sum of exponential divisors (A051377) is odd.

The programs for A357014, the canonical program `A357014.P2212409832347884879` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357014 has offset 1).

The definition of A357014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357014.P547089805203070783

`∩[1+2*n, A369210(n+1)]`
-/

namespace A357014.P547089805203070783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357014.P547089805203070783

namespace A357014

/-- `∩[1+2*n, A369210(n+1)]` -/
def P547089805203070783.Spec : Prop :=
  ∀ n, (P547089805203070783.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P7494560752040940450

`∩[A369210(n+1), A004273(n)]`
-/

namespace A357014.P7494560752040940450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357014.P7494560752040940450

namespace A357014

/-- `∩[A369210(n+1), A004273(n)]` -/
def P7494560752040940450.Spec : Prop :=
  ∀ n, (P7494560752040940450.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P9046284472118226107

`∩[A369210(n+1), A060747(n)]`
-/

namespace A357014.P9046284472118226107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357014.P9046284472118226107

namespace A357014

/-- `∩[A369210(n+1), A060747(n)]` -/
def P9046284472118226107.Spec : Prop :=
  ∀ n, (P9046284472118226107.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P9991596886024417989

`∩[2*n+1, A197680(n+1)]`
-/

namespace A357014.P9991596886024417989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357014.P9991596886024417989

namespace A357014

/-- `∩[2*n+1, A197680(n+1)]` -/
def P9991596886024417989.Spec : Prop :=
  ∀ n, (P9991596886024417989.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P10261444882027362218

`∩[A197680(n+1), A004273(n)]`
-/

namespace A357014.P10261444882027362218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357014.P10261444882027362218

namespace A357014

/-- `∩[A197680(n+1), A004273(n)]` -/
def P10261444882027362218.Spec : Prop :=
  ∀ n, (P10261444882027362218.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P15695816067150006306

`∩[A197680(n+1), A060747(n)]`
-/

namespace A357014.P15695816067150006306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357014.P15695816067150006306

namespace A357014

/-- `∩[A197680(n+1), A060747(n)]` -/
def P15695816067150006306.Spec : Prop :=
  ∀ n, (P15695816067150006306.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P7275585320229374856

`record[A386469(2*n+1)]`
-/

namespace A357014.P7275585320229374856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357014.P7275585320229374856

namespace A357014

/-- `record[A386469(2*n+1)]` -/
def P7275585320229374856.Spec : Prop :=
  ∀ n, P7275585320229374856.a n = A357014 (n + 1)

end A357014

/-! ## A357014.P14136786042931351418

`eq[1, A051377(n+1)%2]+1`
-/

namespace A357014.P14136786042931351418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051377 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357014.P14136786042931351418

namespace A357014

/-- `eq[1, A051377(n+1)%2]+1` -/
def P14136786042931351418.Spec : Prop :=
  ∀ n, (P14136786042931351418.a n : ℤ) = A357014 (n + 1)

end A357014

/-! ## A357014.P2212409832347884879

`filter[A197680(n+1), A000035(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A357014

/-- `filter[A197680(n+1), A000035(#)]` -/
def P2212409832347884879.Spec : Prop :=
  ∀ n, P2212409832347884879.a n = A357014 (n + 1)

theorem P2212409832347884879.correct : P2212409832347884879.Spec := by
  intro n
  simp only [A357014, Nat.add_sub_cancel]

end A357014

/-! ## A357014.P13127040170731002610

`filter[A197680(n+1), A104106(#)]`
-/

namespace A357014.P13127040170731002610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A357014.P13127040170731002610

namespace A357014

/-- `filter[A197680(n+1), A104106(#)]` -/
def P13127040170731002610.Spec : Prop :=
  ∀ n, P13127040170731002610.a n = A357014 (n + 1)

end A357014

/-! ## A357014.P14260592224638068509

`filter[A369210(n+1), A000035(#)]`
-/

namespace A357014.P14260592224638068509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A357014.P14260592224638068509

namespace A357014

/-- `filter[A369210(n+1), A000035(#)]` -/
def P14260592224638068509.Spec : Prop :=
  ∀ n, P14260592224638068509.a n = A357014 (n + 1)

end A357014

/-! ## A357014.P7334957927075401878

`eq[A049419(n+1)%2, A033999(n)]+1`
-/

namespace A357014.P7334957927075401878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357014.P7334957927075401878

namespace A357014

/-- `eq[A049419(n+1)%2, A033999(n)]+1` -/
def P7334957927075401878.Spec : Prop :=
  ∀ n, (P7334957927075401878.a n : ℤ) = A357014 (n + 1)

end A357014

/-!
# A357015: Nonsquarefree numbers whose sum of exponential divisors (A051377) is odd.

The programs for A357015, there is no canonical definition to state claims against.
-/

/-! ## A357015.P7118089713242723273

`filter[A225438(n+2), A353787(#)]`
-/

namespace A357015.P7118089713242723273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225438 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A357015.P7118089713242723273

/-! ## A357015.P5024647816523589579

`A000265(4*A386805(n+1))`
-/

namespace A357015.P5024647816523589579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A386805 (n + 1)).toNat

end

end A357015.P5024647816523589579

/-!
# A357019: a(n) is the largest possible x in n = x^2 - x*y + y^2 with integers x > y >= 0, or 0 if n cannot be expressed in this form.

The programs for A357019, there is no canonical definition to state claims against.
-/

/-! ## A357019.P16102940030105187265

`A227568(n)%A184326(A004016(n))`
-/

namespace A357019.P16102940030105187265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227568 n) (A184326 (A004016 n).toNat)

end

end A357019.P16102940030105187265

/-! ## A357019.P7468059386552991760

`A338718(2*n+3)%A000248(A004016(n))`
-/

namespace A357019.P7468059386552991760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338718 (2 * n + 3)) (A000248 (A004016 n).toNat)

end

end A357019.P7468059386552991760

/-! ## A357019.P17651988847695566903

`A019425(A033716(n))*A287272(3*n+1)`
-/

namespace A357019.P17651988847695566903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033716 n).toNat * A287272 (3 * n + 1)

end

end A357019.P17651988847695566903

/-! ## A357019.P16445228054220528699

`A232746(n+1)%A060747(A205966(n))`
-/

namespace A357019.P16445228054220528699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232746 (n + 1)) (A060747 (A205966 n).toNat)

end

end A357019.P16445228054220528699

/-! ## A357019.P7390011153429580902

`A000120(A033716(n)*A139098(n))`
-/

namespace A357019.P7390011153429580902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A033716 n * A139098 n).toNat

end

end A357019.P7390011153429580902

/-!
# A357021: First coordinate x of points in the triangular lattice, sorted first by the distance from the origin and then by the circumferential angle phi restricted to the sector 0 <= phi < Pi/6. y is given in A357022.

The programs for A357021, there is no canonical definition to state claims against.
-/

/-! ## A357021.P7013702088845705134

`A196050(A002093(n+1))%A212203(n+1)`
-/

namespace A357021.P7013702088845705134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196050 (A002093 (n + 1)).toNat) (A212203 (n + 1))

end

end A357021.P7013702088845705134

/-! ## A357021.P8720081879276685328

`A196050(A316886(n+1))%A212203(n+1)`
-/

namespace A357021.P8720081879276685328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196050 (A316886 (n + 1)).toNat) (A212203 (n + 1))

end

end A357021.P8720081879276685328

/-! ## A357021.P17308192580523502164

`A005041(n)-A014045(A198627(n+1))`
-/

namespace A357021.P17308192580523502164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 n - A014045 (A198627 (n + 1)).toNat

end

end A357021.P17308192580523502164

/-! ## A357021.P11184995413480240173

`A196050(A002093(n+1)%A127544(n+1))`
-/

namespace A357021.P11184995413480240173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (Int.tmod (A002093 (n + 1)) (A127544 (n + 1))).toNat

end

end A357021.P11184995413480240173

/-! ## A357021.P10231088325737552448

`A196050(A316886(n+1)%A127544(n+1))`
-/

namespace A357021.P10231088325737552448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (Int.tmod (A316886 (n + 1)) (A127544 (n + 1))).toNat

end

end A357021.P10231088325737552448

/-!
# A357022: Second coordinate y of points in the triangular lattice, sorted first by the distance from the origin and then by the circumferential angle phi restricted to the sector 0 <= phi < Pi/6. x is given in A357021.

The programs for A357022, there is no canonical definition to state claims against.
-/

/-! ## A357022.P11743767914064183453

`A249511(n+1)%A023116(n+1)`
-/

namespace A357022.P11743767914064183453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249511 (n + 1)) (A023116 (n + 1))

end

end A357022.P11743767914064183453

/-! ## A357022.P840661544996930492

`(A023116(n+1)-1)%A128461(n+1)`
-/

namespace A357022.P840661544996930492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023116 (n + 1) - 1) (A128461 (n + 1))

end

end A357022.P840661544996930492

/-! ## A357022.P13644023309416342282

`A023116(n+1)-A028234(A002148(n))`
-/

namespace A357022.P13644023309416342282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023116 (n + 1) - A028234 (A002148 n).toNat

end

end A357022.P13644023309416342282

/-! ## A357022.P346211539494716768

`A023116(n+1)-A001222(A129201(n))`
-/

namespace A357022.P346211539494716768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023116 (n + 1) - A001222 (A129201 n).toNat

end

end A357022.P346211539494716768

/-! ## A357022.P6964650006176652364

`A023116(n+1)-A267778(A170876(n))`
-/

namespace A357022.P6964650006176652364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023116 (n + 1) - A267778 (A170876 n).toNat

end

end A357022.P6964650006176652364

/-!
# A357023: Semiprimes k such that k is congruent to 5 modulo k's index in the sequence of semiprimes.

The programs for A357023, there is no canonical definition to state claims against.
-/

/-! ## A357023.P4324509035830334786

`A001358(A106130(n+1))`
-/

namespace A357023.P4324509035830334786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106130 (n + 1)).toNat

end

end A357023.P4324509035830334786

/-!
# A357024: E.g.f. satisfies log(A(x)) = (exp(x * A(x)) - 1)^2.

The programs for A357024, there is no canonical definition to state claims against.
-/

/-! ## A357024.P5369980366262443995

`A004526(A357086(n)+A357084(n))`
-/

namespace A357024.P5369980366262443995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A357086 n + A357084 n).toNat

end

end A357024.P5369980366262443995

/-! ## A357024.P10942241198301579328

`A026741(A357086(n)+A357084(n))`
-/

namespace A357024.P10942241198301579328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A357086 n + A357084 n).toNat

end

end A357024.P10942241198301579328

/-!
# A357025: E.g.f. satisfies log(A(x)) = (exp(x * A(x)) - 1)^3.

The programs for A357025, there is no canonical definition to state claims against.
-/

/-! ## A357025.P13620969140534005352

`A004525(A357087(n)+A357085(n))`
-/

namespace A357025.P13620969140534005352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A357087 n + A357085 n).toNat

end

end A357025.P13620969140534005352

/-! ## A357025.P12276621958234996292

`A004526(A357087(n)+A357085(n))`
-/

namespace A357025.P12276621958234996292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A357087 n + A357085 n).toNat

end

end A357025.P12276621958234996292

/-! ## A357025.P5176554220024285717

`A004525(A179062(n+1))+A001117(n)`
-/

namespace A357025.P5176554220024285717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A179062 (n + 1)).toNat + A001117 n

end

end A357025.P5176554220024285717

/-!
# A357026: E.g.f. satisfies A(x) = (1 - x)^(log(1 - x) * A(x)).

The programs for A357026, there is no canonical definition to state claims against.
-/

/-! ## A357026.P16670267041399836995

`A340190(A097679(n))+A262046(n)`
-/

namespace A357026.P16670267041399836995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340190 (A097679 n).toNat + A262046 n

end

end A357026.P16670267041399836995

/-! ## A357026.P2634884619159229416

`A003558(A144002(n))*A332436(n)`
-/

namespace A357026.P2634884619159229416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A144002 n).toNat * A332436 n

end

end A357026.P2634884619159229416

/-!
# A357027: E.g.f. satisfies A(x) = 1/(1 - x)^(log(1 - x)^2 * A(x)).

The programs for A357027, there is no canonical definition to state claims against.
-/

/-! ## A357027.P10166988390422695930

`A353118(n)+A004525(A052785(n))`
-/

namespace A357027.P10166988390422695930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353118 n + A004525 (A052785 n).toNat

end

end A357027.P10166988390422695930

/-! ## A357027.P6987871267226037181

`A353118(n)+A004525(A052792(n))`
-/

namespace A357027.P6987871267226037181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353118 n + A004525 (A052792 n).toNat

end

end A357027.P6987871267226037181

/-! ## A357027.P15000962947472815466

`A353118(n)+A004525(A228909(n))`
-/

namespace A357027.P15000962947472815466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353118 n + A004525 (A228909 n).toNat

end

end A357027.P15000962947472815466

/-!
# A357028: E.g.f. satisfies A(x) = (1 - x * A(x))^log(1 - x * A(x)).

The programs for A357028, there is no canonical definition to state claims against.
-/

/-! ## A357028.P806268065219177859

`A004526(A357092(n)+A357090(n))`
-/

namespace A357028.P806268065219177859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A357092 n + A357090 n).toNat

end

end A357028.P806268065219177859

/-! ## A357028.P8898543833987915190

`A006370(A357092(n)+A357090(n))`
-/

namespace A357028.P8898543833987915190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A357092 n + A357090 n).toNat

end

end A357028.P8898543833987915190

/-!
# A357029: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(log(1 - x * A(x))^2).

The programs for A357029, there is no canonical definition to state claims against.
-/

/-! ## A357029.P5956702661107101583

`A004525(A357093(n)+A357091(n))`
-/

namespace A357029.P5956702661107101583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A357093 n + A357091 n).toNat

end

end A357029.P5956702661107101583

/-! ## A357029.P17293107401535080448

`A004526(A357093(n)+A357091(n))`
-/

namespace A357029.P17293107401535080448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A357093 n + A357091 n).toNat

end

end A357029.P17293107401535080448

/-! ## A357029.P18308238963867787931

`A078898(A357093(n)+A357091(n))`
-/

namespace A357029.P18308238963867787931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A357093 n + A357091 n).toNat

end

end A357029.P18308238963867787931

/-!
# A357030: a(n) is the number of integers in 0..n having nonincreasing digits.

The programs for A357030, there is no canonical definition to state claims against.
-/

/-! ## A357030.P11161234990491060854

`∑[C(val(∑{digits}[n, 5^#], 5), n%10)]`
-/

namespace A357030.P11161234990491060854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 5 ^ x).sum 5) (n % 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P11161234990491060854

/-! ## A357030.P16206475173475714236

`∑[char[lt[and(n, 11*floor(n/10)-n), 9]]]`
-/

namespace A357030.P16206475173475714236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P16206475173475714236

/-! ## A357030.P571983202271011572

`∑[char[A004186(n)]]`
-/

namespace A357030.P571983202271011572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P571983202271011572

/-! ## A357030.P10570244530857320192

`∑[char[A084383(n)]]`
-/

namespace A357030.P10570244530857320192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084383 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P10570244530857320192

/-! ## A357030.P12525646431831998750

`∑[char[A130576(n)]]`
-/

namespace A357030.P12525646431831998750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130576 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P12525646431831998750

/-! ## A357030.P4087754366076145499

`∑[char[A355221(n)]]`
-/

namespace A357030.P4087754366076145499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P4087754366076145499

/-! ## A357030.P16164534049902551178

`∑[char[A355224(n)]]`
-/

namespace A357030.P16164534049902551178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P16164534049902551178

/-! ## A357030.P5786244198623782800

`∑[char[A009996(n+1)]]`
-/

namespace A357030.P5786244198623782800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P5786244198623782800

/-! ## A357030.P9274808056193487362

`∑[char[A072543(n+1)]]`
-/

namespace A357030.P9274808056193487362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P9274808056193487362

/-! ## A357030.P6670659637017229636

`∑[char[A339138(n+1)]]`
-/

namespace A357030.P6670659637017229636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357030.P6670659637017229636

/-!
# A357031: E.g.f. satisfies log(A(x)) = (exp(x * A(x)) - 1)^2 / 2.

The programs for A357031, there is no canonical definition to state claims against.
-/

/-! ## A357031.P7571757842941429308

`A292648(xor(1, n*a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A357031.P7571757842941429308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A292648 (Int.xor 1 ((n : ℤ) * a (n - 1))).toNat

end

end A357031.P7571757842941429308

/-! ## A357031.P13415109348105831401

`A095261(2*a(n-1)-1)+6` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A357031.P13415109348105831401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  A095261 (2 * a (n - 1) - 1).toNat + 6

end

end A357031.P13415109348105831401

/-!
# A357032: E.g.f. satisfies log(A(x)) = (exp(x * A(x)) - 1)^3 / 6.

The programs for A357032, there is no canonical definition to state claims against.
-/

/-! ## A357032.P14585607934952482701

`A008676(∑[A082095(2*n+1)]-1)`
-/

namespace A357032.P14585607934952482701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082095 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A357032.P14585607934952482701

/-! ## A357032.P12307158337279447204

`A345919(A030101(ceil(ϕ*a(n-1))))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A357032.P12307158337279447204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A345919 (A030101 ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉.toNat).toNat

end

end A357032.P12307158337279447204

/-! ## A357032.P12394245122718536143

`A038205(n)-A014017(A134055(n))`
-/

namespace A357032.P12394245122718536143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038205 n - A014017 (A134055 n).toNat

end

end A357032.P12394245122718536143

/-!
# A357035: a(n) is the smallest number that has exactly n divisors that are digitally balanced numbers (A031443).

The programs for A357035, there is no canonical definition to state claims against.
-/

/-! ## A357035.P13821783115170994470

`record[lcm(A286931(n+1), A349161(n+1))]`
-/

namespace A357035.P13821783115170994470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286931 (n + 1)) (A349161 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357035.P13821783115170994470

/-! ## A357035.P1067337721912876041

`A002322(A362821(n)+A000244(n))`
-/

namespace A357035.P1067337721912876041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A362821 n + A000244 n).toNat

end

end A357035.P1067337721912876041

/-!
# A357036: E.g.f. satisfies A(x) = (1 - x * A(x))^(log(1 - x * A(x)) / 2).

The programs for A357036, there is no canonical definition to state claims against.
-/

/-! ## A357036.P6552456451871323036

`A003679(2*a(n-1))+6` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A357036.P6552456451871323036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  A003679 (2 * a (n - 1)).toNat + 6

end

end A357036.P6552456451871323036

/-! ## A357036.P3364430375114338810

`A193749(A251685(n))`
-/

namespace A357036.P3364430375114338810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193749 (A251685 n).toNat

end

end A357036.P3364430375114338810

/-!
# A357037: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(log(1 - x * A(x))^2 / 6).

The programs for A357037, there is no canonical definition to state claims against.
-/

/-! ## A357037.P3029291808869981177

`A091352(n)%A035250(∑[A100384(n+1)])`
-/

namespace A357037.P3029291808869981177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091352 n) (A035250 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A357037.P3029291808869981177

/-! ## A357037.P829143523496044112

`A007474(n)-A070434(A223449(2*(n+2)))`
-/

namespace A357037.P829143523496044112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007474 n - A070434 (A223449 (2 * (n + 2))).toNat

end

end A357037.P829143523496044112

/-! ## A357037.P15038791631525422535

`A327420(and(A001906(n), A207410(2*n+3)))`
-/

namespace A357037.P15038791631525422535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 (Int.land (A001906 n) (A207410 (2 * n + 3))).toNat

end

end A357037.P15038791631525422535

/-!
# A357039: Number of integer solutions to x' = 2n, where x' is the arithmetic derivative of x.

The programs for A357039, there is no canonical definition to state claims against.
-/

/-! ## A357039.P3629138855616551327

`A099302(2*(n+1))`
-/

namespace A357039.P3629138855616551327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (2 * (n + 1))

end

end A357039.P3629138855616551327

/-! ## A357039.P179081531824630396

`A099302(A317108(n+1))%15`
-/

namespace A357039.P179081531824630396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099302 (A317108 (n + 1)).toNat) 15

end

end A357039.P179081531824630396

/-! ## A357039.P490198713321266450

`A099302(A005843(n+1))%37`
-/

namespace A357039.P490198713321266450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099302 (A005843 (n + 1)).toNat) 37

end

end A357039.P490198713321266450

/-! ## A357039.P8865269861619293492

`A099302(A004275(n+2))%37`
-/

namespace A357039.P8865269861619293492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099302 (A004275 (n + 2)).toNat) 37

end

end A357039.P8865269861619293492

/-! ## A357039.P17371331128273943120

`A292579(A099302(n+2+n))`
-/

namespace A357039.P17371331128273943120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (A099302 (n + 2 + n)).toNat

end

end A357039.P17371331128273943120

/-! ## A357039.P4671285913699694392

`A099302(A004277(n+1))%A004277(n)`
-/

namespace A357039.P4671285913699694392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099302 (A004277 (n + 1)).toNat) (A004277 n)

end

end A357039.P4671285913699694392

/-! ## A357039.P15067955434547138387

`lcm(A000007(n)+1, A099302(A004275(n+2)))`
-/

namespace A357039.P15067955434547138387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000007 n + 1) (A099302 (A004275 (n + 2)).toNat)

end

end A357039.P15067955434547138387

/-! ## A357039.P15359995847713440775

`A099302(A005843(n+1))+C(2, A173420(n+1))`
-/

namespace A357039.P15359995847713440775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A005843 (n + 1)).toNat + (Nat.choose 2 (A173420 (n + 1)).toNat : ℤ)

end

end A357039.P15359995847713440775

/-! ## A357039.P2697515080385517053

`A099302(A005843(n+1))/(val(A000040(n+1), 2)+1)`
-/

namespace A357039.P2697515080385517053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099302 (A005843 (n + 1)).toNat : ℚ) / (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + 1 : ℚ)

end

end A357039.P2697515080385517053

/-! ## A357039.P3739818313236460297

`A308583(A124758(n))+A099302(A004275(n+2))`
-/

namespace A357039.P3739818313236460297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A124758 n).toNat + A099302 (A004275 (n + 2)).toNat

end

end A357039.P3739818313236460297

/-! ## A357039.P6613359858483982108

`A135297(A124758(n)+1)+A099302(A004275(n+2))`
-/

namespace A357039.P6613359858483982108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (A124758 n + 1).toNat + A099302 (A004275 (n + 2)).toNat

end

end A357039.P6613359858483982108

/-! ## A357039.P1012810536654126373

`A135297(A083903(n+1)+1)+A099302(A004275(n+2))`
-/

namespace A357039.P1012810536654126373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (A083903 (n + 1) + 1).toNat + A099302 (A004275 (n + 2)).toNat

end

end A357039.P1012810536654126373

/-!
# A357040: Deficient composite numbers whose sum of aliquot divisors as well as product of aliquot divisors is a perfect square.

The programs for A357040, there is no canonical definition to state claims against.
-/

/-! ## A357040.P14853275198671616765

`record[A125746(A064121(n+3))]`
-/

namespace A357040.P14853275198671616765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A064121 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357040.P14853275198671616765

/-! ## A357040.P6442838422010356812

`filter[A064116(n+1), A294934(#)]`
-/

namespace A357040.P6442838422010356812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A357040.P6442838422010356812

/-! ## A357040.P16134661576472888986

`filter[A064116(n+1), A294935(#)]`
-/

namespace A357040.P16134661576472888986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A357040.P16134661576472888986

/-! ## A357040.P8745657345841055193

`filter[A064121(2+n), A294934(#)]`
-/

namespace A357040.P8745657345841055193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A357040.P8745657345841055193

/-! ## A357040.P3510291815185013485

`filter[A064121(n+2), A294935(#)]`
-/

namespace A357040.P3510291815185013485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A357040.P3510291815185013485

/-! ## A357040.P18323321195317273273

`∩[A064116(n+1), A087244(n+1)]`
-/

namespace A357040.P18323321195317273273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357040.P18323321195317273273

/-! ## A357040.P10574342988804355365

`∩[A064121(n+1), A087244(n+1)]`
-/

namespace A357040.P10574342988804355365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357040.P10574342988804355365

/-! ## A357040.P14040057545415455236

`∩[A064116(n+1), A125493(n+1)]`
-/

namespace A357040.P14040057545415455236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357040.P14040057545415455236

/-! ## A357040.P542935044014862088

`∩[A064121(n+1), A125493(n+1)]`
-/

namespace A357040.P542935044014862088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357040.P542935044014862088

/-! ## A357040.P1361584743004140847

`∩[A064116(n+1), A214547(n+1)]`
-/

namespace A357040.P1361584743004140847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357040.P1361584743004140847

/-!
# A357041: a(n) = Sum_{d|n} 2^(d-1) * binomial(d+n/d-1,d).

The programs for A357041, the canonical program `A357041.P15972317864597366540` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357041 has offset 1).

The definition of A357041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357041.P15972317864597366540

`∑{d}[n+1, 2^(#-1)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A357041

/-- `∑{d}[n+1, 2^(#-1)*C(#+(n+1)/#-1, #)]` -/
def P15972317864597366540.Spec : Prop :=
  ∀ n, P15972317864597366540.a n = (A357041 (n + 1) : ℚ)

end A357041

/-!
# A357042: The sum of the numbers of the central diamond of the multiplication table [1..k] X [1..k] for k=2*n-1.

The programs for A357042, the canonical program `A357042.P16654905826093811588` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357042 has offset 1).

The definition of A357042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357042.P1684717187066672437

`ogf((1+15x+27x^2+5x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A357042.P1684717187066672437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15, 27, 5] [1, -5, 10, -10, 5, -1] n

end

end A357042.P1684717187066672437

namespace A357042

/-- `ogf((1+15x+27x^2+5x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1684717187066672437.Spec : Prop :=
  ∀ n, P1684717187066672437.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P16654905826093811588

`(n+1)²*(2*n*(n+1)+1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A357042

/-- `(n+1)²*(2*n*(n+1)+1)` -/
def P16654905826093811588.Spec : Prop :=
  ∀ n, (P16654905826093811588.a n : ℤ) = A357042 (n + 1)

theorem P16654905826093811588.correct : P16654905826093811588.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel]

end A357042

/-! ## A357042.P14280752804805956153

`(A000027(n+1)²+A000384(n+1)²)/2`
-/

namespace A357042.P14280752804805956153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) ^ 2 + A000384 (n + 1) ^ 2 : ℚ) / 2

end

end A357042.P14280752804805956153

namespace A357042

/-- `(A000027(n+1)²+A000384(n+1)²)/2` -/
def P14280752804805956153.Spec : Prop :=
  ∀ n, P14280752804805956153.a n = (A357042 (n + 1) : ℚ)

theorem P14280752804805956153.correct : P14280752804805956153.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P14280752804805956153.a, A357042.P16654905826093811588.a, A000027, A000027.P10331202704469894836.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P4605560448953481399

`2*A000583(n+1)-A015237(n+1)`
-/

namespace A357042.P4605560448953481399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000583 (n + 1) - A015237 (n + 1)

end

end A357042.P4605560448953481399

namespace A357042

/-- `2*A000583(n+1)-A015237(n+1)` -/
def P4605560448953481399.Spec : Prop :=
  ∀ n, P4605560448953481399.a n = A357042 (n + 1)

theorem P4605560448953481399.correct : P4605560448953481399.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P4605560448953481399.a, A357042.P16654905826093811588.a, A000583, A000583.P14547500281748394449.a, A015237, A015237.P2392393478135424708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P7539316581499136656

`(n+1)^4+lcm(n, n+1)²`
-/

namespace A357042.P7539316581499136656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 + Nat.lcm n (n + 1) ^ 2

end

end A357042.P7539316581499136656

namespace A357042

/-- `(n+1)^4+lcm(n, n+1)²` -/
def P7539316581499136656.Spec : Prop :=
  ∀ n, (P7539316581499136656.a n : ℤ) = A357042 (n + 1)

end A357042

/-! ## A357042.P11587144245351785392

`lcm((n+1)²+n², (n+1)²)`
-/

namespace A357042.P11587144245351785392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2 + n ^ 2) ((n + 1) ^ 2)

end

end A357042.P11587144245351785392

namespace A357042

/-- `lcm((n+1)²+n², (n+1)²)` -/
def P11587144245351785392.Spec : Prop :=
  ∀ n, (P11587144245351785392.a n : ℤ) = A357042 (n + 1)

end A357042

/-! ## A357042.P13049981931059115573

`C(∑[4*n+1]+1, 2)-∑[n]`
-/

namespace A357042.P13049981931059115573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A357042.P13049981931059115573

namespace A357042

/-- `C(∑[4*n+1]+1, 2)-∑[n]` -/
def P13049981931059115573.Spec : Prop :=
  ∀ n, P13049981931059115573.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P16014802228440397834

`(-xor(n, -1))^4+(n²+n)²`
-/

namespace A357042.P16014802228440397834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.xor (n : ℤ) (-1)) ^ 4 + ((n ^ 2 + n) ^ 2 : ℤ)

end

end A357042.P16014802228440397834

namespace A357042

/-- `(-xor(n, -1))^4+(n²+n)²` -/
def P16014802228440397834.Spec : Prop :=
  ∀ n, P16014802228440397834.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P17742761287232339369

`(n+1)^4+∑[a(n-1)+2]²` with `a(0)=0`
-/

namespace A357042.P17742761287232339369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A357042.P17742761287232339369

namespace A357042

/-- `(n+1)^4+∑[a(n-1)+2]²` -/
def P17742761287232339369.Spec : Prop :=
  ∀ n, (P17742761287232339369.a n : ℤ) = A357042 (n + 1)

end A357042

/-! ## A357042.P13836235501147454590

`∑[a(n-1)+2]²+(n+1)²²` with `a(0)=0`
-/

namespace A357042.P13836235501147454590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + ((n + 1) ^ 2) ^ 2

end

end A357042.P13836235501147454590

namespace A357042

/-- `∑[a(n-1)+2]²+(n+1)²²` -/
def P13836235501147454590.Spec : Prop :=
  ∀ n, (P13836235501147454590.a n : ℤ) = A357042 (n + 1)

end A357042

/-! ## A357042.P16835329568135196382

`A243201(n)-n²²`
-/

namespace A357042.P16835329568135196382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243201 n - ((n ^ 2) ^ 2 : ℤ)

end

end A357042.P16835329568135196382

namespace A357042

/-- `A243201(n)-n²²` -/
def P16835329568135196382.Spec : Prop :=
  ∀ n, P16835329568135196382.a n = A357042 (n + 1)

theorem P16835329568135196382.correct : P16835329568135196382.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P16835329568135196382.a, A357042.P16654905826093811588.a, A243201, A243201.P1770549597896343998.a, A002061, A002061.P13016590216674735232.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P388283700919764636

`∑[2*A056578(n)-1]`
-/

namespace A357042.P388283700919764636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056578 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357042.P388283700919764636

namespace A357042

/-- `∑[2*A056578(n)-1]` -/
def P388283700919764636.Spec : Prop :=
  ∀ n, P388283700919764636.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P13252632635418551007

`A035287(n+1)+(n+1)²²`
-/

namespace A357042.P13252632635418551007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035287 (n + 1) + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A357042.P13252632635418551007

namespace A357042

/-- `A035287(n+1)+(n+1)²²` -/
def P13252632635418551007.Spec : Prop :=
  ∀ n, P13252632635418551007.a n = A357042 (n + 1)

theorem P13252632635418551007.correct : P13252632635418551007.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P13252632635418551007.a, A357042.P16654905826093811588.a, A035287, A035287.P16843695516421463004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P1839644438376654273

`((n+1)²+A000384(n+1)²)/2`
-/

namespace A357042.P1839644438376654273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) + A000384 (n + 1) ^ 2 : ℚ) / 2

end

end A357042.P1839644438376654273

namespace A357042

/-- `((n+1)²+A000384(n+1)²)/2` -/
def P1839644438376654273.Spec : Prop :=
  ∀ n, P1839644438376654273.a n = (A357042 (n + 1) : ℚ)

theorem P1839644438376654273.correct : P1839644438376654273.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P1839644438376654273.a, A357042.P16654905826093811588.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P4860081412981500477

`A099721(n)+A008514(n)`
-/

namespace A357042.P4860081412981500477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + A008514 n

end

end A357042.P4860081412981500477

namespace A357042

/-- `A099721(n)+A008514(n)` -/
def P4860081412981500477.Spec : Prop :=
  ∀ n, P4860081412981500477.a n = A357042 (n + 1)

theorem P4860081412981500477.correct : P4860081412981500477.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P4860081412981500477.a, A357042.P16654905826093811588.a, A008514, A008514.P8515702522567387291.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P18266814489265834256

`A135400(n+1)+A045943(n)`
-/

namespace A357042.P18266814489265834256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135400 (n + 1) + A045943 n

end

end A357042.P18266814489265834256

namespace A357042

/-- `A135400(n+1)+A045943(n)` -/
def P18266814489265834256.Spec : Prop :=
  ∀ n, P18266814489265834256.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P3045362450779164003

`A237516(n+1)+A048395(n)`
-/

namespace A357042.P3045362450779164003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237516 (n + 1) + A048395 n

end

end A357042.P3045362450779164003

namespace A357042

/-- `A237516(n+1)+A048395(n)` -/
def P3045362450779164003.Spec : Prop :=
  ∀ n, P3045362450779164003.a n = A357042 (n + 1)

theorem P3045362450779164003.correct : P3045362450779164003.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P3045362450779164003.a, A357042.P16654905826093811588.a, A048395, A048395.P3571630861933578872.a, A237516, A237516.P16074374390928351392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-! ## A357042.P14678151794595116008

`A247112(n)+A063491(n+1)`
-/

namespace A357042.P14678151794595116008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247112 n + A063491 (n + 1)

end

end A357042.P14678151794595116008

namespace A357042

/-- `A247112(n)+A063491(n+1)` -/
def P14678151794595116008.Spec : Prop :=
  ∀ n, P14678151794595116008.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P10679770928361033185

`A339483(n)+A213772(n+1)`
-/

namespace A357042.P10679770928361033185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n + A213772 (n + 1)

end

end A357042.P10679770928361033185

namespace A357042

/-- `A339483(n)+A213772(n+1)` -/
def P10679770928361033185.Spec : Prop :=
  ∀ n, P10679770928361033185.a n = A357042 (n + 1)

end A357042

/-! ## A357042.P15945426828118475802

`A005915(n)+n*A055112(n)`
-/

namespace A357042.P15945426828118475802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + (n : ℤ) * A055112 n

end

end A357042.P15945426828118475802

namespace A357042

/-- `A005915(n)+n*A055112(n)` -/
def P15945426828118475802.Spec : Prop :=
  ∀ n, P15945426828118475802.a n = A357042 (n + 1)

theorem P15945426828118475802.correct : P15945426828118475802.Spec := by
  intro n
  simp only [A357042, Nat.add_sub_cancel, A357042.P15945426828118475802.a, A357042.P16654905826093811588.a, A005915, A005915.P10778017196570457320.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357042

/-!
# A357045: Lexicographically earliest sequence of distinct non-palindromic numbers (A029742) such that a(n)+a(n+1) is always a palindrome (A002113).

The programs for A357045, there is no canonical definition to state claims against.
-/

/-! ## A357045.P11134936568985894206

`A320170(A043315(n+1))`
-/

namespace A357045.P11134936568985894206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320170 (A043315 (n + 1)).toNat

end

end A357045.P11134936568985894206

/-! ## A357045.P1063701878971538531

`A320170(A044912(n+1))`
-/

namespace A357045.P1063701878971538531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320170 (A044912 (n + 1)).toNat

end

end A357045.P1063701878971538531

/-! ## A357045.P3691448780265629108

`A320170(A055649(n+1))`
-/

namespace A357045.P3691448780265629108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320170 (A055649 (n + 1)).toNat

end

end A357045.P3691448780265629108

/-! ## A357045.P2584051111217474400

`A320170(A061378(n+1))`
-/

namespace A357045.P2584051111217474400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320170 (A061378 (n + 1)).toNat

end

end A357045.P2584051111217474400

/-! ## A357045.P16522846917633771602

`A320170(A062399(n+1))`
-/

namespace A357045.P16522846917633771602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320170 (A062399 (n + 1)).toNat

end

end A357045.P16522846917633771602

/-!
# A357048: Terms in the Fibostracci sequence A359128 that arise as the sum of the two previous terms.

The programs for A357048, there is no canonical definition to state claims against.
-/

/-! ## A357048.P17063463376818560507

`or(A003314(n+1), A359590(A303058(n)))`
-/

namespace A357048.P17063463376818560507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003314 (n + 1)) (A359590 (A303058 n).toNat)

end

end A357048.P17063463376818560507

/-! ## A357048.P4529682591196996477

`or(A003314(n+1), A079559(A128166(2*n+1)))`
-/

namespace A357048.P4529682591196996477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003314 (n + 1)) (A079559 (A128166 (2 * n + 1)).toNat)

end

end A357048.P4529682591196996477

/-! ## A357048.P10649696045570715157

`or(A003314(n+1), A265333(A265466(2*n+3)))`
-/

namespace A357048.P10649696045570715157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003314 (n + 1)) (A265333 (A265466 (2 * n + 3)).toNat)

end

end A357048.P10649696045570715157

/-! ## A357048.P10614154342693058023

`∑[A232615(A277012(2*(n+1)))]`
-/

namespace A357048.P10614154342693058023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232615 (A277012 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357048.P10614154342693058023

/-! ## A357048.P1557899355212363701

`∑[A124767(∑[A019546(3*n+1)])]`
-/

namespace A357048.P1557899355212363701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357048.P1557899355212363701

/-!
# A357050: Number of ways A005101(n)+1 can be written as sum of a subset of the proper divisors of A005101(n), the n-th abundant number.

The programs for A357050, there is no canonical definition to state claims against.
-/

/-! ## A357050.P2901193641328152811

`A359196(A005101(1+n))-1`
-/

namespace A357050.P2901193641328152811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359196 (A005101 (1 + n)).toNat - 1

end

end A357050.P2901193641328152811

/-!
# A357051: a(n) = Sum_{d|n} 3^(n-d).

The programs for A357051, the canonical program `A357051.P18369515271289488413` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357051 has offset 1).

The definition of A357051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357051.P18369515271289488413

`∑{d}[n+1, 3^(n+1-#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A357051

/-- `∑{d}[n+1, 3^(n+1-#)]` -/
def P18369515271289488413.Spec : Prop :=
  ∀ n, P18369515271289488413.a n = (A357051 (n + 1) : ℚ)

end A357051

/-! ## A357051.P967882727874890072

`A003278(A074854(n+1))`
-/

namespace A357051.P967882727874890072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A074854 (n + 1)).toNat

end

end A357051.P967882727874890072

namespace A357051

/-- `A003278(A074854(n+1))` -/
def P967882727874890072.Spec : Prop :=
  ∀ n, P967882727874890072.a n = A357051 (n + 1)

end A357051

/-! ## A357051.P10689637537141356761

`A005836(A074854(n+1)+1)`
-/

namespace A357051.P10689637537141356761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A074854 (n + 1) + 1).toNat

end

end A357051.P10689637537141356761

namespace A357051

/-- `A005836(A074854(n+1)+1)` -/
def P10689637537141356761.Spec : Prop :=
  ∀ n, P10689637537141356761.a n = A357051 (n + 1)

end A357051

/-! ## A357051.P4780454778587530674

`A004793(A074854(n+1)+A065718(n))`
-/

namespace A357051.P4780454778587530674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A074854 (n + 1) + A065718 n).toNat

end

end A357051.P4780454778587530674

namespace A357051

/-- `A004793(A074854(n+1)+A065718(n))` -/
def P4780454778587530674.Spec : Prop :=
  ∀ n, P4780454778587530674.a n = A357051 (n + 1)

end A357051

/-! ## A357051.P17291576790900194138

`A004793(A010872(3*n+1)*A074854(n+1))`
-/

namespace A357051.P17291576790900194138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A010872 (3 * n + 1) * A074854 (n + 1)).toNat

end

end A357051.P17291576790900194138

namespace A357051

/-- `A004793(A010872(3*n+1)*A074854(n+1))` -/
def P17291576790900194138.Spec : Prop :=
  ∀ n, P17291576790900194138.a n = A357051 (n + 1)

end A357051

/-!
# A357052: Distance from 10^n to the next prime triplet.

The programs for A357052, there is no canonical definition to state claims against.
-/

/-! ## A357052.P12838548103335329299

`A332084(A038378(n+1)+6)`
-/

namespace A357052.P12838548103335329299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332084 (A038378 (n + 1) + 6).toNat

end

end A357052.P12838548103335329299

/-!
# A357055: Integers k such that k^k + k^2 + 3*k + 2 is prime.

The programs for A357055, there is no canonical definition to state claims against.
-/

/-! ## A357055.P3474786630013722028

`record[char[∑[n+1]]*A137758(2*(n+1))]`
-/

namespace A357055.P3474786630013722028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A137758 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357055.P3474786630013722028

/-! ## A357055.P10260910509536376663

`A367221(A336579(n))+n`
-/

namespace A357055.P10260910509536376663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367221 (A336579 n).toNat + (n : ℤ)

end

end A357055.P10260910509536376663

/-!
# A357057: a(n) = A356886(2^n+1)/A356886(2^n-1).

The programs for A357057, there is no canonical definition to state claims against.
-/

/-! ## A357057.P5635448328460666194

`A065091(round(n+1-sqrt(2*n)))`
-/

namespace A357057.P5635448328460666194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.sqrt (2 * n : ℝ))).toNat

end

end A357057.P5635448328460666194

/-! ## A357057.P15438514983614654548

`A065380(n+1-round(sqrt(2*n)))`
-/

namespace A357057.P15438514983614654548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065380 ((n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A357057.P15438514983614654548

/-! ## A357057.P2304289717331984373

`A240699(n+1-round(sqrt(2*n)))`
-/

namespace A357057.P2304289717331984373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240699 ((n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A357057.P2304289717331984373

/-! ## A357057.P13894734167746536022

`A000040(2-round(sqrt(2*n))+n)`
-/

namespace A357057.P13894734167746536022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat

end

end A357057.P13894734167746536022

/-! ## A357057.P11956152013350996944

`A038618(n-round(sqrt(2*n))+2)`
-/

namespace A357057.P11956152013350996944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 2).toNat

end

end A357057.P11956152013350996944

/-!
# A357058: Number of regions in a square when n internal squares are drawn between the 4n points that divide each side into n+1 equal parts.

The programs for A357058, there is no canonical definition to state claims against.
-/

/-! ## A357058.P698377215845347763

`A357061(n)-A357060(n)+1`
-/

namespace A357058.P698377215845347763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357061 n - A357060 n + 1

end

end A357058.P698377215845347763

/-! ## A357058.P7090696007779473340

`A357061(n)+A024000(A357060(n))`
-/

namespace A357058.P7090696007779473340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357061 n + A024000 (A357060 n).toNat

end

end A357058.P7090696007779473340

/-! ## A357058.P5954070019425335933

`A004442(A357061(n)-A357060(n))`
-/

namespace A357058.P5954070019425335933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A357061 n - A357060 n).toNat

end

end A357058.P5954070019425335933

/-! ## A357058.P9672199098637101096

`A357216(∑[n+1]+4)`
-/

namespace A357058.P9672199098637101096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357216 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A357058.P9672199098637101096

/-! ## A357058.P17436193010946533214

`record[A111967(n)*A357216(n+5)]`
-/

namespace A357058.P17436193010946533214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A357216 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357058.P17436193010946533214

/-!
# A357060: Number of vertices in a square when n internal squares are drawn between the 4n points that divide each side into n+1 equal parts.

The programs for A357060, there is no canonical definition to state claims against.
-/

/-! ## A357060.P6179758128196694851

`A357061(n)-A357058(n)+1`
-/

namespace A357060.P6179758128196694851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357061 n - A357058 n + 1

end

end A357060.P6179758128196694851

/-! ## A357060.P15905077703580555728

`A357061(n)+A024000(A357058(n))`
-/

namespace A357060.P15905077703580555728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357061 n + A024000 (A357058 n).toNat

end

end A357060.P15905077703580555728

/-! ## A357060.P6408877104223219

`A014681(A357061(n)-A357058(n))`
-/

namespace A357060.P6408877104223219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A357061 n - A357058 n).toNat

end

end A357060.P6408877104223219

/-! ## A357060.P5160107675687498330

`A357235(∑[n+1]+4)`
-/

namespace A357060.P5160107675687498330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357235 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A357060.P5160107675687498330

/-! ## A357060.P13201559792654873312

`record[A357235(n+5)/A357216(n+3)]`
-/

namespace A357060.P13201559792654873312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357235 (n + 5) : ℚ) / (A357216 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357060.P13201559792654873312

/-!
# A357061: Number of edges in a square when n internal squares are drawn between the 4n points that divide each side into n+1 equal parts.

The programs for A357061, there is no canonical definition to state claims against.
-/

/-! ## A357061.P3885931207785340953

`A357058(n)+A357060(n)-1`
-/

namespace A357061.P3885931207785340953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357058 n + A357060 n - 1

end

end A357061.P3885931207785340953

/-! ## A357061.P4157644356723795567

`A357060(n)+A004442(A357058(n))`
-/

namespace A357061.P4157644356723795567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357060 n + A004442 (A357058 n).toNat

end

end A357061.P4157644356723795567

/-! ## A357061.P5693640098557771086

`A023443(A357060(n)+A357058(n))`
-/

namespace A357061.P5693640098557771086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A357060 n + A357058 n).toNat

end

end A357061.P5693640098557771086

/-! ## A357061.P1668519478127838965

`A199969(A357060(n)+A357058(n))`
-/

namespace A357061.P1668519478127838965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A357060 n + A357058 n).toNat

end

end A357061.P1668519478127838965

/-! ## A357061.P942302977611359932

`A357254(∑[n+1]+4)`
-/

namespace A357061.P942302977611359932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357254 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A357061.P942302977611359932

/-!
# A357063: Lengths of the B blocks associated with A091787.

The programs for A357063, there is no canonical definition to state claims against.
-/

/-! ## A357063.P15381918568888093512

`Δ[A091588(n)]-A091840(n+1)`
-/

namespace A357063.P15381918568888093512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091840 (n + 1)

end

end A357063.P15381918568888093512

/-! ## A357063.P9606740182718456467

`A091588(n+1)-(A091840(n+1)+A091588(n))`
-/

namespace A357063.P9606740182718456467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091588 (n + 1) - (A091840 (n + 1) + A091588 n)

end

end A357063.P9606740182718456467

/-! ## A357063.P5609167035211873213

`Δ[A047926(n)+2*A094176(n)]-A091840(n+1)`
-/

namespace A357063.P5609167035211873213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047926 n + 2 * A094176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091840 (n + 1)

end

end A357063.P5609167035211873213

/-! ## A357063.P12209351921305105888

`Δ[A091587(n)-7%A092335(n+1)]-A091840(n+1)`
-/

namespace A357063.P12209351921305105888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091587 n - Int.tmod 7 (A092335 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A091840 (n + 1)

end

end A357063.P12209351921305105888

/-! ## A357063.P15797140783279827905

`A057362(A029858(n+1))+A000244(n)`
-/

namespace A357063.P15797140783279827905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A029858 (n + 1)).toNat + A000244 n

end

end A357063.P15797140783279827905

/-!
# A357065: Numbers k with the following property: the value A091839(k+1) is not a 1 that is obtained from smoothing A091579.

The programs for A357065, there is no canonical definition to state claims against.
-/

/-! ## A357065.P9449433546011250432

`lt[A040332(A075109(n+4)), A040358(3*n+1)]`
-/

namespace A357065.P9449433546011250432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040332 (A075109 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040358 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357065.P9449433546011250432

/-! ## A357065.P13265711113863996118

`lt[A049422(A133625(3*n+4)), A229304(n+3)]`
-/

namespace A357065.P13265711113863996118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (A133625 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357065.P13265711113863996118

/-! ## A357065.P10737553691387616222

`lt[A345257(n), A007504(A345262(n))]`
-/

namespace A357065.P10737553691387616222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A345262 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357065.P10737553691387616222

/-! ## A357065.P5645197467352712152

`eq[A008835(2*(n+2)), A008835(A000982(3*n+4))]`
-/

namespace A357065.P5645197467352712152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A000982 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357065.P5645197467352712152

/-! ## A357065.P12642004159721754235

`lt[A239954(A133625(3*n+4)), A000041(n)]`
-/

namespace A357065.P12642004159721754235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239954 (A133625 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357065.P12642004159721754235

/-!
# A357069: Number of partitions of n into at most 4 distinct positive squares.

The programs for A357069, there is no canonical definition to state claims against.
-/

/-! ## A357069.P3421734410141535605

`A347534(n)+A025443(n)`
-/

namespace A357069.P3421734410141535605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n + A025443 n

end

end A357069.P3421734410141535605

/-! ## A357069.P13498285737884665043

`A025437(n)+A025441(n)+char[n²]`
-/

namespace A357069.P13498285737884665043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A357069.P13498285737884665043

/-! ## A357069.P8248010712528942699

`A347534(n)+A025437(n)-A025442(n)`
-/

namespace A357069.P8248010712528942699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n + (A025437 n - A025442 n)

end

end A357069.P8248010712528942699

/-! ## A357069.P1250264172886048158

`A347534(n)+A025438(n)-A025444(n)`
-/

namespace A357069.P1250264172886048158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n + (A025438 n - A025444 n)

end

end A357069.P1250264172886048158

/-! ## A357069.P6503968755419393064

`A347534(n)+A025437(n)+A025441(n)-A025436(n)`
-/

namespace A357069.P6503968755419393064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n + (A025437 n + (A025441 n - A025436 n))

end

end A357069.P6503968755419393064

/-! ## A357069.P5477228934297773491

`A347534(n)+A025428(n)-A110654(A213024(n))`
-/

namespace A357069.P5477228934297773491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n + (A025428 n - A110654 (A213024 n).toNat)

end

end A357069.P5477228934297773491

/-! ## A357069.P15259432335898894902

`A033461(n)-A025439(A239139(n+1))`
-/

namespace A357069.P15259432335898894902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n - A025439 (A239139 (n + 1)).toNat

end

end A357069.P15259432335898894902

/-! ## A357069.P14363122341023128444

`A033461(n)%A171898(A072226(3*n+4))`
-/

namespace A357069.P14363122341023128444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 n) (A171898 (A072226 (3 * n + 4)).toNat)

end

end A357069.P14363122341023128444

/-! ## A357069.P11957259537186323005

`A033461(n)%A074294(A230356(n+1))`
-/

namespace A357069.P11957259537186323005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 n) (A074294 (A230356 (n + 1)).toNat)

end

end A357069.P11957259537186323005

/-!
# A357070: Number of partitions of n into at most 2 distinct positive triangular numbers.

The programs for A357070, the canonical program `A357070.P10423961064623382199` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357070 has offset 0).

The definition of A357070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357070.P1644401868430860479

`A307597(n)+char[∑[n]]`
-/

namespace A357070.P1644401868430860479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A357070.P1644401868430860479

namespace A357070

/-- `A307597(n)+char[∑[n]]` -/
def P1644401868430860479.Spec : Prop :=
  ∀ n, P1644401868430860479.a n = A357070 n

end A357070

/-! ## A357070.P6156126894807356363

`A025426(ceil(acot(n))+4*n)`
-/

namespace A357070.P6156126894807356363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + (4 * n : ℤ)).toNat

end

end A357070.P6156126894807356363

namespace A357070

/-- `A025426(ceil(acot(n))+4*n)` -/
def P6156126894807356363.Spec : Prop :=
  ∀ n, P6156126894807356363.a n = A357070 n

end A357070

/-! ## A357070.P10864273908234581555

`A025426(or(4*n, ceil(acot(n))))`
-/

namespace A357070.P10864273908234581555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (Int.lor (4 * n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A357070.P10864273908234581555

namespace A357070

/-- `A025426(or(4*n, ceil(acot(n))))` -/
def P10864273908234581555.Spec : Prop :=
  ∀ n, P10864273908234581555.a n = A357070 n

end A357070

/-! ## A357070.P8519276712924152361

`A025426(xor(4*n, ceil(acot(n))))`
-/

namespace A357070.P8519276712924152361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (Int.xor (4 * n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A357070.P8519276712924152361

namespace A357070

/-- `A025426(xor(4*n, ceil(acot(n))))` -/
def P8519276712924152361.Spec : Prop :=
  ∀ n, P8519276712924152361.a n = A357070 n

end A357070

/-! ## A357070.P16679162265083537588

`char[∑[n]]+floor(A053603(n)/2)`
-/

namespace A357070.P16679162265083537588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(A053603 n : ℚ) / 2⌋

end

end A357070.P16679162265083537588

namespace A357070

/-- `char[∑[n]]+floor(A053603(n)/2)` -/
def P16679162265083537588.Spec : Prop :=
  ∀ n, P16679162265083537588.a n = A357070 n

end A357070

/-! ## A357070.P11903886728703046222

`A025426(floor(3/acot(n))+n+1)`
-/

namespace A357070.P11903886728703046222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A357070.P11903886728703046222

namespace A357070

/-- `A025426(floor(3/acot(n))+n+1)` -/
def P11903886728703046222.Spec : Prop :=
  ∀ n, P11903886728703046222.a n = A357070 n

end A357070

/-! ## A357070.P7781287252835740537

`A025441(record[a(n-1)+16])` with `a(0)=13, a(1)=5, a(2)=20`
-/

namespace A357070.P7781287252835740537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 5, 20] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A357070.P7781287252835740537

namespace A357070

/-- `A025441(record[a(n-1)+16])` -/
def P7781287252835740537.Spec : Prop :=
  ∀ n, P7781287252835740537.a n = A357070 n

end A357070

/-! ## A357070.P16720963891413415949

`A025426(A008574(n)+1)`
-/

namespace A357070.P16720963891413415949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A008574 n + 1).toNat

end

end A357070.P16720963891413415949

namespace A357070

/-- `A025426(A008574(n)+1)` -/
def P16720963891413415949.Spec : Prop :=
  ∀ n, P16720963891413415949.a n = A357070 n

end A357070

/-! ## A357070.P6770064483421904397

`A025426(A063110(n+1))`
-/

namespace A357070.P6770064483421904397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A063110 (n + 1)).toNat

end

end A357070.P6770064483421904397

namespace A357070

/-- `A025426(A063110(n+1))` -/
def P6770064483421904397.Spec : Prop :=
  ∀ n, P6770064483421904397.a n = A357070 n

end A357070

/-! ## A357070.P17818001507393568506

`A025435(A063164(n+1))`
-/

namespace A357070.P17818001507393568506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A063164 (n + 1)).toNat

end

end A357070.P17818001507393568506

namespace A357070

/-- `A025435(A063164(n+1))` -/
def P17818001507393568506.Spec : Prop :=
  ∀ n, P17818001507393568506.a n = A357070 n

end A357070

/-! ## A357070.P98617370606522410

`A357071(n)-A307598(n)`
-/

namespace A357070.P98617370606522410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357071 n - A307598 n

end

end A357070.P98617370606522410

namespace A357070

/-- `A357071(n)-A307598(n)` -/
def P98617370606522410.Spec : Prop :=
  ∀ n, P98617370606522410.a n = A357070 n

end A357070

/-! ## A357070.P16451190899939968387

`A357072(n)-A316491(n)`
-/

namespace A357070.P16451190899939968387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357072 n - A316491 n

end

end A357070.P16451190899939968387

namespace A357070

/-- `A357072(n)-A316491(n)` -/
def P16451190899939968387.Spec : Prop :=
  ∀ n, P16451190899939968387.a n = A357070 n

end A357070

/-! ## A357070.P16706645865363628232

`A063725(A086570(2*n+1))/2`
-/

namespace A357070.P16706645865363628232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063725 (A086570 (2 * n + 1)).toNat : ℚ) / 2

end

end A357070.P16706645865363628232

namespace A357070

/-- `A063725(A086570(2*n+1))/2` -/
def P16706645865363628232.Spec : Prop :=
  ∀ n, P16706645865363628232.a n = (A357070 n : ℚ)

end A357070

/-! ## A357070.P4563159819171494141

`A025426(2*n+1+A028310(2*n))`
-/

namespace A357070.P4563159819171494141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 ((2 * n + 1 : ℤ) + A028310 (2 * n)).toNat

end

end A357070.P4563159819171494141

namespace A357070

/-- `A025426(2*n+1+A028310(2*n))` -/
def P4563159819171494141.Spec : Prop :=
  ∀ n, P4563159819171494141.a n = A357070 n

end A357070

/-! ## A357070.P15683907096535846185

`A319797(A133263(n)-1)+A307597(n)`
-/

namespace A357070.P15683907096535846185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133263 n - 1).toNat + A307597 n

end

end A357070.P15683907096535846185

namespace A357070

/-- `A319797(A133263(n)-1)+A307597(n)` -/
def P15683907096535846185.Spec : Prop :=
  ∀ n, P15683907096535846185.a n = A357070 n

end A357070

/-! ## A357070.P12828327992943642965

`A025435(A022144(2*n+1)+A022144(2*n))`
-/

namespace A357070.P12828327992943642965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A022144 (2 * n + 1) + A022144 (2 * n)).toNat

end

end A357070.P12828327992943642965

namespace A357070

/-- `A025435(A022144(2*n+1)+A022144(2*n))` -/
def P12828327992943642965.Spec : Prop :=
  ∀ n, P12828327992943642965.a n = A357070 n

end A357070

/-! ## A357070.P10423961064623382199

`A010054(n)+A053603(n)-A110654(A053603(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A357070

/-- `A010054(n)+A053603(n)-A110654(A053603(n))` -/
def P10423961064623382199.Spec : Prop :=
  ∀ n, P10423961064623382199.a n = A357070 n

theorem P10423961064623382199.correct : P10423961064623382199.Spec := by
  intro n
  simp only [A357070]

end A357070

/-!
# A357071: Number of partitions of n into at most 3 distinct positive triangular numbers.

The programs for A357071, there is no canonical definition to state claims against.
-/

/-! ## A357071.P17833390933769411472

`A224326(n)+char[∑[n]]`
-/

namespace A357071.P17833390933769411472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A357071.P17833390933769411472

/-! ## A357071.P7326139416688687358

`A357070(n)+A307598(n)`
-/

namespace A357071.P7326139416688687358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + A307598 n

end

end A357071.P7326139416688687358

/-! ## A357071.P18337931110868967909

`A035214(n)+A224326(n)-1`
-/

namespace A357071.P18337931110868967909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A224326 n - 1)

end

end A357071.P18337931110868967909

/-! ## A357071.P8551640663215272524

`A025436(8*n+3)+A010054(n)`
-/

namespace A357071.P8551640663215272524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (8 * n + 3) + A010054 n

end

end A357071.P8551640663215272524

/-! ## A357071.P8933647056681850008

`A025442(8*n+3)+A010054(n)`
-/

namespace A357071.P8933647056681850008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (8 * n + 3) + A010054 n

end

end A357071.P8933647056681850008

/-! ## A357071.P18199137611870281212

`A347534(8*n+3)+A010054(n)`
-/

namespace A357071.P18199137611870281212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 (8 * n + 3) + A010054 n

end

end A357071.P18199137611870281212

/-! ## A357071.P5458241181335991331

`A307598(n)+A307597(n)+char[∑[n]]`
-/

namespace A357071.P5458241181335991331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + (A307597 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A357071.P5458241181335991331

/-! ## A357071.P18419640007882270691

`A307598(n)+A025426(A063110(n+1))`
-/

namespace A357071.P18419640007882270691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A025426 (A063110 (n + 1)).toNat

end

end A357071.P18419640007882270691

/-! ## A357071.P10299995676246037725

`A307598(n)+A025435(A063164(n+1))`
-/

namespace A357071.P10299995676246037725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 n + A025435 (A063164 (n + 1)).toNat

end

end A357071.P10299995676246037725

/-! ## A357071.P13221912114676491181

`A010054(n)+A307598(n)+A307597(n)`
-/

namespace A357071.P13221912114676491181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A307598 n + A307597 n)

end

end A357071.P13221912114676491181

/-! ## A357071.P14545132828878634929

`A002636(n)+A010054(n)-A033761(n)`
-/

namespace A357071.P14545132828878634929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n + (A010054 n - A033761 n)

end

end A357071.P14545132828878634929

/-! ## A357071.P5139459890200272859

`A010054(n)+A002636(n)-A216282(A017101(n))`
-/

namespace A357071.P5139459890200272859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (A002636 n - A216282 (A017101 n).toNat)

end

end A357071.P5139459890200272859

/-! ## A357071.P11768176906588280197

`A010054(n)+A025442(A017101(n))%A000124(n)`
-/

namespace A357071.P11768176906588280197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + Int.tmod (A025442 (A017101 n).toNat) (A000124 n)

end

end A357071.P11768176906588280197

/-!
# A357072: Number of partitions of n into at most 4 distinct positive triangular numbers.

The programs for A357072, there is no canonical definition to state claims against.
-/

/-! ## A357072.P14270108284894459243

`A357070(n)+A316491(n)`
-/

namespace A357072.P14270108284894459243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + A316491 n

end

end A357072.P14270108284894459243

/-! ## A357072.P11593786593459659191

`A357070(n)+A167700(8*n+4)`
-/

namespace A357072.P11593786593459659191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + A167700 (8 * n + 4)

end

end A357072.P11593786593459659191

/-! ## A357072.P15768871415265078782

`A357070(n)+A025443(2*n+1)+A025437(2*n+1)`
-/

namespace A357072.P15768871415265078782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + (A025443 (2 * n + 1) + A025437 (2 * n + 1))

end

end A357072.P15768871415265078782

/-! ## A357072.P3945958841274565732

`A357070(n)+A025437(8*n+4)-A025437(2*n+1)`
-/

namespace A357072.P3945958841274565732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + (A025437 (8 * n + 4) - A025437 (2 * n + 1))

end

end A357072.P3945958841274565732

/-! ## A357072.P3598236227007668205

`A357070(n)+A025443(8*n+4)-A025443(2*n+1)`
-/

namespace A357072.P3598236227007668205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + (A025443 (8 * n + 4) - A025443 (2 * n + 1))

end

end A357072.P3598236227007668205

/-! ## A357072.P2383832166048142376

`A357070(n)+A025442(2*n+1)+2*A025443(2*n+1)`
-/

namespace A357072.P2383832166048142376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357070 n + (A025442 (2 * n + 1) + 2 * A025443 (2 * n + 1))

end

end A357072.P2383832166048142376

/-!
# A357073: For n >= 1, a(n) = A003714(n) mod n.

The programs for A357073, the canonical program `A357073.P15388237282562208061` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357073 has offset 1).

The definition of A357073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357073.P15388237282562208061

`A003714(n+1)%(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A357073

/-- `A003714(n+1)%(n+1)` -/
def P15388237282562208061.Spec : Prop :=
  ∀ n, P15388237282562208061.a n = A357073 (n + 1)

theorem P15388237282562208061.correct : P15388237282562208061.Spec := by
  intro n
  simp only [A357073, Nat.add_sub_cancel]

end A357073

/-! ## A357073.P14172131428776894142

`∑[A129761(n)]%(n+1)`
-/

namespace A357073.P14172131428776894142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A357073.P14172131428776894142

namespace A357073

/-- `∑[A129761(n)]%(n+1)` -/
def P14172131428776894142.Spec : Prop :=
  ∀ n, P14172131428776894142.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P14555829233518895837

`(A022340(n+1)/2)%(n+1)`
-/

namespace A357073.P14555829233518895837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A022340 (n + 1) : ℚ) / 2)) (n + 1 : ℤ)

end

end A357073.P14555829233518895837

namespace A357073

/-- `(A022340(n+1)/2)%(n+1)` -/
def P14555829233518895837.Spec : Prop :=
  ∀ n, P14555829233518895837.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P9292592160023246394

`record[and(2*n+1, a(and(n, n-1))-(2*n+1))]%(n+1)` with `a(0)=1`
-/

namespace A357073.P9292592160023246394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (2 * n + 1 : ℤ) (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - (2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A357073.P9292592160023246394

namespace A357073

/-- `record[and(2*n+1, a(and(n, n-1))-(2*n+1))]%(n+1)` -/
def P9292592160023246394.Spec : Prop :=
  ∀ n, P9292592160023246394.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P7614214777288518044

`eq[3, floor(xor(n, 3*n)/(n+1))+2]%(n+1)`
-/

namespace A357073.P7614214777288518044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (3 * n) : ℚ) / (n + 1 : ℚ)⌋ + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1)

end

end A357073.P7614214777288518044

namespace A357073

/-- `eq[3, floor(xor(n, 3*n)/(n+1))+2]%(n+1)` -/
def P7614214777288518044.Spec : Prop :=
  ∀ n, (P7614214777288518044.a n : ℤ) = A357073 (n + 1)

end A357073

/-! ## A357073.P3458197444808834314

`lt[A344180(n)², n+1]%(n+1)`
-/

namespace A357073.P3458197444808834314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % (n + 1)

end

end A357073.P3458197444808834314

namespace A357073

/-- `lt[A344180(n)², n+1]%(n+1)` -/
def P3458197444808834314.Spec : Prop :=
  ∀ n, (P3458197444808834314.a n : ℤ) = A357073 (n + 1)

end A357073

/-! ## A357073.P318847836293170523

`record[A292272(n+1)]%(n+1)`
-/

namespace A357073.P318847836293170523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A357073.P318847836293170523

namespace A357073

/-- `record[A292272(n+1)]%(n+1)` -/
def P318847836293170523.Spec : Prop :=
  ∀ n, P318847836293170523.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P15237030312251061777

`record[A292601(n+1)]%(n+1)`
-/

namespace A357073.P15237030312251061777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A357073.P15237030312251061777

namespace A357073

/-- `record[A292601(n+1)]%(n+1)` -/
def P15237030312251061777.Spec : Prop :=
  ∀ n, P15237030312251061777.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P4683011509299725129

`eq[1, A116361(n)]%(n+1)`
-/

namespace A357073.P4683011509299725129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1)

end

end A357073.P4683011509299725129

namespace A357073

/-- `eq[1, A116361(n)]%(n+1)` -/
def P4683011509299725129.Spec : Prop :=
  ∀ n, (P4683011509299725129.a n : ℤ) = A357073 (n + 1)

end A357073

/-! ## A357073.P4602122689256593335

`record[A090077(n+1)]%(n+1)`
-/

namespace A357073.P4602122689256593335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A357073.P4602122689256593335

namespace A357073

/-- `record[A090077(n+1)]%(n+1)` -/
def P4602122689256593335.Spec : Prop :=
  ∀ n, P4602122689256593335.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P12764659092314976231

`record[A179821(n+1)]%(n+1)`
-/

namespace A357073.P12764659092314976231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A357073.P12764659092314976231

namespace A357073

/-- `record[A179821(n+1)]%(n+1)` -/
def P12764659092314976231.Spec : Prop :=
  ∀ n, P12764659092314976231.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P9846084365267328367

`eq[(n+1)%(A319409(n)+1), A130716(n+2)]%(n+1)`
-/

namespace A357073.P9846084365267328367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A319409 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (n + 1)

end

end A357073.P9846084365267328367

namespace A357073

/-- `eq[(n+1)%(A319409(n)+1), A130716(n+2)]%(n+1)` -/
def P9846084365267328367.Spec : Prop :=
  ∀ n, (P9846084365267328367.a n : ℤ) = A357073 (n + 1)

end A357073

/-! ## A357073.P4686905322001840167

`eq[A319419(n)%A344180(n), A130716(n+2)]%(n+1)`
-/

namespace A357073.P4686905322001840167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319419 n) (A344180 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (n + 1)

end

end A357073.P4686905322001840167

namespace A357073

/-- `eq[A319419(n)%A344180(n), A130716(n+2)]%(n+1)` -/
def P4686905322001840167.Spec : Prop :=
  ∀ n, (P4686905322001840167.a n : ℤ) = A357073 (n + 1)

end A357073

/-! ## A357073.P864405998621858783

`record[A184615(n+1)]%(n+1)`
-/

namespace A357073.P864405998621858783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A357073.P864405998621858783

namespace A357073

/-- `record[A184615(n+1)]%(n+1)` -/
def P864405998621858783.Spec : Prop :=
  ∀ n, P864405998621858783.a n = A357073 (n + 1)

end A357073

/-! ## A357073.P17854131736685636045

`A289435(A022340(n+1))%(n+1)`
-/

namespace A357073.P17854131736685636045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289435 (A022340 (n + 1)).toNat) (n + 1 : ℤ)

end

end A357073.P17854131736685636045

namespace A357073

/-- `A289435(A022340(n+1))%(n+1)` -/
def P17854131736685636045.Spec : Prop :=
  ∀ n, P17854131736685636045.a n = A357073 (n + 1)

end A357073

/-!
# A357074: Numbers sandwiched between a pair of numbers each with exactly two prime factors (counted without multiplicity).

The programs for A357074, there is no canonical definition to state claims against.
-/

/-! ## A357074.P17809057849803503096

`eq[char[A088070(n+1)], A076479(n+1)]`
-/

namespace A357074.P17809057849803503096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A357074.P17809057849803503096

/-! ## A357074.P9571225804141116226

`∩[A007774(n+1)+1, A088070(n+1)]`
-/

namespace A357074.P9571225804141116226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357074.P9571225804141116226

/-! ## A357074.P7340962232840110916

`∩[A020725(A007774(n+1)), A088070(n+1)]`
-/

namespace A357074.P7340962232840110916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A007774 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357074.P7340962232840110916

/-! ## A357074.P12319592071714418839

`A020725(∩[A007774(n+1)-2, A007774(n+1)])`
-/

namespace A357074.P12319592071714418839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A357074.P12319592071714418839

/-! ## A357074.P2758912663074309499

`∩[A088070(n+1), A226039(n+1)+2]`
-/

namespace A357074.P2758912663074309499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226039 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357074.P2758912663074309499

/-!
# A357077: The lesser of two consecutive numbers with at least 3 prime factors (counted with multiplicity).

The programs for A357077, the canonical program `A357077.P18209968260014703734` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357077 has offset 1).

The definition of A357077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5053 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357077.P18209968260014703734

`∩[A033942(n+1)-1, A033942(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A357077

/-- `∩[A033942(n+1)-1, A033942(n+1)]` -/
def P18209968260014703734.Spec : Prop :=
  ∀ n, (P18209968260014703734.a n : ℤ) = A357077 (n + 1)

theorem P18209968260014703734.correct : P18209968260014703734.Spec := by
  intro n
  simp only [A357077, Nat.add_sub_cancel]

end A357077

/-! ## A357077.P5933910815470062813

`∩[A111087(n+1)-1, A111087(n+1)]`
-/

namespace A357077.P5933910815470062813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357077.P5933910815470062813

namespace A357077

/-- `∩[A111087(n+1)-1, A111087(n+1)]` -/
def P5933910815470062813.Spec : Prop :=
  ∀ n, (P5933910815470062813.a n : ℤ) = A357077 (n + 1)

end A357077

/-! ## A357077.P11726954537690817210

`lt[2, gcd(A054576(n+1), A105700(n))]`
-/

namespace A357077.P11726954537690817210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054576 (n + 1)) (A105700 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357077.P11726954537690817210

namespace A357077

/-- `lt[2, gcd(A054576(n+1), A105700(n))]` -/
def P11726954537690817210.Spec : Prop :=
  ∀ n, (P11726954537690817210.a n : ℤ) = A357077 (n + 1)

end A357077

/-! ## A357077.P9757698273458556168

`lt[n*A105700(n), A101606(n+1)]`
-/

namespace A357077.P9757698273458556168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A357077.P9757698273458556168

namespace A357077

/-- `lt[n*A105700(n), A101606(n+1)]` -/
def P9757698273458556168.Spec : Prop :=
  ∀ n, (P9757698273458556168.a n : ℤ) = A357077 (n + 1)

end A357077

/-! ## A357077.P5313433333446487868

`∩[A033942(n+1), A023443(A033942(n+1))]`
-/

namespace A357077.P5313433333446487868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033942 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357077.P5313433333446487868

namespace A357077

/-- `∩[A033942(n+1), A023443(A033942(n+1))]` -/
def P5313433333446487868.Spec : Prop :=
  ∀ n, (P5313433333446487868.a n : ℤ) = A357077 (n + 1)

end A357077

/-! ## A357077.P5793836872603078321

`∩[A233583(A033942(n+1)), A033942(n+3)]`
-/

namespace A357077.P5793836872603078321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A033942 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357077.P5793836872603078321

namespace A357077

/-- `∩[A233583(A033942(n+1)), A033942(n+3)]` -/
def P5793836872603078321.Spec : Prop :=
  ∀ n, (P5793836872603078321.a n : ℤ) = A357077 (n + 1)

end A357077

/-! ## A357077.P14597318439077761909

`(A384372(n+1)-1)/2`
-/

namespace A357077.P14597318439077761909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384372 (n + 1) - 1 : ℚ) / 2

end

end A357077.P14597318439077761909

namespace A357077

/-- `(A384372(n+1)-1)/2` -/
def P14597318439077761909.Spec : Prop :=
  ∀ n, P14597318439077761909.a n = (A357077 (n + 1) : ℚ)

end A357077

/-! ## A357077.P10725893313959007481

`A004524(A384372(n+1))`
-/

namespace A357077.P10725893313959007481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A384372 (n + 1)).toNat

end

end A357077.P10725893313959007481

namespace A357077

/-- `A004524(A384372(n+1))` -/
def P10725893313959007481.Spec : Prop :=
  ∀ n, P10725893313959007481.a n = A357077 (n + 1)

end A357077

/-!
# A357078: Triangle read by rows. The partition transform of A355488, which are the alternating row sums of the number of permutations of [n] with k components (A059438).

The programs for A357078, there is no canonical definition to state claims against.
-/

/-! ## A357078.P12851435095063556829

`A341793(A269948(n+1))`
-/

namespace A357078.P12851435095063556829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 ((A269948 (n + 1)).toNat + 10)

end

end A357078.P12851435095063556829

/-! ## A357078.P14642070669410806641

`A276090(2^A048993(n+1))`
-/

namespace A357078.P14642070669410806641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A048993 (n + 1) : ℤ))).toNat

end

end A357078.P14642070669410806641

/-! ## A357078.P1207722863669443976

`A046113((A369923(n+1)+1)²-1)`
-/

namespace A357078.P1207722863669443976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 ((A369923 (n + 1) + 1) ^ 2 - 1).toNat

end

end A357078.P1207722863669443976

/-! ## A357078.P7036404266839490514

`and(A078918(A078920(n)), A078937(n))`
-/

namespace A357078.P7036404266839490514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078918 (A078920 n).toNat) (A078937 n)

end

end A357078.P7036404266839490514

/-! ## A357078.P5022975137379117605

`A092921(A395201(n+1))`
-/

namespace A357078.P5022975137379117605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A395201 (n + 1)).toNat

end

end A357078.P5022975137379117605

/-!
# A357079: Triangle read by rows. T(n, k) = A356265(n, k) + A357078(n, k) for 0 <= k <= n.

The programs for A357079, there is no canonical definition to state claims against.
-/

/-! ## A357079.P11498756714015807

`A048766(lcm(A135302(n), A299471(n+1)))`
-/

namespace A357079.P11498756714015807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A135302 n) (A299471 (n + 1)))

end

end A357079.P11498756714015807

/-! ## A357079.P7337710544384763152

`(A321964(n)^A351699(2*n+1)-1)%(n+1)+1`
-/

namespace A357079.P7337710544384763152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A321964 n : ℚ) ^ (A351699 (2 * n + 1) : ℤ) - 1)) (n + 1 : ℤ) + 1

end

end A357079.P7337710544384763152

/-! ## A357079.P849759022290791349

`A038500(A247603(n+2))*A339650(n)`
-/

namespace A357079.P849759022290791349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A247603 (n + 2)).toNat * A339650 n

end

end A357079.P849759022290791349

/-!
# A357080: Numbers k such that the sum of the digits of k multiplied by the sum of the digits of k^2 equals k.

The programs for A357080, there is no canonical definition to state claims against.
-/

/-! ## A357080.P16426235188874967248

`eq[n, A004159(n)*A007953(n)]`
-/

namespace A357080.P16426235188874967248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n * A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357080.P16426235188874967248

/-! ## A357080.P13034603728104913531

`eq[A004159(n)*A057147(n), n²]`
-/

namespace A357080.P13034603728104913531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n * A057147 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A357080.P13034603728104913531

/-! ## A357080.P8581802768742023140

`eq[n, (n²-A224977(n))*A007953(n)]`
-/

namespace A357080.P8581802768742023140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A224977 n) * A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A357080.P8581802768742023140

/-!
# A357081: Leader at step n of the THROWBACK procedure (see definition in comments).

The programs for A357081, the canonical program `A357081.P11726809610074408140` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357081 has offset 0).

The definition of A357081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357081.P11726809610074408140

`Δ[a(floor(3*n/4))+n]+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A357081

/-- `Δ[a(floor(3*n/4))+n]+2` -/
def P11726809610074408140.Spec : Prop :=
  ∀ n, P11726809610074408140.a n = A357081 n

theorem P11726809610074408140.correct : P11726809610074408140.Spec := by
  intro n
  simp only [A357081]

end A357081

/-! ## A357081.P1001797878278701486

`A087165(n+1)+2`
-/

namespace A357081.P1001797878278701486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087165 (n + 1) + 2

end

end A357081.P1001797878278701486

namespace A357081

/-- `A087165(n+1)+2` -/
def P1001797878278701486.Spec : Prop :=
  ∀ n, P1001797878278701486.a n = A357081 n

end A357081

/-! ## A357081.P11665491905814689296

`6-Δ[A244041(3*n)]`
-/

namespace A357081.P11665491905814689296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244041 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f1 (n + 1) - f1 n)

end

end A357081.P11665491905814689296

namespace A357081

/-- `6-Δ[A244041(3*n)]` -/
def P11665491905814689296.Spec : Prop :=
  ∀ n, P11665491905814689296.a n = A357081 n

end A357081

/-! ## A357081.P3873346282227574404

`Δ[floor(a(A057353(n))+n)]+2` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A357081.P3873346282227574404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A057353 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2

end

end A357081.P3873346282227574404

namespace A357081

/-- `Δ[floor(a(A057353(n))+n)]+2` -/
def P3873346282227574404.Spec : Prop :=
  ∀ n, P3873346282227574404.a n = A357081 n

end A357081

/-! ## A357081.P9410398487534765359

`A009056(A087165(n+1))`
-/

namespace A357081.P9410398487534765359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A087165 (n + 1)).toNat

end

end A357081.P9410398487534765359

namespace A357081

/-- `A009056(A087165(n+1))` -/
def P9410398487534765359.Spec : Prop :=
  ∀ n, P9410398487534765359.a n = A357081 n

end A357081

/-!
# A357082: a(0) = 0; for n > 0, a(n) is the smallest positive number not occurring earlier such that the binary string of a(n-1) + a(n) does not appear in the binary string concatenation of a(0)..a(n-1).

The programs for A357082, there is no canonical definition to state claims against.
-/

/-! ## A357082.P16910784668172729541

`A357148(n)-a(n-1)` with `a(0)=0`
-/

namespace A357082.P16910784668172729541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A357148 n - a (n - 1)

end

end A357082.P16910784668172729541

/-!
# A357084: E.g.f. satisfies log(A(x)) = (exp(x*A(x)) - 1)^2 * A(x).

The programs for A357084, there is no canonical definition to state claims against.
-/

/-! ## A357084.P1776384839655392464

`lcm(A000918(n), A137671(A209305(n)))`
-/

namespace A357084.P1776384839655392464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000918 n) (A137671 (A209305 n).toNat)

end

end A357084.P1776384839655392464

/-! ## A357084.P7179793738701142097

`A327442(A006530(n+1)*A097710(∑[n]))`
-/

namespace A357084.P7179793738701142097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327442 (A006530 (n + 1) * A097710 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A357084.P7179793738701142097

/-!
# A357085: E.g.f. satisfies log(A(x)) = (exp(x*A(x)) - 1)^3 * A(x).

The programs for A357085, there is no canonical definition to state claims against.
-/

/-! ## A357085.P12228444016253727922

`(3^n+3*(1-2^n))*A112798(3^n+4^n)`
-/

namespace A357085.P12228444016253727922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))) * A112798 (3 ^ n + 4 ^ n)

end

end A357085.P12228444016253727922

/-! ## A357085.P18211259442381347948

`lcm(3^n+3*(1-2^n), A213939(A000079(n)))`
-/

namespace A357085.P18211259442381347948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))) (A213939 (A000079 n).toNat)

end

end A357085.P18211259442381347948

/-! ## A357085.P13372007912027806500

`lcm(A001117(n), A020639((n+1)*(n²+n+1)*(n^3+n²+n+1)))`
-/

namespace A357085.P13372007912027806500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001117 n) (A020639 ((n + 1) * ((n ^ 2 + (n + 1)) * (n ^ 3 + n ^ 2 + (n + 1)))))

end

end A357085.P13372007912027806500

/-!
# A357087: E.g.f. satisfies A(x) * log(A(x)) = (exp(x*A(x)) - 1)^3.

The programs for A357087, there is no canonical definition to state claims against.
-/

/-! ## A357087.P12998554744102437682

`A004525(A357085(n)+A353664(n))`
-/

namespace A357087.P12998554744102437682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A357085 n + A353664 n).toNat

end

end A357087.P12998554744102437682

/-! ## A357087.P2009376449338589237

`A004526(A357085(n)+A353664(n))`
-/

namespace A357087.P2009376449338589237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A357085 n + A353664 n).toNat

end

end A357087.P2009376449338589237

/-! ## A357087.P12416461254636379044

`A004525(A357025(n)+A357010(n))`
-/

namespace A357087.P12416461254636379044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A357025 n + A357010 n).toNat

end

end A357087.P12416461254636379044

/-!
# A357088: E.g.f. satisfies A(x) * log(A(x)) = (exp(x*A(x)) - 1)^2 / 2.

The programs for A357088, there is no canonical definition to state claims against.
-/

/-! ## A357088.P3722885956923795288

`n*A337181(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A357088.P3722885956923795288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (n : ℤ) * A337181 (a (n - 1)).toNat

end

end A357088.P3722885956923795288

/-! ## A357088.P14912874539395003496

`A350889(A150934(n))`
-/

namespace A357088.P14912874539395003496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350889 (A150934 n).toNat

end

end A357088.P14912874539395003496

/-!
# A357089: E.g.f. satisfies A(x) * log(A(x)) = (exp(x*A(x)) - 1)^3 / 6.

The programs for A357089, there is no canonical definition to state claims against.
-/

/-! ## A357089.P10986590821541939812

`A126205(A192240(n)+A122283(n))`
-/

namespace A357089.P10986590821541939812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 (A192240 n + A122283 n).toNat

end

end A357089.P10986590821541939812

/-! ## A357089.P14711158159872030662

`A266608(n)+A066339(A209902(n))`
-/

namespace A357089.P14711158159872030662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266608 n + A066339 (A209902 n).toNat

end

end A357089.P14711158159872030662

/-! ## A357089.P13158017950387385835

`A126885(A268700(n))*A137917(n)`
-/

namespace A357089.P13158017950387385835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126885 (A268700 n).toNat * A137917 n

end

end A357089.P13158017950387385835

/-!
# A357090: E.g.f. satisfies A(x) = (1 - x * A(x))^(log(1 - x * A(x)) * A(x)).

The programs for A357090, there is no canonical definition to state claims against.
-/

/-! ## A357090.P10643874177604176431

`A052811(n)+A006370(A052770(n+1))`
-/

namespace A357090.P10643874177604176431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052811 n + A006370 (A052770 (n + 1)).toNat

end

end A357090.P10643874177604176431

/-! ## A357090.P5455743919304107510

`A026741(A112317(n+1))-A168077(n)`
-/

namespace A357090.P5455743919304107510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A112317 (n + 1)).toNat - A168077 n

end

end A357090.P5455743919304107510

/-!
# A357091: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(log(1 - x * A(x))^2 * A(x)).

The programs for A357091, there is no canonical definition to state claims against.
-/

/-! ## A357091.P6745308277349932300

`A353118(n)+A008594(A061133(n+1))`
-/

namespace A357091.P6745308277349932300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353118 n + A008594 (A061133 (n + 1)).toNat

end

end A357091.P6745308277349932300

/-! ## A357091.P736522784023319804

`A357093(n)+A014601(A052783(n))`
-/

namespace A357091.P736522784023319804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357093 n + A014601 (A052783 n).toNat

end

end A357091.P736522784023319804

/-! ## A357091.P9436548716665733697

`A357093(n)+A014601(A052785(n))`
-/

namespace A357091.P9436548716665733697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357093 n + A014601 (A052785 n).toNat

end

end A357091.P9436548716665733697

/-!
# A357092: E.g.f. satisfies A(x)^A(x) = (1 - x * A(x))^log(1 - x * A(x)).

The programs for A357092, there is no canonical definition to state claims against.
-/

/-! ## A357092.P18062409000297885206

`A296510(A052709(n))+A033999(n)`
-/

namespace A357092.P18062409000297885206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296510 (A052709 n).toNat + A033999 n

end

end A357092.P18062409000297885206

/-! ## A357092.P15728431362115733528

`A333921(A333898(n)-A000045(n))`
-/

namespace A357092.P15728431362115733528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 (A333898 n - A000045 n).toNat

end

end A357092.P15728431362115733528

/-!
# A357093: E.g.f. satisfies A(x)^A(x) = 1/(1 - x * A(x))^(log(1 - x * A(x))^2).

The programs for A357093, there is no canonical definition to state claims against.
-/

/-! ## A357093.P1860025376959158102

`A353344(n)+A014601(A052783(n))`
-/

namespace A357093.P1860025376959158102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353344 n + A014601 (A052783 n).toNat

end

end A357093.P1860025376959158102

/-! ## A357093.P3543573673498536881

`A353344(n)+A014601(A052785(n))`
-/

namespace A357093.P3543573673498536881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353344 n + A014601 (A052785 n).toNat

end

end A357093.P3543573673498536881

/-! ## A357093.P3424286703633181214

`A353344(n)+A014601(A052792(n))`
-/

namespace A357093.P3424286703633181214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353344 n + A014601 (A052792 n).toNat

end

end A357093.P3424286703633181214

/-!
# A357094: E.g.f. satisfies A(x)^A(x) = (1 - x * A(x))^(log(1 - x * A(x)) / 2).

The programs for A357094, there is no canonical definition to state claims against.
-/

/-! ## A357094.P3150128703796260441

`A329143(A354905(n))`
-/

namespace A357094.P3150128703796260441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329143 (A354905 n).toNat

end

end A357094.P3150128703796260441

/-! ## A357094.P7368668936947459382

`A371256(A226226(n)²)`
-/

namespace A357094.P7368668936947459382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A226226 n ^ 2).toNat

end

end A357094.P7368668936947459382

/-!
# A357095: E.g.f. satisfies A(x)^A(x) = 1/(1 - x * A(x))^(log(1 - x * A(x))^2 / 6).

The programs for A357095, there is no canonical definition to state claims against.
-/

/-! ## A357095.P2603321167196921825

`floor(A369952(n)/A115974(n))`
-/

namespace A357095.P2603321167196921825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A369952 n : ℚ) / (A115974 n : ℚ)⌋

end

end A357095.P2603321167196921825

/-! ## A357095.P16478807861866492497

`A065648(A000985(n))-A303837(n+1)`
-/

namespace A357095.P16478807861866492497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A000985 n).toNat - A303837 (n + 1)

end

end A357095.P16478807861866492497

/-! ## A357095.P15543860685360062449

`A214979(A206226(n)+A000043(n+2))`
-/

namespace A357095.P15543860685360062449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214979 (A206226 n + A000043 (n + 2)).toNat

end

end A357095.P15543860685360062449

/-!
# A357096: Least number whose set of decimal digits coincides with the set of decimal digits of prime(n).

The programs for A357096, there is no canonical definition to state claims against.
-/

/-! ## A357096.P895885021835077035

`A180410(A067087(n+1))`
-/

namespace A357096.P895885021835077035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (A067087 (n + 1)).toNat

end

end A357096.P895885021835077035

/-! ## A357096.P18169855149446933815

`A180410(A092909(n+1))`
-/

namespace A357096.P18169855149446933815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (A092909 (n + 1)).toNat

end

end A357096.P18169855149446933815

/-! ## A357096.P14864475080730194722

`A180410(A176597(n+1))`
-/

namespace A357096.P14864475080730194722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (A176597 (n + 1)).toNat

end

end A357096.P14864475080730194722

/-! ## A357096.P2895986205277145462

`A028905(n+1)%A004176(A001248(n+1))`
-/

namespace A357096.P2895986205277145462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028905 (n + 1)) (A004176 (A001248 (n + 1)).toNat)

end

end A357096.P2895986205277145462

/-! ## A357096.P16819719854642387483

`A180410(A000040(n+1)%A180626(n+4))`
-/

namespace A357096.P16819719854642387483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (Int.tmod (A000040 (n + 1)) (A180626 (n + 4))).toNat

end

end A357096.P16819719854642387483

