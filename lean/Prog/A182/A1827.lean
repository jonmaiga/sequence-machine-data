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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A182700: Triangle T(n,k) = n*A000041(n-k), 0<=k<=n, read by rows.

The programs for A182700, there is no canonical definition to state claims against.
-/

/-! ## A182700.P15844022162325055895

`row(n)*A000041(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182700.P15844022162325055895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) * A000041 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A182700.P15844022162325055895

/-! ## A182700.P2921065949639955703

`∑[char[∑[n+1]]]*A027293(n+1)`
-/

namespace A182700.P2921065949639955703
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027293 (n + 1)

end

end A182700.P2921065949639955703

/-! ## A182700.P7017724754577816577

`A000041(A025581(n))*A003056(n)`
-/

namespace A182700.P7017724754577816577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat * A003056 n

end

end A182700.P7017724754577816577

/-! ## A182700.P7259511847248939179

`A000041(A004736(n+1)-1)*A003056(n)`
-/

namespace A182700.P7259511847248939179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1) - 1).toNat * A003056 n

end

end A182700.P7259511847248939179

/-! ## A182700.P12268253919075474453

`(A002024(n+1)-1)*A000041(A025581(n))`
-/

namespace A182700.P12268253919075474453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - 1) * A000041 (A025581 n).toNat

end

end A182700.P12268253919075474453

/-! ## A182700.P8141267430346653580

`(A002024(n+1)-1)*A119620(A099375(n))`
-/

namespace A182700.P8141267430346653580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - 1) * A119620 (A099375 n).toNat

end

end A182700.P8141267430346653580

/-! ## A182700.P14466299169019388283

`A002262(A025581(n)+n)*A000041(A025581(n))`
-/

namespace A182700.P14466299169019388283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A025581 n + (n : ℤ)).toNat * A000041 (A025581 n).toNat

end

end A182700.P14466299169019388283

/-! ## A182700.P12572409976893708230

`A000041(A003056(n)-A002262(n))*A003056(n)`
-/

namespace A182700.P12572409976893708230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A003056 n - A002262 n).toNat * A003056 n

end

end A182700.P12572409976893708230

/-! ## A182700.P7913309463607172548

`A182701(n+1)-A027293(n+1)`
-/

namespace A182700.P7913309463607172548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182701 (n + 1) - A027293 (n + 1)

end

end A182700.P7913309463607172548

/-! ## A182700.P17709659711656394955

`A182701(n+1)-A182701(n+1)/A002024(n+1)`
-/

namespace A182700.P17709659711656394955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182701 (n + 1) : ℚ) - (A182701 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A182700.P17709659711656394955

/-!
# A182701: Triangle T(n,k) = n*A000041(n-k) read by rows, 1 <= k <= n. Sum of the parts of all partitions of n that contain k as a part.

The programs for A182701, there is no canonical definition to state claims against.
-/

/-! ## A182701.P16407008134024877539

`(row(n)+1)*A000041(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182701.P16407008134024877539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * A000041 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1))

end

end A182701.P16407008134024877539

/-! ## A182701.P14566713497932374930

`A182700(comp[∑[n]])`
-/

namespace A182701.P14566713497932374930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A182701.P14566713497932374930

/-! ## A182701.P4884624242498880457

`∑[char[∑[n]]]*A027293(n+1)`
-/

namespace A182701.P4884624242498880457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A027293 (n + 1)

end

end A182701.P4884624242498880457

/-! ## A182701.P7632601743174861310

`A182700(n)+A027293(n+1)`
-/

namespace A182701.P7632601743174861310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 n + A027293 (n + 1)

end

end A182701.P7632601743174861310

/-! ## A182701.P11824642357040982761

`A000041(A057554(2*(n+1)))*round(sqrt(2*n+1))`
-/

namespace A182701.P11824642357040982761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A057554 (2 * (n + 1))).toNat * SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

end

end A182701.P11824642357040982761

/-! ## A182701.P1553433748488754158

`A000041(A025581(n))*A002024(n+1)`
-/

namespace A182701.P1553433748488754158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat * A002024 (n + 1)

end

end A182701.P1553433748488754158

/-! ## A182701.P10215992761421081252

`(A003056(n)+1)*A000041(A025581(n))`
-/

namespace A182701.P10215992761421081252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A000041 (A025581 n).toNat

end

end A182701.P10215992761421081252

/-! ## A182701.P3212559961134126502

`A002024(n+1)*A119620(A099375(n))`
-/

namespace A182701.P3212559961134126502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A119620 (A099375 n).toNat

end

end A182701.P3212559961134126502

/-! ## A182701.P15738014676713751659

`A000041(log2(A130321(n)))*A002024(n+1)`
-/

namespace A182701.P15738014676713751659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat * A002024 (n + 1)

end

end A182701.P15738014676713751659

/-! ## A182701.P10248093892786850115

`A000041(A193592(n+1))*A002024(n+1)`
-/

namespace A182701.P10248093892786850115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A193592 (n + 1)).toNat * A002024 (n + 1)

end

end A182701.P10248093892786850115

/-! ## A182701.P1297889766351259590

`A000041(A004736(n+1)-1)*A002024(n+1)`
-/

namespace A182701.P1297889766351259590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1) - 1).toNat * A002024 (n + 1)

end

end A182701.P1297889766351259590

/-! ## A182701.P11193772268704620265

`(A025581(n)+A002260(n+1))*A000041(A025581(n))`
-/

namespace A182701.P11193772268704620265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + A002260 (n + 1)) * A000041 (A025581 n).toNat

end

end A182701.P11193772268704620265

/-! ## A182701.P8278427986023483843

`A000041(A002024(n+1)-A002260(n+1))*A002024(n+1)`
-/

namespace A182701.P8278427986023483843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1) - A002260 (n + 1)).toNat * A002024 (n + 1)

end

end A182701.P8278427986023483843

/-! ## A182701.P10720830185867487225

`A000041(A025581(n))*A000194(2*n+1)`
-/

namespace A182701.P10720830185867487225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n).toNat * A000194 (2 * n + 1)

end

end A182701.P10720830185867487225

/-!
# A182702: Triangle T(n,k) = n*(A000041(n-k)) read by rows, k>=0.

The programs for A182702, there is no canonical definition to state claims against.
-/

/-! ## A182702.P12486283809590871793

`(row(n)+1)*A000041(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182702.P12486283809590871793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * A000041 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A182702.P12486283809590871793

/-! ## A182702.P7854998112218346852

`A182700(comp[∑[n-1]])`
-/

namespace A182702.P7854998112218346852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A182702.P7854998112218346852

/-! ## A182702.P3743068389326863112

`A000041(A004736(n+1))*A002024(n+1)`
-/

namespace A182702.P3743068389326863112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1)).toNat * A002024 (n + 1)

end

end A182702.P3743068389326863112

/-! ## A182702.P1183962859224302108

`(A003056(n)+1)*A000041(A004736(n+1))`
-/

namespace A182702.P1183962859224302108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A000041 (A004736 (n + 1)).toNat

end

end A182702.P1183962859224302108

/-! ## A182702.P2964370888214723608

`A000041(A025581(n)+1)*A002024(n+1)`
-/

namespace A182702.P2964370888214723608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n + 1).toNat * A002024 (n + 1)

end

end A182702.P2964370888214723608

/-! ## A182702.P1845644174805193177

`A002024(n+1)*A119620(A099375(n)+1)`
-/

namespace A182702.P1845644174805193177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A119620 (A099375 n + 1).toNat

end

end A182702.P1845644174805193177

/-! ## A182702.P17993598437803393144

`A000041(log2(A090988(n+1)))*A002024(n+1)`
-/

namespace A182702.P17993598437803393144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat * A002024 (n + 1)

end

end A182702.P17993598437803393144

/-! ## A182702.P14573066540732339618

`A000041(log2(A130321(n))+1)*A002024(n+1)`
-/

namespace A182702.P14573066540732339618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat * A002024 (n + 1)

end

end A182702.P14573066540732339618

/-! ## A182702.P12242193665705117062

`A000041(log2(A130330(n)+1))*A002024(n+1)`
-/

namespace A182702.P12242193665705117062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n + 1 : ℝ))).toNat * A002024 (n + 1)

end

end A182702.P12242193665705117062

/-! ## A182702.P17739505554671603512

`A000041(A057554(2*(n+1))+1)*A002024(n+1)`
-/

namespace A182702.P17739505554671603512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A057554 (2 * (n + 1)) + 1).toNat * A002024 (n + 1)

end

end A182702.P17739505554671603512

/-! ## A182702.P2891870854770605288

`(A004736(n+1)+A002262(n))*A000041(A004736(n+1))`
-/

namespace A182702.P2891870854770605288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + A002262 n) * A000041 (A004736 (n + 1)).toNat

end

end A182702.P2891870854770605288

/-! ## A182702.P10967590549220604220

`A000041(A002024(n+1)-A002262(n))*A002024(n+1)`
-/

namespace A182702.P10967590549220604220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1) - A002262 n).toNat * A002024 (n + 1)

end

end A182702.P10967590549220604220

/-! ## A182702.P11123997252638553732

`A000041(A057555(2*(n+1)))*A002024(n+1)`
-/

namespace A182702.P11123997252638553732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A057555 (2 * (n + 1))).toNat * A002024 (n + 1)

end

end A182702.P11123997252638553732

/-!
# A182703: Triangle read by rows: T(n,k) = number of occurrences of k in the last section of the set of partitions of n.

The programs for A182703, there is no canonical definition to state claims against.
-/

/-! ## A182703.P4703588475818711426

`A207383(n+1)/A002260(n+1)`
-/

namespace A182703.P4703588475818711426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207383 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A182703.P4703588475818711426

/-! ## A182703.P15334225302367887373

`A299769(n+1)/A133819(n+1)`
-/

namespace A182703.P15334225302367887373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299769 (n + 1) : ℚ) / (A133819 (n + 1) : ℚ)

end

end A182703.P15334225302367887373

/-! ## A182703.P5247257991467431085

`A299769(n+1)/A002260(n+1)²`
-/

namespace A182703.P5247257991467431085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299769 (n + 1) : ℚ) / (A002260 (n + 1) ^ 2 : ℚ)

end

end A182703.P5247257991467431085

/-! ## A182703.P16660314280869327383

`A066633(n+1)/A138785(n+1)*A207383(n+1)`
-/

namespace A182703.P16660314280869327383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066633 (n + 1) : ℚ) / (A138785 (n + 1) : ℚ) * (A207383 (n + 1) : ℚ)

end

end A182703.P16660314280869327383

/-! ## A182703.P8256503670244621334

`A207383(n+1)/A004736(A038722(n+1))`
-/

namespace A182703.P8256503670244621334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207383 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A182703.P8256503670244621334

/-! ## A182703.P15270929625018735191

`A207383(n+1)/A057555(Δ[n²])`
-/

namespace A182703.P15270929625018735191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207383 (n + 1) : ℚ) / (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A182703.P15270929625018735191

/-! ## A182703.P3443876160749390150

`A207031(n+1)-A207031(n+2)%A181187(n+1)`
-/

namespace A182703.P3443876160749390150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207031 (n + 1) - Int.tmod (A207031 (n + 2)) (A181187 (n + 1))

end

end A182703.P3443876160749390150

/-! ## A182703.P5656977814432127911

`A207383(n+1)*A228524(n+1)/A228527(n+1)`
-/

namespace A182703.P5656977814432127911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207383 (n + 1) * A228524 (n + 1) : ℚ) / (A228527 (n + 1) : ℚ)

end

end A182703.P5656977814432127911

/-! ## A182703.P9947788820449022457

`A207383(n+1)*A221876(n+1)/A228526(n+1)`
-/

namespace A182703.P9947788820449022457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207383 (n + 1) * A221876 (n + 1) : ℚ) / (A228526 (n + 1) : ℚ)

end

end A182703.P9947788820449022457

/-!
# A182704: Row sums of triangle A182700.

The programs for A182704, there is no canonical definition to state claims against.
-/

/-! ## A182704.P6544518418230488921

`n*A000070(n)`
-/

namespace A182704.P6544518418230488921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000070 n

end

end A182704.P6544518418230488921

/-! ## A182704.P4014323807980382021

`n*∑[A000041(n)]`
-/

namespace A182704.P4014323807980382021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P4014323807980382021

/-! ## A182704.P2496812390569514958

`n*∑[∑[A002865(n)]]`
-/

namespace A182704.P2496812390569514958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P2496812390569514958

/-! ## A182704.P13650447486606239542

`n*∑[A000065(n)+1]`
-/

namespace A182704.P13650447486606239542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P13650447486606239542

/-! ## A182704.P5367397027821904531

`n/2*∑[A139582(n)]`
-/

namespace A182704.P5367397027821904531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A182704.P5367397027821904531

/-! ## A182704.P9884059827903782565

`n*(∑[A052810(n)]-n)`
-/

namespace A182704.P9884059827903782565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A182704.P9884059827903782565

/-! ## A182704.P5757553703820934956

`n*∑[A133041(n)-n]`
-/

namespace A182704.P5757553703820934956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P5757553703820934956

/-! ## A182704.P14035681094965107063

`n*(A216053(n+1)-1)`
-/

namespace A182704.P14035681094965107063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A216053 (n + 1) - 1)

end

end A182704.P14035681094965107063

/-! ## A182704.P18258081998550670654

`n*(A058682(n)+1+n)`
-/

namespace A182704.P18258081998550670654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A058682 n + 1 + (n : ℤ))

end

end A182704.P18258081998550670654

/-! ## A182704.P15697048883964701007

`n/(n+1)*A182705(n+1)`
-/

namespace A182704.P15697048883964701007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A182705 (n + 1) : ℚ)

end

end A182704.P15697048883964701007

/-! ## A182704.P9188745932487534985

`A182705(n+1)-A000070(n)`
-/

namespace A182704.P9188745932487534985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182705 (n + 1) - A000070 n

end

end A182704.P9188745932487534985

/-! ## A182704.P15608953928948270387

`n*(A139582(n)+A058884(n))`
-/

namespace A182704.P15608953928948270387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A139582 n + A058884 n)

end

end A182704.P15608953928948270387

/-! ## A182704.P10662559637284571687

`n*(A306145(n)+A304620(n))`
-/

namespace A182704.P10662559637284571687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A306145 n + A304620 n)

end

end A182704.P10662559637284571687

/-! ## A182704.P17917514034204836826

`n*(A000291(n)-A000097(n))`
-/

namespace A182704.P17917514034204836826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000291 n - A000097 n)

end

end A182704.P17917514034204836826

/-! ## A182704.P2629378404013043166

`n*(A093694(n)-A096541(n))`
-/

namespace A182704.P2629378404013043166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A093694 n - A096541 n)

end

end A182704.P2629378404013043166

/-! ## A182704.P16914972552921737958

`n*∑[A295341(n)+A000726(n)]`
-/

namespace A182704.P16914972552921737958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P16914972552921737958

/-! ## A182704.P11839936050277425128

`n*A025065(2*n)`
-/

namespace A182704.P11839936050277425128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025065 (2 * n)

end

end A182704.P11839936050277425128

/-! ## A182704.P8142424496312005959

`n*∑[A035363(2*n)]`
-/

namespace A182704.P8142424496312005959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P8142424496312005959

/-! ## A182704.P11530842191895282361

`n*∑[A119620(2*n)]`
-/

namespace A182704.P11530842191895282361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P11530842191895282361

/-! ## A182704.P3407608248957356273

`n*∑[sqrt(A001255(n))]`
-/

namespace A182704.P3407608248957356273
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182704.P3407608248957356273

/-!
# A182705: Row sums of triangle A182701.

The programs for A182705, there is no canonical definition to state claims against.
-/

/-! ## A182705.P2597248405773499063

`(n+1)*A000070(n)`
-/

namespace A182705.P2597248405773499063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000070 n

end

end A182705.P2597248405773499063

/-! ## A182705.P4025241414632202742

`(n+1)*∑[A000041(n)]`
-/

namespace A182705.P4025241414632202742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182705.P4025241414632202742

/-! ## A182705.P17703961163501596349

`(n+1)*∑[∑[A002865(n)]]`
-/

namespace A182705.P17703961163501596349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182705.P17703961163501596349

/-! ## A182705.P13873289207789486845

`(n+1)*∑[A000065(n)+1]`
-/

namespace A182705.P13873289207789486845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182705.P13873289207789486845

/-! ## A182705.P12174539419316624396

`(n+1)*(A216053(n+1)-1)`
-/

namespace A182705.P12174539419316624396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A216053 (n + 1) - 1)

end

end A182705.P12174539419316624396

/-! ## A182705.P302814948843848365

`(n+1)*(A058682(n)+1+n)`
-/

namespace A182705.P302814948843848365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A058682 n + 1 + (n : ℤ))

end

end A182705.P302814948843848365

/-! ## A182705.P28097591987466061

`(n+1)*∑[∑[A232697(n)]-n]`
-/

namespace A182705.P28097591987466061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182705.P28097591987466061

/-! ## A182705.P16624653948940979493

`A182704(n)+A000070(n)`
-/

namespace A182705.P16624653948940979493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182704 n + A000070 n

end

end A182705.P16624653948940979493

/-! ## A182705.P17371293953900502829

`∑[A066186(n)+A000070(n)]`
-/

namespace A182705.P17371293953900502829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182705.P17371293953900502829

/-! ## A182705.P18434104884897158844

`∑[A066186(n)+∑[A000041(n)]]`
-/

namespace A182705.P18434104884897158844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182705.P18434104884897158844

/-! ## A182705.P13329936126552771611

`∑[A000070(n)+A220909(n)/2]`
-/

namespace A182705.P13329936126552771611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) + (A220909 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182705.P13329936126552771611

/-! ## A182705.P15926079072127630542

`(n+1)*∑[A295341(n)+A000726(n)]`
-/

namespace A182705.P15926079072127630542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182705.P15926079072127630542

/-! ## A182705.P6199261267959727404

`A014153(n)+A141156(n)-A000070(n)`
-/

namespace A182705.P6199261267959727404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n + (A141156 n - A000070 n)

end

end A182705.P6199261267959727404

/-! ## A182705.P4883674317805378140

`A182704(n+1)-A066186(n+1)`
-/

namespace A182705.P4883674317805378140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182704 (n + 1) - A066186 (n + 1)

end

end A182705.P4883674317805378140

/-! ## A182705.P2130383184431617440

`A182738(n+1)+A014153(n)-A066186(n+1)`
-/

namespace A182705.P2130383184431617440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182738 (n + 1) + (A014153 n - A066186 (n + 1))

end

end A182705.P2130383184431617440

/-! ## A182705.P5816915615281701541

`(n+1)*A025065(2*n)`
-/

namespace A182705.P5816915615281701541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025065 (2 * n)

end

end A182705.P5816915615281701541

/-! ## A182705.P2188724396793343716

`A000070(n)*A008619(2*n)`
-/

namespace A182705.P2188724396793343716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n * A008619 (2 * n)

end

end A182705.P2188724396793343716

/-! ## A182705.P4256705087408888030

`∑[A000041(n)]*A008619(2*n)`
-/

namespace A182705.P4256705087408888030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 (2 * n)

end

end A182705.P4256705087408888030

/-! ## A182705.P17352328213811398773

`∑[A000041(n)]*A052938(2*n)`
-/

namespace A182705.P17352328213811398773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052938 (2 * n)

end

end A182705.P17352328213811398773

/-! ## A182705.P5419669670356167444

`(n+1)*∑[A035363(2*n)]`
-/

namespace A182705.P5419669670356167444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182705.P5419669670356167444

/-!
# A182706: Row sums of triangle A182702.

The programs for A182706, there is no canonical definition to state claims against.
-/

/-! ## A182706.P17402663868671025398

`(n+1)*A026905(n+1)`
-/

namespace A182706.P17402663868671025398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026905 (n + 1)

end

end A182706.P17402663868671025398

/-! ## A182706.P1659110543430905704

`A182704(n+1)-(n+1)`
-/

namespace A182706.P1659110543430905704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182704 (n + 1) - (n + 1 : ℤ)

end

end A182706.P1659110543430905704

/-! ## A182706.P15639750405663948940

`(n+1)*∑[A000041(n+1)]`
-/

namespace A182706.P15639750405663948940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182706.P15639750405663948940

/-! ## A182706.P17772188499028731122

`(n+1)*(Δ[A014153(n)]-1)`
-/

namespace A182706.P17772188499028731122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A182706.P17772188499028731122

/-! ## A182706.P7035833271921138043

`(n+1)*(A000070(n+1)-1)`
-/

namespace A182706.P7035833271921138043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000070 (n + 1) - 1)

end

end A182706.P7035833271921138043

/-! ## A182706.P732040883857059846

`(n+1)*(A216053(n+2)-2)`
-/

namespace A182706.P732040883857059846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A216053 (n + 2) - 2)

end

end A182706.P732040883857059846

/-! ## A182706.P14380247892170347774

`(n+1)*(A058682(n+1)+n+1)`
-/

namespace A182706.P14380247892170347774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A058682 (n + 1) + (n + 1 : ℤ))

end

end A182706.P14380247892170347774

/-! ## A182706.P1481172130442774865

`(n+1)*∑[∑[A002865(n+1)]+1]`
-/

namespace A182706.P1481172130442774865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182706.P1481172130442774865

/-! ## A182706.P1799830574206443359

`∑[A194451(2*n+1)]*(n+1)`
-/

namespace A182706.P1799830574206443359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A182706.P1799830574206443359

/-! ## A182706.P16460772097688098927

`(n+1)*∑[record[A035363(n)]]`
-/

namespace A182706.P16460772097688098927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182706.P16460772097688098927

/-! ## A182706.P8119204052050233996

`(n+1)*∑[record[A035377(n)]]`
-/

namespace A182706.P8119204052050233996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182706.P8119204052050233996

/-! ## A182706.P9480646784898898421

`(A238629(2*(n+1))+2*n+1)*(n+1)`
-/

namespace A182706.P9480646784898898421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238629 (2 * (n + 1)) + (2 * n + 1 : ℤ)) * (n + 1 : ℤ)

end

end A182706.P9480646784898898421

/-! ## A182706.P3299083585333980893

`(n+1)*∑[A026807(∑[n]+1)]`
-/

namespace A182706.P3299083585333980893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182706.P3299083585333980893

/-!
# A182707: Sum of the parts of all partitions of n-1 plus the sum of the emergent parts of the partitions of n.

The programs for A182707, there is no canonical definition to state claims against.
-/

/-! ## A182707.P16006701016331838581

`A066186(n)+A182709(n+1)`
-/

namespace A182707.P16006701016331838581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A182709 (n + 1)

end

end A182707.P16006701016331838581

/-! ## A182707.P9973496047499015102

`A066186(n+1)-A046746(n+1)`
-/

namespace A182707.P9973496047499015102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A046746 (n + 1)

end

end A182707.P9973496047499015102

/-! ## A182707.P10049813332837055567

`A196039(n)+A196025(n+1)`
-/

namespace A182707.P10049813332837055567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196039 n + A196025 (n + 1)

end

end A182707.P10049813332837055567

/-! ## A182707.P4935057615251836899

`∑[A182709(n+1)+A046746(n)]`
-/

namespace A182707.P4935057615251836899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + A046746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182707.P4935057615251836899

/-! ## A182707.P9706344417727555712

`A196025(n+1)+∑[A046746(n)]`
-/

namespace A182707.P9706344417727555712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196025 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182707.P9706344417727555712

/-! ## A182707.P10434573831249439992

`A196039(n)+∑[A182709(n+1)]`
-/

namespace A182707.P10434573831249439992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196039 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182707.P10434573831249439992

/-! ## A182707.P16768343009366900435

`A182709(n+1)+n*A000041(n)`
-/

namespace A182707.P16768343009366900435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + (n : ℤ) * A000041 n

end

end A182707.P16768343009366900435

/-! ## A182707.P7899775958074656122

`A066186(n+1)+A196039(n)-A196039(n+1)`
-/

namespace A182707.P7899775958074656122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A196039 n - A196039 (n + 1))

end

end A182707.P7899775958074656122

/-! ## A182707.P6504255727346039431

`A196087(n+1)+A116686(n+1)`
-/

namespace A182707.P6504255727346039431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196087 (n + 1) + A116686 (n + 1)

end

end A182707.P6504255727346039431

/-! ## A182707.P10516632862629515970

`A066186(n+1)-(A182629(n+1)+A000203(n+1))`
-/

namespace A182707.P10516632862629515970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A182629 (n + 1) + A000203 (n + 1))

end

end A182707.P10516632862629515970

/-!
# A182708: a(n) is the sum of the smallest parts of all partitions of n that do not contain 1 as a part.

The programs for A182708, there is no canonical definition to state claims against.
-/

/-! ## A182708.P5248118370918700872

`A046746(n+1)-A000041(n)`
-/

namespace A182708.P5248118370918700872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) - A000041 n

end

end A182708.P5248118370918700872

/-! ## A182708.P17987095582947825886

`A196039(n+1)-(A196039(n)+A000041(n))`
-/

namespace A182708.P17987095582947825886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196039 (n + 1) - (A196039 n + A000041 n)

end

end A182708.P17987095582947825886

/-! ## A182708.P11643682491607488747

`A138880(n+1)-A182709(n+1)`
-/

namespace A182708.P11643682491607488747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) - A182709 (n + 1)

end

end A182708.P11643682491607488747

/-! ## A182708.P9274961864826711107

`A066186(n+1)-(A182707(n+1)+A000041(n))`
-/

namespace A182708.P9274961864826711107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A182707 (n + 1) + A000041 n)

end

end A182708.P9274961864826711107

/-! ## A182708.P8212920626314306020

`A006128(n+1)-(A116686(n+1)+A000041(n))`
-/

namespace A182708.P8212920626314306020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A116686 (n + 1) + A000041 n)

end

end A182708.P8212920626314306020

/-! ## A182708.P18137263303630983006

`A000203(n+1)+A182629(n+1)-A000041(n)`
-/

namespace A182708.P18137263303630983006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A182629 (n + 1) - A000041 n)

end

end A182708.P18137263303630983006

/-!
# A182709: Sum of the emergent parts of the partitions of n.

The programs for A182709, there is no canonical definition to state claims against.
-/

/-! ## A182709.P403072203646547813

`A138879(n+1)-A046746(n+1)`
-/

namespace A182709.P403072203646547813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A046746 (n + 1)

end

end A182709.P403072203646547813

/-! ## A182709.P7056092439345762224

`A138880(n+1)-A182708(n+1)`
-/

namespace A182709.P7056092439345762224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) - A182708 (n + 1)

end

end A182709.P7056092439345762224

/-! ## A182709.P14146641836055145222

`A066186(n+1)-A066186(n)-A046746(n+1)`
-/

namespace A182709.P14146641836055145222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A066186 n - A046746 (n + 1)

end

end A182709.P14146641836055145222

/-! ## A182709.P11552880373458473120

`A182707(n+1)-A066186(n)`
-/

namespace A182709.P11552880373458473120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - A066186 n

end

end A182709.P11552880373458473120

/-! ## A182709.P4173361535770655799

`A182707(n+1)-n*A000041(n)`
-/

namespace A182709.P4173361535770655799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182707 (n + 1) - (n : ℤ) * A000041 n

end

end A182709.P4173361535770655799

/-! ## A182709.P15088314006909359772

`A196025(n+1)+A196039(n)-A066186(n)`
-/

namespace A182709.P15088314006909359772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196025 (n + 1) + (A196039 n - A066186 n)

end

end A182709.P15088314006909359772

/-!
# A182710: Triangle read by rows in which row n lists the parts >= 2 of the last section of the set of partitions of n, in the order produced by the modular table of partitions of A138121, with a(1)=0.

The programs for A182710, there is no canonical definition to state claims against.
-/

/-! ## A182710.P3723431012312890009

`A138136(A018843(2*(n+2))+A003964(n+1))`
-/

namespace A182710.P3723431012312890009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138136 (A018843 (2 * (n + 2)) + A003964 (n + 1)).toNat

end

end A182710.P3723431012312890009

/-! ## A182710.P18214175346408875978

`A182711(∑[∏[A146583(n+1)]])`
-/

namespace A182710.P18214175346408875978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182711 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182710.P18214175346408875978

/-! ## A182710.P6813905701110814082

`A182711(A309864(n)+A007953(n))`
-/

namespace A182710.P6813905701110814082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182711 (A309864 n + A007953 n).toNat

end

end A182710.P6813905701110814082

/-!
# A182712: Number of 2's in the last section of the set of partitions of n.

The programs for A182712, there is no canonical definition to state claims against.
-/

/-! ## A182712.P6571057455643123643

`A085811(n+1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A182712.P6571057455643123643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A085811 (n + 1) + a (n - 2)

end

end A182712.P6571057455643123643

/-! ## A182712.P14030264807251104769

`A002865(n-2)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A182712.P14030264807251104769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A002865 (n - 2) + a (n - 2)

end

end A182712.P14030264807251104769

/-! ## A182712.P11208866072724480253

`A270143(n+1)+A270143(n)-A002865(n)`
-/

namespace A182712.P11208866072724480253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 (n + 1) + (A270143 n - A002865 n)

end

end A182712.P11208866072724480253

/-! ## A182712.P12277008778152979202

`A087787(n)-A002865(n)`
-/

namespace A182712.P12277008778152979202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n - A002865 n

end

end A182712.P12277008778152979202

/-! ## A182712.P12180055863873899922

`A000041(n-2)-a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A182712.P12180055863873899922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000041 (n - 2) - a (n - 1)

end

end A182712.P12180055863873899922

/-! ## A182712.P13321798648734935103

`A084376(n)+A087787(n)-A139582(n)`
-/

namespace A182712.P13321798648734935103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n + (A087787 n - A139582 n)

end

end A182712.P13321798648734935103

/-! ## A182712.P2268511419946753277

`Δ[A024786(n+1)]-A002865(n)`
-/

namespace A182712.P2268511419946753277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002865 n

end

end A182712.P2268511419946753277

/-! ## A182712.P4374215976112937548

`A024786(n+2)-(A024786(n+1)+A002865(n))`
-/

namespace A182712.P4374215976112937548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) - (A024786 (n + 1) + A002865 n)

end

end A182712.P4374215976112937548

/-! ## A182712.P274239334880247729

`A005291(n+1)-A182722(n)`
-/

namespace A182712.P274239334880247729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) - A182722 n

end

end A182712.P274239334880247729

/-! ## A182712.P15202352739879021962

`A182703(A134869(n+1)+1)-A002865(n)`
-/

namespace A182712.P15202352739879021962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (A134869 (n + 1) + 1).toNat - A002865 n

end

end A182712.P15202352739879021962

/-!
# A182713: Number of 3's in the last section of the set of partitions of n.

The programs for A182713, there is no canonical definition to state claims against.
-/

/-! ## A182713.P8504159194697266526

`∑[A002865(n)-A174455(n)]`
-/

namespace A182713.P8504159194697266526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A174455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182713.P8504159194697266526

/-! ## A182713.P14669276959690223437

`A206556(n+1)+A206556(n+4)`
-/

namespace A182713.P14669276959690223437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206556 (n + 1) + A206556 (n + 4)

end

end A182713.P14669276959690223437

/-! ## A182713.P9073436707918681454

`A240056(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A182713.P9073436707918681454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A240056 (n - 1) - a (n - 1)

end

end A182713.P9073436707918681454

/-! ## A182713.P248406210249562357

`A000041(n-2)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A182713.P248406210249562357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000041 (n - 2) - (a (n - 1) + a (n - 2))

end

end A182713.P248406210249562357

/-! ## A182713.P5997144491449741600

`A000041(n)-A240056(n+1)`
-/

namespace A182713.P5997144491449741600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240056 (n + 1)

end

end A182713.P5997144491449741600

/-! ## A182713.P16314448004932894413

`A000041(n)-A174455(n)-A240056(n)`
-/

namespace A182713.P16314448004932894413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A174455 n - A240056 n

end

end A182713.P16314448004932894413

/-! ## A182713.P11524403153529962592

`Δ[a(n-3)+A000041(n-3)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A182713.P11524403153529962592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) + A000041 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182713.P11524403153529962592

/-! ## A182713.P6225669401813616872

`A024786(n+1)+A316861(n)-A316861(n+1)`
-/

namespace A182713.P6225669401813616872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + (A316861 n - A316861 (n + 1))

end

end A182713.P6225669401813616872

/-! ## A182713.P11029429117299420829

`Δ[A024787(round(n-n/(n+1))+1)]`
-/

namespace A182713.P11029429117299420829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (n + 1 : ℚ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182713.P11029429117299420829

/-! ## A182713.P8182540777359513297

`A035363(2*n)-A240056(n+1)`
-/

namespace A182713.P8182540777359513297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A240056 (n + 1)

end

end A182713.P8182540777359513297

/-! ## A182713.P4228828321067854939

`A024787(n+1)-A024787(abs(1-n)+1)`
-/

namespace A182713.P4228828321067854939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 1) - A024787 (|1 - (n : ℤ)| + 1).toNat

end

end A182713.P4228828321067854939

/-! ## A182713.P3186288504692973379

`A024787(n+1)+A240056(n)-A024787(n+2)`
-/

namespace A182713.P3186288504692973379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024787 (n + 1) + (A240056 n - A024787 (n + 2))

end

end A182713.P3186288504692973379

/-!
# A182714: Number of 4's in the last section of the set of partitions of n.

The programs for A182714, there is no canonical definition to state claims against.
-/

/-! ## A182714.P8965511181388391540

`A000041(n)-A240059(n+1)`
-/

namespace A182714.P8965511181388391540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240059 (n + 1)

end

end A182714.P8965511181388391540

/-! ## A182714.P967487637357864887

`A000041(n)-∑[A240058(n+1)]`
-/

namespace A182714.P967487637357864887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182714.P967487637357864887

/-! ## A182714.P6149855969737377804

`Δ[A024788(round(n-n/(n+1))+1)]`
-/

namespace A182714.P6149855969737377804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (n + 1 : ℚ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182714.P6149855969737377804

/-! ## A182714.P7834592717552657144

`A024788(n+1)-A024788(A028310(n))`
-/

namespace A182714.P7834592717552657144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1) - A024788 (A028310 n).toNat

end

end A182714.P7834592717552657144

/-! ## A182714.P14806120215822410350

`A182712(n+1)-Δ[A024788(n+2)]`
-/

namespace A182714.P14806120215822410350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) - (f1 (n + 1) - f1 n)

end

end A182714.P14806120215822410350

/-! ## A182714.P2441009198884930966

`A100824(2*n)-A240059(n+1)`
-/

namespace A182714.P2441009198884930966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A240059 (n + 1)

end

end A182714.P2441009198884930966

/-!
# A182715: Triangle read by rows in which row n lists in nonincreasing order the smallest part of every partition of n.

The programs for A182715, there is no canonical definition to state claims against.
-/

/-! ## A182715.P15767787927387443540

`A055396(A334436(n))`
-/

namespace A182715.P15767787927387443540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A334436 n).toNat

end

end A182715.P15767787927387443540

/-! ## A182715.P3920507446013687612

`A061395(A020639(A334436(n))²)`
-/

namespace A182715.P3920507446013687612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A334436 n).toNat ^ 2).toNat

end

end A182715.P3920507446013687612

/-! ## A182715.P17915447260949743284

`A066328(A020639(A334436(n))²)`
-/

namespace A182715.P17915447260949743284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A020639 (A334436 n).toNat ^ 2).toNat

end

end A182715.P17915447260949743284

/-! ## A182715.P11068402152480420248

`A277885(A020639(A334436(n))²)`
-/

namespace A182715.P11068402152480420248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277885 (A020639 (A334436 n).toNat ^ 2).toNat

end

end A182715.P11068402152480420248

/-! ## A182715.P4143604578785459034

`A061395(A020639(A334436(n))^2)`
-/

namespace A182715.P4143604578785459034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A334436 n).toNat ^ 2).toNat

end

end A182715.P4143604578785459034

/-! ## A182715.P12688636394453402812

`∑{d}[A020639(A334436(n)), A056239(#)]`
-/

namespace A182715.P12688636394453402812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A334436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A182715.P12688636394453402812

/-! ## A182715.P4746831979820764486

`∑{p}[A020639(A334436(n)), A061395(#)]`
-/

namespace A182715.P4746831979820764486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A334436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p

end

end A182715.P4746831979820764486

/-! ## A182715.P11140690806066965651

`A286471(2*A334436(n))`
-/

namespace A182715.P11140690806066965651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A334436 n).toNat

end

end A182715.P11140690806066965651

/-!
# A182716: Number of 2's in all partitions of 2n that do not contain 1 as a part.

The programs for A182716, there is no canonical definition to state claims against.
-/

/-! ## A182716.P6468053323490658368

`A182712(2*n)`
-/

namespace A182716.P6468053323490658368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (2 * n)

end

end A182716.P6468053323490658368

/-! ## A182716.P1553962548660069972

`∑[A085811(2*n+1)]`
-/

namespace A182716.P1553962548660069972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182716.P1553962548660069972

/-! ## A182716.P11121063021008536299

`∑[∑[A026796(2*n+1)]]`
-/

namespace A182716.P11121063021008536299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182716.P11121063021008536299

/-! ## A182716.P15240218640716421829

`∑[A002865(comp[A004277(n+2)]+1)]`
-/

namespace A182716.P15240218640716421829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182716.P15240218640716421829

/-! ## A182716.P15091326220555450659

`∑[∑[A008483(2*n)]-A008483(2*n)]`
-/

namespace A182716.P15091326220555450659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008483 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182716.P15091326220555450659

/-! ## A182716.P17876890339072301830

`∑[A027338(2*n+1)-A027337(2*n+1)]`
-/

namespace A182716.P17876890339072301830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 (2 * n + 1) - A027337 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182716.P17876890339072301830

/-! ## A182716.P13588496266847045276

`A270143(2*n+1)+A270143(2*n)-A002865(2*n)`
-/

namespace A182716.P13588496266847045276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 (2 * n + 1) + (A270143 (2 * n) - A002865 (2 * n))

end

end A182716.P13588496266847045276

/-! ## A182716.P7145788496023938136

`∑[A182746(n)]-A182746(n)`
-/

namespace A182716.P7145788496023938136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182746 n

end

end A182716.P7145788496023938136

/-! ## A182716.P15108880165827653213

`A087787(2*n)-A002865(2*n)`
-/

namespace A182716.P15108880165827653213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n) - A002865 (2 * n)

end

end A182716.P15108880165827653213

/-! ## A182716.P15201614588138809988

`A084376(2*n)+A087787(2*n)-A139582(2*n)`
-/

namespace A182716.P15201614588138809988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 (2 * n) + (A087787 (2 * n) - A139582 (2 * n))

end

end A182716.P15201614588138809988

/-! ## A182716.P1589118322589780963

`A024786(2*(n+1))-(A024786(2*n+1)+A002865(2*n))`
-/

namespace A182716.P1589118322589780963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (2 * (n + 1)) - (A024786 (2 * n + 1) + A002865 (2 * n))

end

end A182716.P1589118322589780963

/-! ## A182716.P17222392954140133072

`A182725(n+1)-A182722(2*n)`
-/

namespace A182716.P17222392954140133072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182725 (n + 1) - A182722 (2 * n)

end

end A182716.P17222392954140133072

/-! ## A182716.P254093176090309563

`A005291(2*n+1)-A182722(2*n)`
-/

namespace A182716.P254093176090309563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (2 * n + 1) - A182722 (2 * n)

end

end A182716.P254093176090309563

/-!
# A182717: Number of 2's in all partitions of 2n+1 that do not contain 1 as a part.

The programs for A182717, there is no canonical definition to state claims against.
-/

/-! ## A182717.P3844368272476500612

`A182712(Δ[n²])`
-/

namespace A182717.P3844368272476500612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182717.P3844368272476500612

/-! ## A182717.P710127825818380804

`∑[A085811(2*(n+1))]`
-/

namespace A182717.P710127825818380804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182717.P710127825818380804

/-! ## A182717.P9006903507161114136

`∑[A002865(abs(1-2*n))]`
-/

namespace A182717.P9006903507161114136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182717.P9006903507161114136

/-! ## A182717.P11658181063284813751

`∑[A002865(A004273(n))]-1`
-/

namespace A182717.P11658181063284813751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182717.P11658181063284813751

/-! ## A182717.P18227994569261045140

`∑[A002865(A163985(n))]-1`
-/

namespace A182717.P18227994569261045140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A163985 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182717.P18227994569261045140

/-! ## A182717.P4952743744922204445

`A087787(2*A028310(n)-1)`
-/

namespace A182717.P4952743744922204445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * A028310 n - 1).toNat

end

end A182717.P4952743744922204445

/-! ## A182717.P13270756543039193377

`∑[A002865(A004277(n)-1)]-1`
-/

namespace A182717.P13270756543039193377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A004277 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182717.P13270756543039193377

/-! ## A182717.P9467749645445286669

`∑[A002865(A028310(2*n)-1)]-1`
-/

namespace A182717.P9467749645445286669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A028310 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182717.P9467749645445286669

/-! ## A182717.P5838172718431473225

`∑[A027336(2*n)-A002865(2*n)]`
-/

namespace A182717.P5838172718431473225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * n) - A002865 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182717.P5838172718431473225

/-! ## A182717.P4661328043464508430

`A182714(2*n+1)+A182714(2*n+3)`
-/

namespace A182717.P4661328043464508430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (2 * n + 1) + A182714 (2 * n + 3)

end

end A182717.P4661328043464508430

/-! ## A182717.P2410659765739977478

`∑[A182747(n)]-A182747(n)`
-/

namespace A182717.P2410659765739977478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A182747 n

end

end A182717.P2410659765739977478

/-! ## A182717.P11938058004217256503

`A087787(2*n+1)-A002865(2*n+1)`
-/

namespace A182717.P11938058004217256503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n + 1) - A002865 (2 * n + 1)

end

end A182717.P11938058004217256503

/-! ## A182717.P16598271134909264489

`∑[A117995(2*n+1)]-A117995(2*n+1)`
-/

namespace A182717.P16598271134909264489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117995 (2 * n + 1)

end

end A182717.P16598271134909264489

/-! ## A182717.P6748602899728643480

`A240059(2*n)-A182714(2*(n+1))`
-/

namespace A182717.P6748602899728643480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240059 (2 * n) - A182714 (2 * (n + 1))

end

end A182717.P6748602899728643480

/-! ## A182717.P5415751013830700636

`A000041(2*n)-A087787(2*n)`
-/

namespace A182717.P5415751013830700636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A087787 (2 * n)

end

end A182717.P5415751013830700636

/-! ## A182717.P6232338685582723589

`A000041(2*n)-∑[A002865(2*n)]`
-/

namespace A182717.P6232338685582723589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182717.P6232338685582723589

/-! ## A182717.P9586349819134810624

`A000065(2*n)+1-A087787(2*n)`
-/

namespace A182717.P9586349819134810624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) + (1 - A087787 (2 * n))

end

end A182717.P9586349819134810624

/-! ## A182717.P6605299944547318499

`A000041(2*n)-∑[∑[A008483(2*n)]]`
-/

namespace A182717.P6605299944547318499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182717.P6605299944547318499

/-! ## A182717.P12329145671618761979

`A139582(2*n)/2-A087787(2*n)`
-/

namespace A182717.P12329145671618761979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 (2 * n) : ℚ) / 2 - (A087787 (2 * n) : ℚ)

end

end A182717.P12329145671618761979

/-! ## A182717.P3466139728532402160

`A024786(2*n+1)-A024786(A028310(2*n))`
-/

namespace A182717.P3466139728532402160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (2 * n + 1) - A024786 (A028310 (2 * n)).toNat

end

end A182717.P3466139728532402160

/-!
# A182718: Largest part of the n-th row of the diagram of another version of the modular table of partitions in which each last section of partitions is represented by a tree.

The programs for A182718, there is no canonical definition to state claims against.
-/

/-! ## A182718.P3123789058068603156

`A007814(eq[A030109(n+1), A161822(n+1)])`
-/

namespace A182718.P3123789058068603156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182718.P3123789058068603156

/-! ## A182718.P1456331378779146596

`A051903(eq[A030109(n+1), A161822(n+1)])`
-/

namespace A182718.P1456331378779146596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182718.P1456331378779146596

/-! ## A182718.P10799833016558239233

`A067029(eq[A030109(n+1), A161822(n+1)])`
-/

namespace A182718.P10799833016558239233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182718.P10799833016558239233

/-! ## A182718.P2256086146823006059

`A001511(eq[A124766(n), A344180(n)])`
-/

namespace A182718.P2256086146823006059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A182718.P2256086146823006059

/-! ## A182718.P13072598291693279050

`A090739(eq[A124766(n), A344180(n)])-2`
-/

namespace A182718.P13072598291693279050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090739 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 2

end

end A182718.P13072598291693279050

/-!
# A182720: Triangle read by rows: T(n,k) = A000041(k) if k divides n, T(n,k)=0 otherwise.

The programs for A182720, there is no canonical definition to state claims against.
-/

/-! ## A182720.P1717006442147209400

`A052810(A127093(n+1))-1`
-/

namespace A182720.P1717006442147209400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A127093 (n + 1)).toNat - 1

end

end A182720.P1717006442147209400

/-! ## A182720.P16690419711665893107

`∑{d}[A127093(n+1), A000837(#)]`
-/

namespace A182720.P16690419711665893107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000837 d

end

end A182720.P16690419711665893107

/-! ## A182720.P6162631385879603064

`A051731(n+1)*A092080(n+1)`
-/

namespace A182720.P6162631385879603064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A092080 (n + 1)

end

end A182720.P6162631385879603064

/-! ## A182720.P12927030399510132497

`and(A092080(n+1), A130888(n+1))`
-/

namespace A182720.P12927030399510132497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092080 (n + 1)) (A130888 (n + 1))

end

end A182720.P12927030399510132497

/-! ## A182720.P5665306017337334623

`A000041(1-C(∑[char[∑[n]]], 2)+n)*A051731(n+1)`
-/

namespace A182720.P5665306017337334623
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A051731 (n + 1)

end

end A182720.P5665306017337334623

/-! ## A182720.P1772096515272231675

`A035444(A008574(A127093(n+1)))`
-/

namespace A182720.P1772096515272231675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008574 (A127093 (n + 1)).toNat).toNat

end

end A182720.P1772096515272231675

/-! ## A182720.P5550144788619625890

`A035363(A158405(n+1)+A051731(n+1))`
-/

namespace A182720.P5550144788619625890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A158405 (n + 1) + A051731 (n + 1)).toNat

end

end A182720.P5550144788619625890

/-! ## A182720.P17407542081217370937

`A000041(A002260(n+1))*A051731(n+1)`
-/

namespace A182720.P17407542081217370937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1)).toNat * A051731 (n + 1)

end

end A182720.P17407542081217370937

/-! ## A182720.P6429147133857564237

`A000041(A002262(n)+1)*A051731(n+1)`
-/

namespace A182720.P6429147133857564237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n + 1).toNat * A051731 (n + 1)

end

end A182720.P6429147133857564237

/-! ## A182720.P3178804527174249124

`A000041(A050873(n+1))*A051731(n+1)`
-/

namespace A182720.P3178804527174249124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A050873 (n + 1)).toNat * A051731 (n + 1)

end

end A182720.P3178804527174249124

/-! ## A182720.P8801885097455820399

`A000041(A123275(n+1))*A051731(n+1)`
-/

namespace A182720.P8801885097455820399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A123275 (n + 1)).toNat * A051731 (n + 1)

end

end A182720.P8801885097455820399

/-! ## A182720.P11391012353334078050

`A000041(A127093(n+1))*A051731(n+1)`
-/

namespace A182720.P11391012353334078050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A127093 (n + 1)).toNat * A051731 (n + 1)

end

end A182720.P11391012353334078050

/-! ## A182720.P7157611708216234752

`A066186(A127093(n+1))/A002260(n+1)`
-/

namespace A182720.P7157611708216234752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 (A127093 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ)

end

end A182720.P7157611708216234752

/-! ## A182720.P1869836133437647041

`A051731(n+1)*A168017(∑[A051731(n+1)])`
-/

namespace A182720.P1869836133437647041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A168017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182720.P1869836133437647041

/-! ## A182720.P9050028373440646987

`A000041(1-A057944(n)+n)*A051731(n+1)`
-/

namespace A182720.P9050028373440646987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - A057944 n + (n : ℤ)).toNat * A051731 (n + 1)

end

end A182720.P9050028373440646987

/-! ## A182720.P11878212352836337673

`A000041(A127093(n+1))*ceil(A286239(n+1)/(n+1))`
-/

namespace A182720.P11878212352836337673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A127093 (n + 1)).toNat * ⌈(A286239 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A182720.P11878212352836337673

/-! ## A182720.P9696289057798726390

`A000041(A307662(n+1))*A051731(n+1)`
-/

namespace A182720.P9696289057798726390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A307662 (n + 1)).toNat * A051731 (n + 1)

end

end A182720.P9696289057798726390

/-! ## A182720.P8835467790939121457

`A035363(A000267(A127093(n+1)²))`
-/

namespace A182720.P8835467790939121457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A000267 (A127093 (n + 1) ^ 2).toNat).toNat

end

end A182720.P8835467790939121457

/-! ## A182720.P7746638998126379874

`∑{e}[A000079(A127093(n+1)), A000041(#)]`
-/

namespace A182720.P7746638998126379874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A127093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A182720.P7746638998126379874

/-! ## A182720.P16238259589642371687

`A286533(A143425(n+1))-1`
-/

namespace A182720.P16238259589642371687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286533 (A143425 (n + 1)).toNat - 1

end

end A182720.P16238259589642371687

/-!
# A182721: Mountain emirps.

The programs for A182721, there is no canonical definition to state claims against.
-/

/-! ## A182721.P9893152196377104297

`∩[A006567(n+1), A134941(n+1)]`
-/

namespace A182721.P9893152196377104297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182721.P9893152196377104297

/-! ## A182721.P14958620128501894835

`∩[A006567(n+1), A134951(n+1)]`
-/

namespace A182721.P14958620128501894835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182721.P14958620128501894835

/-! ## A182721.P13864121741703271986

`p?[A068893(n+1)*A178333(A068893(n+1))]`
-/

namespace A182721.P13864121741703271986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1) * A178333 (A068893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182721.P13864121741703271986

/-! ## A182721.P9780091794584993830

`p?[A178333(A350867(n+1))*A350867(n+1)]`
-/

namespace A182721.P9780091794584993830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 (A350867 (n + 1)).toNat * A350867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182721.P9780091794584993830

/-!
# A182722: a(n) = A005291(n+1)-A182712(n).

The programs for A182722, there is no canonical definition to state claims against.
-/

/-! ## A182722.P13629126755896636762

`A005291(n+1)-A182712(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182722.P13629126755896636762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) - A182712 n

end

end A182722.P13629126755896636762

/-! ## A182722.P3802044169275572324

`A005291(n+1)+A002865(n)-A087787(n)`
-/

namespace A182722.P3802044169275572324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) + (A002865 n - A087787 n)

end

end A182722.P3802044169275572324

/-! ## A182722.P17531435583883384105

`A005291(n+1)+A002865(n)-Δ[A024786(n+1)]`
-/

namespace A182722.P17531435583883384105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) + (A002865 n - (f1 (n + 1) - f1 n))

end

end A182722.P17531435583883384105

/-! ## A182722.P14460303855788735498

`Δ[A226541(n+5)]-A005290(n+3)-A182712(n)`
-/

namespace A182722.P14460303855788735498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226541 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005290 (n + 3) - A182712 n

end

end A182722.P14460303855788735498

/-! ## A182722.P2893181565034825413

`A005291(n+1)-(A084376(n)+A087787(n)-A139582(n))`
-/

namespace A182722.P2893181565034825413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) - (A084376 n + (A087787 n - A139582 n))

end

end A182722.P2893181565034825413

/-! ## A182722.P1635878489982336634

`A005291(n+1)-(A270143(n+1)+A270143(n)-A002865(n))`
-/

namespace A182722.P1635878489982336634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) - (A270143 (n + 1) + (A270143 n - A002865 n))

end

end A182722.P1635878489982336634

/-! ## A182722.P1594579089567805258

`A005291(n+1)-Δ[A212551((n+1)*2*n+1)]`
-/

namespace A182722.P1594579089567805258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 ((n + 1) * (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (n + 1) - (f1 (n + 1) - f1 n)

end

end A182722.P1594579089567805258

/-!
# A182723: Sum of (all parts of) all partitions of prime(n).

The programs for A182723, there is no canonical definition to state claims against.
-/

/-! ## A182723.P14281784373800640727

`A066186(A000040(n+1))`
-/

namespace A182723.P14281784373800640727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A000040 (n + 1)).toNat

end

end A182723.P14281784373800640727

/-! ## A182723.P14054736697400371138

`A066186(p?[abs(xor(n, -2))])`
-/

namespace A182723.P14054736697400371138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A182723.P14054736697400371138

/-! ## A182723.P10362866651732681207

`A066186(p?[xor(1, n)+1])`
-/

namespace A182723.P10362866651732681207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A182723.P10362866651732681207

/-! ## A182723.P2505909802630228450

`A066186(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A182723.P2505909802630228450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A182723.P2505909802630228450

/-! ## A182723.P17771347796341582921

`p?[ceil(2/acot(n))]*A058698(n+1)`
-/

namespace A182723.P17771347796341582921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A058698 (n + 1)

end

end A182723.P17771347796341582921

/-! ## A182723.P3179330142617211496

`A066186(A008578(n+2))`
-/

namespace A182723.P3179330142617211496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A008578 (n + 2)).toNat

end

end A182723.P3179330142617211496

/-! ## A182723.P11867960123594721627

`A066186(A182986(n+2))`
-/

namespace A182723.P11867960123594721627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (A182986 (n + 2)).toNat

end

end A182723.P11867960123594721627

/-! ## A182723.P11866109048130986868

`A000040(n+1)*A058698(n+1)`
-/

namespace A182723.P11866109048130986868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A058698 (n + 1)

end

end A182723.P11866109048130986868

/-! ## A182723.P2576890510521416024

`record[A006530(n+2)*A342621(n+2)]`
-/

namespace A182723.P2576890510521416024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A342621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182723.P2576890510521416024

/-! ## A182723.P10940807204797285583

`A000041(A067747(2*n+1))*A067747(2*n+1)`
-/

namespace A182723.P10940807204797285583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A067747 (2 * n + 1)).toNat * A067747 (2 * n + 1)

end

end A182723.P10940807204797285583

/-! ## A182723.P12977170252226062338

`(A098145(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A182723.P12977170252226062338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098145 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A182723.P12977170252226062338

/-! ## A182723.P14042620707448857863

`A066186(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A182723.P14042620707448857863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A182723.P14042620707448857863

/-!
# A182724: Sum of all parts of all partitions of n minus the number of partitions of n.

The programs for A182724, there is no canonical definition to state claims against.
-/

/-! ## A182724.P11615980238700924241

`n*A000041(n+1)`
-/

namespace A182724.P11615980238700924241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 (n + 1)

end

end A182724.P11615980238700924241

/-! ## A182724.P2225986866644186517

`A066186(n+1)-A000041(n+1)`
-/

namespace A182724.P2225986866644186517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A000041 (n + 1)

end

end A182724.P2225986866644186517

/-! ## A182724.P14548337688060964939

`n*Δ[A000070(n)]`
-/

namespace A182724.P14548337688060964939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A182724.P14548337688060964939

/-! ## A182724.P1701137482760527869

`n*∑[A187219(n+1)]`
-/

namespace A182724.P1701137482760527869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182724.P1701137482760527869

/-! ## A182724.P2269662082577443240

`n*(Δ[A058682(n)]+1)`
-/

namespace A182724.P2269662082577443240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A182724.P2269662082577443240

/-! ## A182724.P17333712148718497224

`n*Δ[A216053(n+1)]`
-/

namespace A182724.P17333712148718497224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A182724.P17333712148718497224

/-! ## A182724.P9260015217148599752

`n*(A000065(n+1)+1)`
-/

namespace A182724.P9260015217148599752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000065 (n + 1) + 1)

end

end A182724.P9260015217148599752

/-! ## A182724.P15376946212970584422

`n*(A052810(n+1)-1)`
-/

namespace A182724.P15376946212970584422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052810 (n + 1) - 1)

end

end A182724.P15376946212970584422

/-! ## A182724.P6418509124532252661

`n/2*A139582(n+1)`
-/

namespace A182724.P6418509124532252661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A139582 (n + 1) : ℚ)

end

end A182724.P6418509124532252661

/-! ## A182724.P368794947299842944

`n*∑[A083751(n+1)+1]`
-/

namespace A182724.P368794947299842944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182724.P368794947299842944

/-! ## A182724.P15640820175939206510

`A162329(n+1)-A086738(n+1)`
-/

namespace A182724.P15640820175939206510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A086738 (n + 1)

end

end A182724.P15640820175939206510

/-! ## A182724.P2289014010973057368

`n/A000005(n+1)*A141667(n+1)`
-/

namespace A182724.P2289014010973057368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000005 (n + 1) : ℚ) * (A141667 (n + 1) : ℚ)

end

end A182724.P2289014010973057368

/-! ## A182724.P8768468207043337091

`A066186(n+1)+A000070(n)-A000070(n+1)`
-/

namespace A182724.P8768468207043337091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A000070 n - A000070 (n + 1))

end

end A182724.P8768468207043337091

/-! ## A182724.P11336133120878043023

`A278406(n+1)/(n+1)`
-/

namespace A182724.P11336133120878043023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278406 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A182724.P11336133120878043023

/-! ## A182724.P3123283552098522209

`n*A194451(Δ[n²])`
-/

namespace A182724.P3123283552098522209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A194451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182724.P3123283552098522209

/-! ## A182724.P618311702726051323

`n*Δ[A025065(2*n)]`
-/

namespace A182724.P618311702726051323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A182724.P618311702726051323

/-! ## A182724.P13123750579475635262

`n*A066639(2*(n+1))`
-/

namespace A182724.P13123750579475635262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066639 (2 * (n + 1))

end

end A182724.P13123750579475635262

/-! ## A182724.P4023117784645994008

`A066186(n+1)-A194451(2*n+1)`
-/

namespace A182724.P4023117784645994008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A194451 (2 * n + 1)

end

end A182724.P4023117784645994008

/-! ## A182724.P16587328755040641243

`n*record[A035363(n)]`
-/

namespace A182724.P16587328755040641243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182724.P16587328755040641243

/-! ## A182724.P18334232727392943143

`n*A035363(A005843(n+1))`
-/

namespace A182724.P18334232727392943143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035363 (A005843 (n + 1)).toNat

end

end A182724.P18334232727392943143

/-!
# A182725: Bisection of A005291.

The programs for A182725, there is no canonical definition to state claims against.
-/

/-! ## A182725.P9719475495274393226

`A005291(Δ[n²])`
-/

namespace A182725.P9719475495274393226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182725.P9719475495274393226

/-! ## A182725.P4433893334248396531

`or(A000007(n), A005291(A005408(n)))`
-/

namespace A182725.P4433893334248396531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005291 (A005408 n).toNat)

end

end A182725.P4433893334248396531

/-! ## A182725.P3043935156577361507

`A005291(A005408(n))+A000007(n+1)`
-/

namespace A182725.P3043935156577361507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (A005408 n).toNat + A000007 (n + 1)

end

end A182725.P3043935156577361507

/-! ## A182725.P2309674252564793027

`A000034(2*n)*A005291(A005408(n))`
-/

namespace A182725.P2309674252564793027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A005291 (A005408 n).toNat

end

end A182725.P2309674252564793027

/-! ## A182725.P659407217839464116

`A089798(or(1, n))+A005291(A005408(n))`
-/

namespace A182725.P659407217839464116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (Nat.lor 1 n) + A005291 (A005408 n).toNat

end

end A182725.P659407217839464116

/-! ## A182725.P8793355083227269016

`lcm(A005291(A004273(n+1)), A076479(n+1))`
-/

namespace A182725.P8793355083227269016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005291 (A004273 (n + 1)).toNat) (A076479 (n + 1))

end

end A182725.P8793355083227269016

/-! ## A182725.P5043054742646607836

`A005291(2*n+1)²/A005291(A004273(n+1))`
-/

namespace A182725.P5043054742646607836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005291 (2 * n + 1) ^ 2 : ℚ) / (A005291 (A004273 (n + 1)).toNat : ℚ)

end

end A182725.P5043054742646607836

/-! ## A182725.P16078600937292759135

`A182722(2*n)+A182716(n)`
-/

namespace A182725.P16078600937292759135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182722 (2 * n) + A182716 n

end

end A182725.P16078600937292759135

/-! ## A182725.P12151952533094424599

`A182722(2*n)+A182712(2*n)`
-/

namespace A182725.P12151952533094424599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182722 (2 * n) + A182712 (2 * n)

end

end A182725.P12151952533094424599

/-! ## A182725.P6589054287575477841

`A005291(A005408(n))%A000051(n)`
-/

namespace A182725.P6589054287575477841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005291 (A005408 n).toNat) (A000051 n)

end

end A182725.P6589054287575477841

/-! ## A182725.P14019484019048037905

`A195308(2*n+1)-A182726(n+1)`
-/

namespace A182725.P14019484019048037905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195308 (2 * n + 1) - A182726 (n + 1)

end

end A182725.P14019484019048037905

/-! ## A182725.P11264236400189760514

`A195308(2*n+1)-A005291(2*(n+1))`
-/

namespace A182725.P11264236400189760514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195308 (2 * n + 1) - A005291 (2 * (n + 1))

end

end A182725.P11264236400189760514

/-!
# A182726: Bisection of A005291.

The programs for A182726, there is no canonical definition to state claims against.
-/

/-! ## A182726.P7847019605489804543

`A005291(2*(n+1))`
-/

namespace A182726.P7847019605489804543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (2 * (n + 1))

end

end A182726.P7847019605489804543

/-! ## A182726.P899524290024778889

`A182722(2*n+1)+A182712(2*n+1)`
-/

namespace A182726.P899524290024778889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182722 (2 * n + 1) + A182712 (2 * n + 1)

end

end A182726.P899524290024778889

/-! ## A182726.P8220381780671448265

`A005291(A103517(n))-A000007(n)`
-/

namespace A182726.P8220381780671448265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (A103517 n).toNat - A000007 n

end

end A182726.P8220381780671448265

/-! ## A182726.P17868126964981303089

`A005291(A103517(n))*A057427(n)`
-/

namespace A182726.P17868126964981303089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (A103517 n).toNat * A057427 n

end

end A182726.P17868126964981303089

/-! ## A182726.P8251001387368366966

`A005291(A103517(n))%A001255(n+1)`
-/

namespace A182726.P8251001387368366966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005291 (A103517 n).toNat) (A001255 (n + 1))

end

end A182726.P8251001387368366966

/-! ## A182726.P3806210154794457919

`A005291(A005843(n+1))+char[A254512(n+1)]`
-/

namespace A182726.P3806210154794457919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254512 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (A005843 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A182726.P3806210154794457919

/-! ## A182726.P13918124546554897768

`A005291(A005843(n+1))+A008683(A044336(n+1))`
-/

namespace A182726.P13918124546554897768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005291 (A005843 (n + 1)).toNat + A008683 (A044336 (n + 1)).toNat

end

end A182726.P13918124546554897768

/-! ## A182726.P6167331685350608924

`A005291(A005843(n+1))%A088016(n)`
-/

namespace A182726.P6167331685350608924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005291 (A005843 (n + 1)).toNat) (A088016 n)

end

end A182726.P6167331685350608924

/-! ## A182726.P6241950112507341086

`A195308(2*n+1)-A182725(n+1)`
-/

namespace A182726.P6241950112507341086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195308 (2 * n + 1) - A182725 (n + 1)

end

end A182726.P6241950112507341086

/-! ## A182726.P16182139838905457955

`A005291(Δ[A002378(n)])%A006318(n)`
-/

namespace A182726.P16182139838905457955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005291 (f1 (n + 1) - f1 n).toNat) (A006318 n)

end

end A182726.P16182139838905457955

/-! ## A182726.P758120911003502860

`A029832((Δ[n²]+1)²)+A005291(A005843(n+1))`
-/

namespace A182726.P758120911003502860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2).toNat + A005291 (A005843 (n + 1)).toNat

end

end A182726.P758120911003502860

/-!
# A182727: Sum of largest parts of the modular table of partitions with n regions.

The programs for A182727, the canonical program `A182727.P2225108811263832768` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182727 has offset 1).

The definition of A182727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182727.P2225108811263832768

`∑[A141285(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A182727

/-- `∑[A141285(n+1)]` -/
def P2225108811263832768.Spec : Prop :=
  ∀ n, P2225108811263832768.a n = A182727 (n + 1)

theorem P2225108811263832768.correct : P2225108811263832768.Spec := by
  intro n
  simp only [A182727, Nat.add_sub_cancel]

end A182727

/-! ## A182727.P7820403629623684365

`∑[val(A194602(n)+1, 2)+1]`
-/

namespace A182727.P7820403629623684365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P7820403629623684365

namespace A182727

/-- `∑[val(A194602(n)+1, 2)+1]` -/
def P7820403629623684365.Spec : Prop :=
  ∀ n, (P7820403629623684365.a n : ℤ) = A182727 (n + 1)

end A182727

/-! ## A182727.P15007762947119035154

`∑[A194549(n+1)+A194548(n+1)]`
-/

namespace A182727.P15007762947119035154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194549 (n + 1) + A194548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P15007762947119035154

namespace A182727

/-- `∑[A194549(n+1)+A194548(n+1)]` -/
def P15007762947119035154.Spec : Prop :=
  ∀ n, P15007762947119035154.a n = A182727 (n + 1)

end A182727

/-! ## A182727.P2147448519140053674

`∑[A186114(∑[n+1])]`
-/

namespace A182727.P2147448519140053674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P2147448519140053674

namespace A182727

/-- `∑[A186114(∑[n+1])]` -/
def P2147448519140053674.Spec : Prop :=
  ∀ n, P2147448519140053674.a n = A182727 (n + 1)

end A182727

/-! ## A182727.P9631279260553663961

`∑[A193870(∑[n]+1)]`
-/

namespace A182727.P9631279260553663961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P9631279260553663961

namespace A182727

/-- `∑[A193870(∑[n]+1)]` -/
def P9631279260553663961.Spec : Prop :=
  ∀ n, P9631279260553663961.a n = A182727 (n + 1)

end A182727

/-! ## A182727.P10346428692945565389

`∑[A244967(n+1)+1]`
-/

namespace A182727.P10346428692945565389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244967 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P10346428692945565389

namespace A182727

/-- `∑[A244967(n+1)+1]` -/
def P10346428692945565389.Spec : Prop :=
  ∀ n, P10346428692945565389.a n = A182727 (n + 1)

theorem P10346428692945565389.correct : P10346428692945565389.Spec := by
  intro n
  simp only [A182727, Nat.add_sub_cancel, A182727.P10346428692945565389.f1, A182727.P10346428692945565389.a, A182727.P2225108811263832768.f1, A182727.P2225108811263832768.a, A141285, A141285.P8203282120832387629.a, A244967, A244967.P9468410199705462311.a, A001511, A001511.P17146462531039486101.a, A228354, A228354.P14726846839078751284.a, A006519, A006519.P10435570611646570274.a, A194602, A194602.P705746156502626667.f1, A194602.P705746156502626667.f2, A194602.P705746156502626667.a, A171977, A171977.P14092944863121073856.a, A326956, A326956.P17897166605498576645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A182727

/-! ## A182727.P8878161756029800685

`∑[A005555(A244967(n+1))]`
-/

namespace A182727.P8878161756029800685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A244967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P8878161756029800685

namespace A182727

/-- `∑[A005555(A244967(n+1))]` -/
def P8878161756029800685.Spec : Prop :=
  ∀ n, P8878161756029800685.a n = A182727 (n + 1)

end A182727

/-! ## A182727.P1343879902442154619

`∑[A194447(n+1)+A194446(n+1)]`
-/

namespace A182727.P1343879902442154619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (n + 1) + A194446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P1343879902442154619

namespace A182727

/-- `∑[A194447(n+1)+A194446(n+1)]` -/
def P1343879902442154619.Spec : Prop :=
  ∀ n, P1343879902442154619.a n = A182727 (n + 1)

end A182727

/-! ## A182727.P16286159306943086015

`∑[A194449(n+1)+A194448(n+1)]`
-/

namespace A182727.P16286159306943086015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194449 (n + 1) + A194448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P16286159306943086015

namespace A182727

/-- `∑[A194449(n+1)+A194448(n+1)]` -/
def P16286159306943086015.Spec : Prop :=
  ∀ n, P16286159306943086015.a n = A182727 (n + 1)

end A182727

/-! ## A182727.P6625329028850637620

`∑[A001511(A228354(n+1))]`
-/

namespace A182727.P6625329028850637620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A228354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P6625329028850637620

namespace A182727

/-- `∑[A001511(A228354(n+1))]` -/
def P6625329028850637620.Spec : Prop :=
  ∀ n, P6625329028850637620.a n = A182727 (n + 1)

end A182727

/-!
# A182728: Array T(n,k) = n*k*A000041(n) read by antidiagonals, n,k >= 1.

The programs for A182728, there is no canonical definition to state claims against.
-/

/-! ## A182728.P1962603367977541434

`(row(n)-col(n)+1)*(col(n)+1)*A000041(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182728.P1962603367977541434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) * A000041 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A182728.P1962603367977541434

/-! ## A182728.P7213085943195596586

`(1-C(∑[char[∑[n]]], 2)+n)*A066186(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A182728.P7213085943195596586
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A066186 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A182728.P7213085943195596586

/-! ## A182728.P14151103204933274192

`A000041(C(comp[∑[n]]-n, 2)-n)*A003991(n+1)`
-/

namespace A182728.P14151103204933274192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A003991 (n + 1)

end

end A182728.P14151103204933274192

/-! ## A182728.P17524294131373599797

`A003991(n+1)*A092080(A278818(n))`
-/

namespace A182728.P17524294131373599797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A092080 (A278818 n).toNat

end

end A182728.P17524294131373599797

/-! ## A182728.P8716169900106185345

`(A059036(n)+1)*A092080(A278818(n))`
-/

namespace A182728.P8716169900106185345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059036 n + 1) * A092080 (A278818 n).toNat

end

end A182728.P8716169900106185345

/-! ## A182728.P16462686747694882298

`A000041(A004736(n+1))*A003991(n+1)`
-/

namespace A182728.P16462686747694882298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1)).toNat * A003991 (n + 1)

end

end A182728.P16462686747694882298

/-! ## A182728.P18399340894093957796

`A000041(A004736(n+1))*A000005(A036561(n))`
-/

namespace A182728.P18399340894093957796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1)).toNat * A000005 (A036561 n).toNat

end

end A182728.P18399340894093957796

/-! ## A182728.P4932295326918233156

`A000041(A025581(n)+1)*A000005(A036561(n))`
-/

namespace A182728.P4932295326918233156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n + 1).toNat * A000005 (A036561 n).toNat

end

end A182728.P4932295326918233156

/-! ## A182728.P5679141181519281621

`A000041(A004736(n+1))*A000005(A175840(n))`
-/

namespace A182728.P5679141181519281621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1)).toNat * A000005 (A175840 n).toNat

end

end A182728.P5679141181519281621

/-!
# A182729: Square array T(n,k) = (n*k-1)*A000041(n) read by antidiagonals upwards.

The programs for A182729, there is no canonical definition to state claims against.
-/

/-! ## A182729.P467048848186620719

`((row(n)-col(n)+1)*(col(n)+1)-1)*A000041(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A182729.P467048848186620719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) - 1) * A000041 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A182729.P467048848186620719

/-! ## A182729.P871718905193805220

`A059036(n)*A092080(A278818(n))`
-/

namespace A182729.P871718905193805220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n * A092080 (A278818 n).toNat

end

end A182729.P871718905193805220

/-! ## A182729.P8950051595650911810

`A000041(A004736(n+1))*A059036(n)`
-/

namespace A182729.P8950051595650911810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004736 (n + 1)).toNat * A059036 n

end

end A182729.P8950051595650911810

/-! ## A182729.P14928679972727340435

`A000041(A025581(n)+1)*A059036(n)`
-/

namespace A182729.P14928679972727340435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025581 n + 1).toNat * A059036 n

end

end A182729.P14928679972727340435

/-! ## A182729.P12845411276252953268

`A027293(A014132(n+1))*A059036(n)`
-/

namespace A182729.P12845411276252953268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (A014132 (n + 1)).toNat * A059036 n

end

end A182729.P12845411276252953268

/-! ## A182729.P7149603990178259334

`A000041(sqrt(A055461(n+1)))*A059036(n)`
-/

namespace A182729.P7149603990178259334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat * A059036 n

end

end A182729.P7149603990178259334

/-! ## A182729.P3641316350080495500

`A182728(n+1)-A000041(A004736(n+1))`
-/

namespace A182729.P3641316350080495500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182728 (n + 1) - A000041 (A004736 (n + 1)).toNat

end

end A182729.P3641316350080495500

/-! ## A182729.P1913070974974945696

`A182728(n+1)-A027293(A014132(n+1))`
-/

namespace A182729.P1913070974974945696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182728 (n + 1) - A027293 (A014132 (n + 1)).toNat

end

end A182729.P1913070974974945696

/-! ## A182729.P13886812172074386461

`(A003991(n+1)-1)*A092080(A278818(n))`
-/

namespace A182729.P13886812172074386461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) - 1) * A092080 (A278818 n).toNat

end

end A182729.P13886812172074386461

/-! ## A182729.P15117836218704098917

`A000041((A099375(n)+1)/2)*A059036(n)`
-/

namespace A182729.P15117836218704098917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat * A059036 n

end

end A182729.P15117836218704098917

/-!
# A182730: Even-indexed rows of triangle A141285.

The programs for A182730, there is no canonical definition to state claims against.
-/

/-! ## A182730.P271900548382817433

`∑{e}[A000041(A256255(2*n)), #]`
-/

namespace A182730.P271900548382817433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A256255 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A182730.P271900548382817433

/-! ## A182730.P9528244256167072152

`A060130((4*n^3-n)*A303929(3*n+2))`
-/

namespace A182730.P9528244256167072152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (((4 * n ^ 3 : ℤ) - (n : ℤ)) * A303929 (3 * n + 2)).toNat

end

end A182730.P9528244256167072152

/-! ## A182730.P8955203744528449339

`A333485(A107946(n+1))%A120755(2*n+1)`
-/

namespace A182730.P8955203744528449339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333485 (A107946 (n + 1)).toNat) (A120755 (2 * n + 1))

end

end A182730.P8955203744528449339

/-! ## A182730.P12340426993200095491

`A329400((Δ[n²]-2^ceil(log2(n+1))+1)²)`
-/

namespace A182730.P12340426993200095491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329400 (SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1) ^ 2)).toNat

end

end A182730.P12340426993200095491

/-! ## A182730.P7381946477673047664

`A341793(A261695(n+1))`
-/

namespace A182730.P7381946477673047664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 ((A261695 (n + 1)).toNat + 10)

end

end A182730.P7381946477673047664

/-!
# A182731: Odd-indexed rows of triangle A141285.

The programs for A182731, there is no canonical definition to state claims against.
-/

/-! ## A182731.P5162099611586339529

`A209492(A000120(n))-A325403(31^A322795(n))`
-/

namespace A182731.P5162099611586339529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 (A000120 n).toNat - A325403 (SequenceMachineLib.roundAway ((31 : ℚ) ^ (A322795 n : ℤ))).toNat

end

end A182731.P5162099611586339529

/-! ## A182731.P13838143771936438014

`A209492(A000120(n))-A322795(n)%A226413(n+1)`
-/

namespace A182731.P13838143771936438014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 (A000120 n).toNat - Int.tmod (A322795 n) (A226413 (n + 1))

end

end A182731.P13838143771936438014

/-! ## A182731.P12029651442730836070

`A211100(A048266(A339597(n))²)`
-/

namespace A182731.P12029651442730836070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A048266 (A339597 n).toNat ^ 2).toNat

end

end A182731.P12029651442730836070

/-! ## A182731.P6555181740116767233

`A212125(n+81)`
-/

namespace A182731.P6555181740116767233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212125 (n + 81)

end

end A182731.P6555181740116767233

/-! ## A182731.P7622306239730604937

`A374741(2^val(n+1, 2)*∑{d}[n+1, lcm(2, #)/2])`
-/

namespace A182731.P7622306239730604937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (SequenceMachineLib.roundAway ((2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2))).toNat

end

end A182731.P7622306239730604937

/-!
# A182732: The limit of row A182730(n,.) as n-> infinity.

The programs for A182732, there is no canonical definition to state claims against.
-/

/-! ## A182732.P10217360133992951145

`A182730(n+83)`
-/

namespace A182732.P10217360133992951145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182730 (n + 83)

end

end A182732.P10217360133992951145

/-! ## A182732.P17348721504988570269

`A141285(A187829(n+1)+56)`
-/

namespace A182732.P17348721504988570269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A187829 (n + 1) + 56).toNat

end

end A182732.P17348721504988570269

/-! ## A182732.P6509394725402095602

`A182742(∑[n]+1)`
-/

namespace A182732.P6509394725402095602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A182732.P6509394725402095602

/-! ## A182732.P12875765276794950150

`A182742(A000124(n))%11`
-/

namespace A182732.P12875765276794950150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182742 (A000124 n).toNat) 11

end

end A182732.P12875765276794950150

/-! ## A182732.P11324240016288401918

`A182742(∑[A028310(n)])%12`
-/

namespace A182732.P11324240016288401918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 12

end

end A182732.P11324240016288401918

/-!
# A182733: The limit of row A182731(n,.) as n-> infinity.

The programs for A182733, there is no canonical definition to state claims against.
-/

/-! ## A182733.P14801348294854667028

`A141285(A187829(n+1)+77)`
-/

namespace A182733.P14801348294854667028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A187829 (n + 1) + 77).toNat

end

end A182733.P14801348294854667028

/-! ## A182733.P6054638826897039946

`A182731(n+17)`
-/

namespace A182733.P6054638826897039946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182731 (n + 17)

end

end A182733.P6054638826897039946

/-! ## A182733.P4629545153980578485

`A182985(n+43)`
-/

namespace A182733.P4629545153980578485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182985 (n + 43)

end

end A182733.P4629545153980578485

/-! ## A182733.P7472279441983215802

`A141285(A052810(2*(n+1))+n)`
-/

namespace A182733.P7472279441983215802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A052810 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A182733.P7472279441983215802

/-! ## A182733.P12310460668629881019

`A141285(A000041(2*(n+1))+n+1)`
-/

namespace A182733.P12310460668629881019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A000041 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A182733.P12310460668629881019

/-!
# A182734: Number of parts in all partitions of 2n that do not contain 1 as a part.

The programs for A182734, there is no canonical definition to state claims against.
-/

/-! ## A182734.P4276889869315523610

`record[A138135(n+1)/gcd(2, n)]`
-/

namespace A182734.P4276889869315523610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138135 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182734.P4276889869315523610

/-! ## A182734.P7303299170671123390

`A138135(eq[2*n, lcm(2, n)]+1)`
-/

namespace A182734.P7303299170671123390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A182734.P7303299170671123390

/-! ## A182734.P4844436132763604812

`A138135(eq[n, n*and(1, n)]+1)`
-/

namespace A182734.P4844436132763604812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A182734.P4844436132763604812

/-! ## A182734.P10407107770763983428

`A138135(2*n-floor(atan(n))+1)`
-/

namespace A182734.P10407107770763983428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 ((2 * n : ℤ) - ⌊Real.arctan (n : ℝ)⌋ + 1).toNat

end

end A182734.P10407107770763983428

/-! ## A182734.P15589045120829982928

`A138135(ceil(Δ[(n²/(n+1))²]))`
-/

namespace A182734.P15589045120829982928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 ⌈f1 (n + 1) - f1 n⌉.toNat

end

end A182734.P15589045120829982928

/-! ## A182734.P9860293598517471308

`record[A000035(n)*A138135(n+1)]`
-/

namespace A182734.P9860293598517471308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A138135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182734.P9860293598517471308

/-! ## A182734.P15318981019047174345

`record[gcd(A138135(n+1), A142150(n))]`
-/

namespace A182734.P15318981019047174345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138135 (n + 1)) (A142150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182734.P15318981019047174345

/-! ## A182734.P3294293341539937365

`A138135(A004277(n))%A038360(n+3)`
-/

namespace A182734.P3294293341539937365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138135 (A004277 n).toNat) (A038360 (n + 3))

end

end A182734.P3294293341539937365

/-!
# A182735: Number of parts in all partitions of 2n+1 that do not contain 1 as a part.

The programs for A182735, there is no canonical definition to state claims against.
-/

/-! ## A182735.P16927891358419392013

`A138135(Δ[n²])`
-/

namespace A182735.P16927891358419392013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182735.P16927891358419392013

/-! ## A182735.P8030669706235945395

`A182747(n)+A182699(2*n+1)`
-/

namespace A182735.P8030669706235945395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182747 n + A182699 (2 * n + 1)

end

end A182735.P8030669706235945395

/-! ## A182735.P17763177567179750406

`A182737(n)-A207035(2*n+1)`
-/

namespace A182735.P17763177567179750406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182737 n - A207035 (2 * n + 1)

end

end A182735.P17763177567179750406

/-! ## A182735.P30676487162252806

`A033999(n)²*A138135(2*n+1)`
-/

namespace A182735.P30676487162252806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A138135 (2 * n + 1)

end

end A182735.P30676487162252806

/-! ## A182735.P1067026481096757039

`A138135(2*n+1)+A000035(2*n)`
-/

namespace A182735.P1067026481096757039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (2 * n + 1) + A000035 (2 * n)

end

end A182735.P1067026481096757039

/-! ## A182735.P5348574235139162862

`A006128(2*n+1)-A093694(2*n)`
-/

namespace A182735.P5348574235139162862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (2 * n + 1) - A093694 (2 * n)

end

end A182735.P5348574235139162862

/-! ## A182735.P5090401820753910012

`A138137(2*n+1)-A000041(2*n)`
-/

namespace A182735.P5090401820753910012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (2 * n + 1) - A000041 (2 * n)

end

end A182735.P5090401820753910012

/-! ## A182735.P11714508264684910423

`A096541(2*n+1)-A096541(2*n)`
-/

namespace A182735.P11714508264684910423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (2 * n + 1) - A096541 (2 * n)

end

end A182735.P11714508264684910423

/-! ## A182735.P2889005205616880655

`A000034(2*n)*A138135(2*n+1)`
-/

namespace A182735.P2889005205616880655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A138135 (2 * n + 1)

end

end A182735.P2889005205616880655

/-! ## A182735.P8086974312204973493

`A033999(2*n)*A138135(2*n+1)`
-/

namespace A182735.P8086974312204973493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A138135 (2 * n + 1)

end

end A182735.P8086974312204973493

/-! ## A182735.P9777059399012499307

`A138137(2*n+1)-A035363(4*n)`
-/

namespace A182735.P9777059399012499307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (2 * n + 1) - A035363 (4 * n)

end

end A182735.P9777059399012499307

/-! ## A182735.P4141867092772412038

`A138137(2*n+1)-A035444(8*n)`
-/

namespace A182735.P4141867092772412038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (2 * n + 1) - A035444 (8 * n)

end

end A182735.P4141867092772412038

/-! ## A182735.P6542504837954210156

`A112347(n+1)²*A138135(2*n+1)`
-/

namespace A182735.P6542504837954210156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 1) ^ 2 * A138135 (2 * n + 1)

end

end A182735.P6542504837954210156

/-! ## A182735.P399516486968322991

`A138137(2*n+1)-sqrt(A001255(2*n))`
-/

namespace A182735.P399516486968322991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138137 (2 * n + 1) : ℝ) - Real.sqrt (A001255 (2 * n) : ℝ)

end

end A182735.P399516486968322991

/-! ## A182735.P4400426546481162199

`A182699(2*n+1)+A002865(2*n+1)`
-/

namespace A182735.P4400426546481162199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (2 * n + 1) + A002865 (2 * n + 1)

end

end A182735.P4400426546481162199

/-! ## A182735.P43250381198566355

`A138880(2*n+1)-A207035(2*n+1)`
-/

namespace A182735.P43250381198566355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (2 * n + 1) - A207035 (2 * n + 1)

end

end A182735.P43250381198566355

/-! ## A182735.P1813251662941333215

`A211978(2*n+1)/2-A093694(2*n)`
-/

namespace A182735.P1813251662941333215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 (2 * n + 1) : ℚ) / 2 - (A093694 (2 * n) : ℚ)

end

end A182735.P1813251662941333215

/-! ## A182735.P17716606780082778849

`A010892(A008486(2*n))*A138135(2*n+1)`
-/

namespace A182735.P17716606780082778849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 (2 * n)).toNat * A138135 (2 * n + 1)

end

end A182735.P17716606780082778849

/-! ## A182735.P11629923678365022193

`A006128(2*n+1)-(A006128(2*n)+A000041(2*n))`
-/

namespace A182735.P11629923678365022193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (2 * n + 1) - (A006128 (2 * n) + A000041 (2 * n))

end

end A182735.P11629923678365022193

/-! ## A182735.P3926997795201682884

`A284870(2*n+1)-(A284870(2*n)+A093694(2*n))`
-/

namespace A182735.P3926997795201682884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 (2 * n + 1) - (A284870 (2 * n) + A093694 (2 * n))

end

end A182735.P3926997795201682884

/-!
# A182736: Sum of parts in all partitions of 2n that do not contain 1 as a part.

The programs for A182736, there is no canonical definition to state claims against.
-/

/-! ## A182736.P6484497914169235287

`2*n*A182746(n)`
-/

namespace A182736.P6484497914169235287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A182746 n

end

end A182736.P6484497914169235287

/-! ## A182736.P8575524532809595568

`2*n*Δ[A182716(n)]`
-/

namespace A182736.P8575524532809595568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A182736.P8575524532809595568

/-! ## A182736.P7094627958731220870

`2*n*A002865(2*n)`
-/

namespace A182736.P7094627958731220870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A002865 (2 * n))

end

end A182736.P7094627958731220870

/-! ## A182736.P14260122447942870821

`2*n*∑[A008483(2*n)]`
-/

namespace A182736.P14260122447942870821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182736.P14260122447942870821

/-! ## A182736.P17925085679832389559

`2*n*A085811(2*n+3)`
-/

namespace A182736.P17925085679832389559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A085811 (2 * n + 3))

end

end A182736.P17925085679832389559

/-! ## A182736.P12675606140194152993

`A138880(A004277(n))`
-/

namespace A182736.P12675606140194152993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (A004277 n).toNat

end

end A182736.P12675606140194152993

/-! ## A182736.P17032050665249557178

`A138880(A004275(n+1))`
-/

namespace A182736.P17032050665249557178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (A004275 (n + 1)).toNat

end

end A182736.P17032050665249557178

/-! ## A182736.P2912820092175500639

`A138880(A004273(n)+1)`
-/

namespace A182736.P2912820092175500639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (A004273 n + 1).toNat

end

end A182736.P2912820092175500639

/-! ## A182736.P1421242470022419981

`A138880(A008486(n)-n)`
-/

namespace A182736.P1421242470022419981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (A008486 n - (n : ℤ)).toNat

end

end A182736.P1421242470022419981

/-! ## A182736.P730522575115691271

`A138880(A000007(n)+2*n)`
-/

namespace A182736.P730522575115691271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (A000007 n + (2 * n : ℤ)).toNat

end

end A182736.P730522575115691271

/-! ## A182736.P7420482321647058221

`A002865(2*n)*A005843(n)`
-/

namespace A182736.P7420482321647058221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n) * A005843 n

end

end A182736.P7420482321647058221

/-! ## A182736.P15440230407890035426

`A138880(A000007(n)+n+n)`
-/

namespace A182736.P15440230407890035426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A182736.P15440230407890035426

/-! ## A182736.P6887497234055143157

`(A232697(2*n)-1)*A028310(2*n)`
-/

namespace A182736.P6887497234055143157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A232697 (2 * n) - 1) * A028310 (2 * n)

end

end A182736.P6887497234055143157

/-!
# A182737: Sum of parts in all partitions of 2n+1 that do not contain 1 as a part.

The programs for A182737, there is no canonical definition to state claims against.
-/

/-! ## A182737.P16708272048037861791

`A005408(n)*A182747(n)`
-/

namespace A182737.P16708272048037861791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A182747 n

end

end A182737.P16708272048037861791

/-! ## A182737.P5611093763665061024

`A138880(Δ[n²])`
-/

namespace A182737.P5611093763665061024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182737.P5611093763665061024

/-! ## A182737.P7878101111693853882

`Δ[n²]*A002865(2*n+1)`
-/

namespace A182737.P7878101111693853882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A002865 (2 * n + 1)

end

end A182737.P7878101111693853882

/-! ## A182737.P14003773988872379256

`Δ[n²]*A117995(2*n+1)`
-/

namespace A182737.P14003773988872379256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A117995 (2 * n + 1)

end

end A182737.P14003773988872379256

/-! ## A182737.P11268324569581268234

`lcm(2*n+1, A138880(2*n+1))`
-/

namespace A182737.P11268324569581268234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A138880 (2 * n + 1))

end

end A182737.P11268324569581268234

/-! ## A182737.P14696917808945792795

`(2*n+1)*∑[A008483(2*n+1)]`
-/

namespace A182737.P14696917808945792795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A182737.P14696917808945792795

/-! ## A182737.P18323800448977704573

`A002865(2*n+1)*A005408(n)`
-/

namespace A182737.P18323800448977704573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A005408 n

end

end A182737.P18323800448977704573

/-! ## A182737.P18352357462666229173

`A138880(2*n+1)+A000007(n+1)`
-/

namespace A182737.P18352357462666229173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (2 * n + 1) + A000007 (n + 1)

end

end A182737.P18352357462666229173

/-! ## A182737.P3589156349036350835

`A002865(2*n+1)*A004273(n+1)`
-/

namespace A182737.P3589156349036350835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A004273 (n + 1)

end

end A182737.P3589156349036350835

/-! ## A182737.P3552582943758322621

`A138880(2*n+1)+A000035(2*n)`
-/

namespace A182737.P3552582943758322621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (2 * n + 1) + A000035 (2 * n)

end

end A182737.P3552582943758322621

/-! ## A182737.P16321896235902833709

`A138879(2*n+1)-A000041(2*n)`
-/

namespace A182737.P16321896235902833709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (2 * n + 1) - A000041 (2 * n)

end

end A182737.P16321896235902833709

/-! ## A182737.P3268362207962043877

`A002865(2*n+1)*A109613(2*n)`
-/

namespace A182737.P3268362207962043877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A109613 (2 * n)

end

end A182737.P3268362207962043877

/-! ## A182737.P6045900033747314082

`A131738(2*n)*A187219(2*n+1)`
-/

namespace A182737.P6045900033747314082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (2 * n) * A187219 (2 * n + 1)

end

end A182737.P6045900033747314082

/-! ## A182737.P4706193172569737289

`A207035(2*n+1)+A138135(2*n+1)`
-/

namespace A182737.P4706193172569737289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207035 (2 * n + 1) + A138135 (2 * n + 1)

end

end A182737.P4706193172569737289

/-! ## A182737.P16991154002192384620

`A182709(2*n+1)+A182708(2*n+1)`
-/

namespace A182737.P16991154002192384620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (2 * n + 1) + A182708 (2 * n + 1)

end

end A182737.P16991154002192384620

/-! ## A182737.P11417430581628525488

`A002865(2*n+1)*A026741(2*n+1)`
-/

namespace A182737.P11417430581628525488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A026741 (2 * n + 1)

end

end A182737.P11417430581628525488

/-! ## A182737.P17878506216874662894

`A002865(2*n+1)*A028310(2*n+1)`
-/

namespace A182737.P17878506216874662894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A028310 (2 * n + 1)

end

end A182737.P17878506216874662894

/-! ## A182737.P13963248728521211815

`A002865(2*n+1)*A087156(2*n+1)`
-/

namespace A182737.P13963248728521211815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A087156 (2 * n + 1)

end

end A182737.P13963248728521211815

/-! ## A182737.P3179201692016987630

`A002865(2*n+1)*A254667(2*n+1)`
-/

namespace A182737.P3179201692016987630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) * A254667 (2 * n + 1)

end

end A182737.P3179201692016987630

/-!
# A182738: Partial sums of A066186.

The programs for A182738, there is no canonical definition to state claims against.
-/

/-! ## A182738.P1219837896619190480

`(n+1)*A000070(n+1)-A014153(n)`
-/

namespace A182738.P1219837896619190480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000070 (n + 1) - A014153 n

end

end A182738.P1219837896619190480

/-! ## A182738.P14519660785160087350

`∑[A066186(n+1)]`
-/

namespace A182738.P14519660785160087350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P14519660785160087350

/-! ## A182738.P1693548161540721198

`∑[∑[A138879(n+1)]]`
-/

namespace A182738.P1693548161540721198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P1693548161540721198

/-! ## A182738.P4454813130439282622

`∑[A220909(n+1)/2]`
-/

namespace A182738.P4454813130439282622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P4454813130439282622

/-! ## A182738.P18038448350524767333

`∑[(n+1)*A000041(n+1)]`
-/

namespace A182738.P18038448350524767333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P18038448350524767333

/-! ## A182738.P17853626243859311437

`∑[(∑[A002865(n+1)]+1)*(n+1)]`
-/

namespace A182738.P17853626243859311437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P17853626243859311437

/-! ## A182738.P5488121232773459465

`A194552(n+1)+A141156(n)`
-/

namespace A182738.P5488121232773459465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) + A141156 n

end

end A182738.P5488121232773459465

/-! ## A182738.P18231795527924590315

`A141156(n+1)-A000070(n+1)`
-/

namespace A182738.P18231795527924590315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141156 (n + 1) - A000070 (n + 1)

end

end A182738.P18231795527924590315

/-! ## A182738.P10531263055416322334

`∑[∑[A138880(n+1)+A000041(n)]]`
-/

namespace A182738.P10531263055416322334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) + A000041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P10531263055416322334

/-! ## A182738.P8101471658449989449

`∑[A066967(n+1)+A066966(n+1)]`
-/

namespace A182738.P8101471658449989449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066967 (n + 1) + A066966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P8101471658449989449

/-! ## A182738.P16039631054573191979

`∑[A066184(n+1)-A066185(n+1)]`
-/

namespace A182738.P16039631054573191979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 (n + 1) - A066185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P16039631054573191979

/-! ## A182738.P16597351309627208649

`∑[∑[A182709(n+1)+A046746(n+1)]]`
-/

namespace A182738.P16597351309627208649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + A046746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P16597351309627208649

/-! ## A182738.P11549862997648297829

`A141156(n+1)+A014153(n)-A014153(n+1)`
-/

namespace A182738.P11549862997648297829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141156 (n + 1) + (A014153 n - A014153 (n + 1))

end

end A182738.P11549862997648297829

/-! ## A182738.P7908258799287695534

`A026905(n+1)+A182706(n+1)-A085360(n+1)`
-/

namespace A182738.P7908258799287695534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) + (A182706 (n + 1) - A085360 (n + 1))

end

end A182738.P7908258799287695534

/-! ## A182738.P27181338558624521

`∑[A194451(2*n+1)*(n+1)]`
-/

namespace A182738.P27181338558624521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * n + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P27181338558624521

/-! ## A182738.P4980513379312006946

`∑[(n+1)*record[A035363(n)]]`
-/

namespace A182738.P4980513379312006946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P4980513379312006946

/-! ## A182738.P17517392685256618789

`∑[(n+1)*record[A035377(n)]]`
-/

namespace A182738.P17517392685256618789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P17517392685256618789

/-! ## A182738.P5795445167049383466

`∑[A206561(∑[n]+1)]`
-/

namespace A182738.P5795445167049383466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P5795445167049383466

/-! ## A182738.P5165201251535448905

`∑[A210948(∑[n+1])]`
-/

namespace A182738.P5165201251535448905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210948 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P5165201251535448905

/-! ## A182738.P9153374868267922294

`∑[A182700(∑[n+1])]`
-/

namespace A182738.P9153374868267922294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182738.P9153374868267922294

/-!
# A182739: First differences of the partition numbers of the primes.

The programs for A182739, there is no canonical definition to state claims against.
-/

/-! ## A182739.P6165016960652479796

`Δ[record[∑{p}[n, A000041(#)]]]`
-/

namespace A182739.P6165016960652479796
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A000041 p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182739.P6165016960652479796

/-! ## A182739.P14176365654715532751

`Δ[∑{d}[A008578(n+1), A000041(#)]]`
-/

namespace A182739.P14176365654715532751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000041 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182739.P14176365654715532751

/-! ## A182739.P2248846312067456271

`Δ[A000041(A008578(n+1))+A013918(n+1)%2]`
-/

namespace A182739.P2248846312067456271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008578 (n + 1)).toNat + Int.tmod (A013918 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182739.P2248846312067456271

/-! ## A182739.P3754470399117142431

`Δ[A000041(A008578(n+1))]+A013916(n+1)%2`
-/

namespace A182739.P3754470399117142431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A013916 (n + 1)) 2

end

end A182739.P3754470399117142431

/-! ## A182739.P7805536513674976851

`Δ[A000041(A000040(n)+C(a(n-1), A000041(2*n+1)²))]` with `a(0)=0`
-/

namespace A182739.P7805536513674976851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000041 (A000040 n + (Nat.choose (f1 (n - 1)).toNat (A000041 (2 * n + 1) ^ 2).toNat : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182739.P7805536513674976851

/-!
# A182740: A modular table of partitions.

The programs for A182740, there is no canonical definition to state claims against.
-/

/-! ## A182740.P4352278997930482274

`val(A214958(2*(n+1)), A074940(A173505(n)))`
-/

namespace A182740.P4352278997930482274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A214958 (2 * (n + 1))).toNat (A074940 (A173505 n).toNat).toNat

end

end A182740.P4352278997930482274

/-! ## A182740.P2883562914923880017

`A007814(A247813(2*n+3)%A355602(n+1))`
-/

namespace A182740.P2883562914923880017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.tmod (A247813 (2 * n + 3)) (A355602 (n + 1))).toNat

end

end A182740.P2883562914923880017

/-!
# A182741: A modular table of partitions as a binary code.

The programs for A182741, there is no canonical definition to state claims against.
-/

/-! ## A182741.P13924316890016462159

`char[lt[0, A182740(n+1)]]`
-/

namespace A182741.P13924316890016462159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182740 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A182741.P13924316890016462159

/-! ## A182741.P17294385621251028180

`ceil(A182740(n+1)/A000040(n+1))`
-/

namespace A182741.P17294385621251028180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A182741.P17294385621251028180

/-! ## A182741.P6359730748576783594

`ceil(A182740(n+1)/A000203(n+1))`
-/

namespace A182741.P6359730748576783594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A182741.P6359730748576783594

/-! ## A182741.P18080669146311034233

`ceil(A182740(n+1)/A006093(n+1))`
-/

namespace A182741.P18080669146311034233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)⌉

end

end A182741.P18080669146311034233

/-! ## A182741.P3703709416631843954

`ceil(A182740(n+1)/A033950(n+1))`
-/

namespace A182741.P3703709416631843954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A033950 (n + 1) : ℚ)⌉

end

end A182741.P3703709416631843954

/-! ## A182741.P11340502622698845787

`ceil(A182740(n+1)/A038664(n+1))`
-/

namespace A182741.P11340502622698845787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A038664 (n + 1) : ℚ)⌉

end

end A182741.P11340502622698845787

/-! ## A182741.P7094409770981072600

`ceil(A182740(n+1)/A051377(n+1))`
-/

namespace A182741.P7094409770981072600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A051377 (n + 1) : ℚ)⌉

end

end A182741.P7094409770981072600

/-! ## A182741.P10033164799827130659

`ceil(A182740(n+1)/A051733(n+1))`
-/

namespace A182741.P10033164799827130659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A051733 (n + 1) : ℚ)⌉

end

end A182741.P10033164799827130659

/-! ## A182741.P17371766562447007702

`ceil(A182740(n+1)/A269857(n+1))`
-/

namespace A182741.P17371766562447007702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A269857 (n + 1) : ℚ)⌉

end

end A182741.P17371766562447007702

/-! ## A182741.P10767087819604936457

`ceil(A182740(n+1)/A342105(n+1))`
-/

namespace A182741.P10767087819604936457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182740 (n + 1) : ℚ) / (A342105 (n + 1) : ℚ)⌉

end

end A182741.P10767087819604936457

/-!
# A182742: Table of partitions that do not contain 1 as a part for even integers.

The programs for A182742, there is no canonical definition to state claims against.
-/

/-! ## A182742.P7107177194975734325

`A182743(A351202(n+1)+A272919(n+2))`
-/

namespace A182742.P7107177194975734325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182743 (A351202 (n + 1) + A272919 (n + 2)).toNat

end

end A182742.P7107177194975734325

/-!
# A182744: Second column of the table A182742.

The programs for A182744, there is no canonical definition to state claims against.
-/

/-! ## A182744.P3642932780333925161

`A329326(A005408(record[A080542(n+1)]))`
-/

namespace A182744.P3642932780333925161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A182744.P3642932780333925161

/-! ## A182744.P8647459389834200459

`A384890(A144795(n+1))`
-/

namespace A182744.P8647459389834200459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (A144795 (n + 1)).toNat

end

end A182744.P8647459389834200459

/-! ## A182744.P14896048669103847322

`A000120(lt[A284457(2*n+3), A329395(n+1)])`
-/

namespace A182744.P14896048669103847322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284457 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182744.P14896048669103847322

/-!
# A182745: Second column of the table A182743.

The programs for A182745, there is no canonical definition to state claims against.
-/

/-! ## A182745.P17491157912513803788

`A130079(4*A081306(n+1))`
-/

namespace A182745.P17491157912513803788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130079 (4 * A081306 (n + 1)).toNat

end

end A182745.P17491157912513803788

/-! ## A182745.P1342034018742651034

`A130079(4*A130073(n+1))`
-/

namespace A182745.P1342034018742651034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130079 (4 * A130073 (n + 1)).toNat

end

end A182745.P1342034018742651034

/-! ## A182745.P4335136813849730964

`A063787(lt[A180839(2*n+3), A133071(n)])`
-/

namespace A182745.P4335136813849730964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180839 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182745.P4335136813849730964

/-! ## A182745.P566324111021111937

`A000120(lt[A022296(n+1), A255852(n)])`
-/

namespace A182745.P566324111021111937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182745.P566324111021111937

/-! ## A182745.P14795012109737834790

`A000120(lt[A054252(n+1), A255852(n)])`
-/

namespace A182745.P14795012109737834790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A182745.P14795012109737834790

/-!
# A182746: Bisection (even part) of number of partitions that do not contain 1 as a part A002865.

The programs for A182746, there is no canonical definition to state claims against.
-/

/-! ## A182746.P4896224676771038392

`A002865(2*n)`
-/

namespace A182746.P4896224676771038392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n)

end

end A182746.P4896224676771038392

/-! ## A182746.P13600468590814222168

`∑[A008483(2*n)]`
-/

namespace A182746.P13600468590814222168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182746.P13600468590814222168

/-! ## A182746.P10583067318577274803

`A085811(2*n+3)`
-/

namespace A182746.P10583067318577274803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (2 * n + 3)

end

end A182746.P10583067318577274803

/-! ## A182746.P1000518099668915379

`∑[A026796(2*n+3)]`
-/

namespace A182746.P1000518099668915379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182746.P1000518099668915379

/-! ## A182746.P3783976680403855533

`A187219(abs(1-2*n)+1)`
-/

namespace A182746.P3783976680403855533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (|1 - (2 * n : ℤ)| + 1).toNat

end

end A182746.P3783976680403855533

/-! ## A182746.P13197691918850567917

`A008483(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A182746.P13197691918850567917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008483 (n + n) + a (n - 1)

end

end A182746.P13197691918850567917

/-! ## A182746.P17957316862004570511

`A117298(A004277(n))`
-/

namespace A182746.P17957316862004570511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (A004277 n).toNat

end

end A182746.P17957316862004570511

/-! ## A182746.P4511517774587845268

`A117298(A004275(n+1))`
-/

namespace A182746.P4511517774587845268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (A004275 (n + 1)).toNat

end

end A182746.P4511517774587845268

/-! ## A182746.P896591210265719445

`A117298(A316571(n+1))`
-/

namespace A182746.P896591210265719445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (A316571 (n + 1)).toNat

end

end A182746.P896591210265719445

/-! ## A182746.P17010090722407033779

`A117995(A028310(2*n))+1`
-/

namespace A182746.P17010090722407033779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (A028310 (2 * n)).toNat + 1

end

end A182746.P17010090722407033779

/-! ## A182746.P11761585422142763799

`A232697(2*A028310(n))-1`
-/

namespace A182746.P11761585422142763799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (2 * A028310 n).toNat - 1

end

end A182746.P11761585422142763799

/-! ## A182746.P5272680235124236838

`A117995(A028310(n)+n)+1`
-/

namespace A182746.P5272680235124236838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (A028310 n + (n : ℤ)).toNat + 1

end

end A182746.P5272680235124236838

/-! ## A182746.P8040901852024896915

`A167928(2*n)+A032741(2*n)`
-/

namespace A182746.P8040901852024896915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167928 (2 * n) + A032741 (2 * n)

end

end A182746.P8040901852024896915

/-! ## A182746.P16032570918936503831

`Δ[A182716(n)]`
-/

namespace A182746.P16032570918936503831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182746.P16032570918936503831

/-! ## A182746.P9822076934326706944

`Δ[A182712(2*n)]`
-/

namespace A182746.P9822076934326706944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182746.P9822076934326706944

/-! ## A182746.P13609594455840774573

`A182716(n+1)-A182716(n)`
-/

namespace A182746.P13609594455840774573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182716 (n + 1) - A182716 n

end

end A182746.P13609594455840774573

/-! ## A182746.P7480930522008699168

`A087787(2*n)-A182716(n)`
-/

namespace A182746.P7480930522008699168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n) - A182716 n

end

end A182746.P7480930522008699168

/-! ## A182746.P17458439435303949250

`A087787(2*n)-A182712(2*n)`
-/

namespace A182746.P17458439435303949250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (2 * n) - A182712 (2 * n)

end

end A182746.P17458439435303949250

/-! ## A182746.P4576518408976915591

`A000041(2*n+1)-A229816(2*n+1)`
-/

namespace A182746.P4576518408976915591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A229816 (2 * n + 1)

end

end A182746.P4576518408976915591

/-! ## A182746.P11147865162576075366

`A035377(6*n)-record[A035377(2*n+1)]`
-/

namespace A182746.P11147865162576075366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (6 * n) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182746.P11147865162576075366

/-!
# A182747: Bisection (odd part) of number of partitions that do not contain 1 as a part A002865.

The programs for A182747, there is no canonical definition to state claims against.
-/

/-! ## A182747.P5239891507442628800

`A002865(Δ[n²])`
-/

namespace A182747.P5239891507442628800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182747.P5239891507442628800

/-! ## A182747.P14938323583200830373

`A117995(Δ[n²])`
-/

namespace A182747.P14938323583200830373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A182747.P14938323583200830373

/-! ## A182747.P18077172674539455166

`A085811(2*(n+2))`
-/

namespace A182747.P18077172674539455166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (2 * (n + 2))

end

end A182747.P18077172674539455166

/-! ## A182747.P8973274189801385560

`A117298(Δ[n²])-1`
-/

namespace A182747.P8973274189801385560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A182747.P8973274189801385560

/-! ## A182747.P2085998379287767734

`A232697(Δ[n²])-1`
-/

namespace A182747.P2085998379287767734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A182747.P2085998379287767734

/-! ## A182747.P15529942102099193004

`∑[A008483(2*n+1)]`
-/

namespace A182747.P15529942102099193004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182747.P15529942102099193004

/-! ## A182747.P16717017612696134421

`∑[A026796(2*(n+2))]`
-/

namespace A182747.P16717017612696134421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182747.P16717017612696134421

/-! ## A182747.P14113339849626088708

`record[and(1, n)*A002865(n)]`
-/

namespace A182747.P14113339849626088708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182747.P14113339849626088708

/-! ## A182747.P12948142315358270712

`∑[A165652(2*n+1)]+n`
-/

namespace A182747.P12948142315358270712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A182747.P12948142315358270712

/-! ## A182747.P7800639979591970201

`abs(A002865(2*n+1)-n)+n`
-/

namespace A182747.P7800639979591970201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002865 (2 * n + 1) - (n : ℤ)| + (n : ℤ)

end

end A182747.P7800639979591970201

/-! ## A182747.P16022784132014838770

`record[A002865((n+1)/and(n+1, -(n+1)))]`
-/

namespace A182747.P16022784132014838770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182747.P16022784132014838770

/-! ## A182747.P5510939894533248190

`A187219(2*n+1)-A000007(n)`
-/

namespace A182747.P5510939894533248190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (2 * n + 1) - A000007 n

end

end A182747.P5510939894533248190

/-! ## A182747.P14818695108672136544

`A002865(2*n+1)+A000007(n+1)`
-/

namespace A182747.P14818695108672136544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + A000007 (n + 1)

end

end A182747.P14818695108672136544

/-! ## A182747.P6642144146165468035

`A033322(n+3)+A002865(2*n+1)`
-/

namespace A182747.P6642144146165468035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 3) + A002865 (2 * n + 1)

end

end A182747.P6642144146165468035

/-! ## A182747.P2961641468592702535

`Δ[A182717(n)]`
-/

namespace A182747.P2961641468592702535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182747.P2961641468592702535

/-! ## A182747.P8727813554019020409

`Δ[A182712(Δ[n²])]`
-/

namespace A182747.P8727813554019020409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182747.P8727813554019020409

/-! ## A182747.P1514221631636307304

`A182717(n+1)-A182717(n)`
-/

namespace A182747.P1514221631636307304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182717 (n + 1) - A182717 n

end

end A182747.P1514221631636307304

/-! ## A182747.P5275300765342635434

`A058695(n)-A058696(n)`
-/

namespace A182747.P5275300765342635434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A058696 n

end

end A182747.P5275300765342635434

/-! ## A182747.P8311176757830877071

`A058695(n)-A000041(2*n)`
-/

namespace A182747.P8311176757830877071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A000041 (2 * n)

end

end A182747.P8311176757830877071

/-! ## A182747.P14605663772306236291

`A000041(2*n+1)-A058696(n)`
-/

namespace A182747.P14605663772306236291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A058696 n

end

end A182747.P14605663772306236291

/-!
# A182748: Triangle T(n,k) read by rows in which row n lists the first n terms of A002865, except the first term, in reverse order together with 0.

The programs for A182748, there is no canonical definition to state claims against.
-/

/-! ## A182748.P322135117830196114

`A116598(n)-char[∑[n-1]]`
-/

namespace A182748.P322135117830196114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A182748.P322135117830196114

/-! ## A182748.P732310167340673517

`A232697(C(comp[∑[n]]-n, 2)-(n+1))-1`
-/

namespace A182748.P732310167340673517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) - 1

end

end A182748.P732310167340673517

/-! ## A182748.P2854694242957640497

`A232697(C(comp[∑[n]]-n, 2)-n-1)-1`
-/

namespace A182748.P2854694242957640497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat - 1

end

end A182748.P2854694242957640497

/-! ## A182748.P4650654310855379530

`A002865(C(comp[∑[n]]-n, 2)-n-char[comp[∑[n-1]]])`
-/

namespace A182748.P4650654310855379530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A182748.P4650654310855379530

/-! ## A182748.P11990267816000214816

`A232697(A025581(n))-1`
-/

namespace A182748.P11990267816000214816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (A025581 n).toNat - 1

end

end A182748.P11990267816000214816

/-! ## A182748.P17798914264899373083

`A023532(n)*A116598(n)`
-/

namespace A182748.P17798914264899373083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n * A116598 n

end

end A182748.P17798914264899373083

/-! ## A182748.P8982447174947138880

`A116598(n)%A001404(n)`
-/

namespace A182748.P8982447174947138880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116598 n) (A001404 n)

end

end A182748.P8982447174947138880

/-! ## A182748.P10188551967576017974

`and(A075300(n), A116598(n))`
-/

namespace A182748.P10188551967576017974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075300 n) (A116598 n)

end

end A182748.P10188551967576017974

/-! ## A182748.P8469219908152548910

`and(A089633(n), A116598(n))`
-/

namespace A182748.P8469219908152548910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089633 n) (A116598 n)

end

end A182748.P8469219908152548910

/-! ## A182748.P4720151619465842966

`and(A116598(n), A230445(n))`
-/

namespace A182748.P4720151619465842966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116598 n) (A230445 n)

end

end A182748.P4720151619465842966

/-! ## A182748.P6690911665730068101

`xor(A023531(n), A116598(n))`
-/

namespace A182748.P6690911665730068101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023531 n) (A116598 n)

end

end A182748.P6690911665730068101

/-! ## A182748.P8797179566676565319

`A116598(Δ[A003056(n)])*A116598(n)`
-/

namespace A182748.P8797179566676565319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (f1 (n + 1) - f1 n).toNat * A116598 n

end

end A182748.P8797179566676565319

/-! ## A182748.P5216376969128319280

`Δ[A027300(n+1)]*char[comp[∑[n-1]]]`
-/

namespace A182748.P5216376969128319280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A182748.P5216376969128319280

/-! ## A182748.P5734075828640826482

`A002865(A193592(n+1))`
-/

namespace A182748.P5734075828640826482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A193592 (n + 1)).toNat

end

end A182748.P5734075828640826482

/-! ## A182748.P5644665324012147747

`and(A116598(n), A164874(n+1))`
-/

namespace A182748.P5644665324012147747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116598 n) (A164874 (n + 1))

end

end A182748.P5644665324012147747

/-! ## A182748.P3374929434016037608

`A238353(A292565(n+1))`
-/

namespace A182748.P3374929434016037608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A292565 (n + 1)).toNat

end

end A182748.P3374929434016037608

/-! ## A182748.P16800337252546420698

`∑{e}[A130321(n), A002865(#)]`
-/

namespace A182748.P16800337252546420698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002865 (Nat.factorization (f1 n).natAbs p)

end

end A182748.P16800337252546420698

/-! ## A182748.P7305993699759271074

`A002865(∏{e}[A130321(n), #])`
-/

namespace A182748.P7305993699759271074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A182748.P7305993699759271074

/-!
# A182751: a(1)=1, a(2)=3, a(3)=6; a(n) = 3*a(n-2) for n > 3.

The programs for A182751, the canonical program `A182751.P12947367879903260152` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182751 has offset 1).

The definition of A182751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A182751.P12947367879903260152`, by `A182751.P12947367879903260152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182751.P12947367879903260152

`3*a(n-2)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182751

/-- `3*a(n-2)` -/
def P12947367879903260152.Spec : Prop :=
  ∀ n, (P12947367879903260152.a n : ℤ) = A182751 (n + 1)

theorem P12947367879903260152.correct : P12947367879903260152.Spec := by
  intro n
  simp only [A182751, Nat.add_sub_cancel]

end A182751

/-! ## A182751.P15450848052647985196

`ogf((1+3x+3x^2)/(1-3x^2))`
-/

namespace A182751.P15450848052647985196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 0, -3] n

end

end A182751.P15450848052647985196

namespace A182751

/-- `ogf((1+3x+3x^2)/(1-3x^2))` -/
def P15450848052647985196.Spec : Prop :=
  ∀ n, P15450848052647985196.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P6215104422397163176

`∏[3/a(n-1)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A182751.P6215104422397163176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182751.P6215104422397163176

namespace A182751

/-- `∏[3/a(n-1)]` -/
def P6215104422397163176.Spec : Prop :=
  ∀ n, P6215104422397163176.a n = (A182751 (n + 1) : ℚ)

end A182751

/-! ## A182751.P3181555274272442716

`a(n-1)+3^floor(n/2)` with `a(0)=1, a(1)=3`
-/

namespace A182751.P3181555274272442716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A182751.P3181555274272442716

namespace A182751

/-- `a(n-1)+3^floor(n/2)` -/
def P3181555274272442716.Spec : Prop :=
  ∀ n, P3181555274272442716.a n = (A182751 (n + 1) : ℚ)

end A182751

/-! ## A182751.P3605410456786159793

`floor(a(n-1)+a(n-gcd(2, a(n-1))))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A182751.P3605410456786159793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (a (n - 1)))

end

end A182751.P3605410456786159793

namespace A182751

/-- `floor(a(n-1)+a(n-gcd(2, a(n-1))))` -/
def P3605410456786159793.Spec : Prop :=
  ∀ n, (P3605410456786159793.a n : ℤ) = A182751 (n + 1)

end A182751

/-! ## A182751.P12209356378815067605

`A038754(n+1)-floor(acot(n))`
-/

namespace A182751.P12209356378815067605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A182751.P12209356378815067605

namespace A182751

/-- `A038754(n+1)-floor(acot(n))` -/
def P12209356378815067605.Spec : Prop :=
  ∀ n, P12209356378815067605.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P13306169137589377594

`A108411(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A182751.P13306169137589377594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A108411 n + a (n - 1)

end

end A182751.P13306169137589377594

namespace A182751

/-- `A108411(n)+a(n-1)` -/
def P13306169137589377594.Spec : Prop :=
  ∀ n, P13306169137589377594.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P3953194153220686158

`A038754((n+1)%(2*n+1))`
-/

namespace A182751.P3953194153220686158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 ((n + 1) % (2 * n + 1))

end

end A182751.P3953194153220686158

namespace A182751

/-- `A038754((n+1)%(2*n+1))` -/
def P3953194153220686158.Spec : Prop :=
  ∀ n, P3953194153220686158.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P13076716657785096011

`A056449(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A182751.P13076716657785096011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A056449 (n - 1) + a (n - 1)

end

end A182751.P13076716657785096011

namespace A182751

/-- `A056449(n-1)+a(n-1)` -/
def P13076716657785096011.Spec : Prop :=
  ∀ n, P13076716657785096011.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P6904202627103911838

`A083658(n+2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A182751.P6904202627103911838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A083658 (n + 2) - a (n - 1)

end

end A182751.P6904202627103911838

namespace A182751

/-- `A083658(n+2)-a(n-1)` -/
def P6904202627103911838.Spec : Prop :=
  ∀ n, P6904202627103911838.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P15513885948100255941

`A000792(A114119(n))`
-/

namespace A182751.P15513885948100255941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A114119 n).toNat

end

end A182751.P15513885948100255941

namespace A182751

/-- `A000792(A114119(n))` -/
def P15513885948100255941.Spec : Prop :=
  ∀ n, P15513885948100255941.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P11105123307371116074

`A038754(A087156(n+1))`
-/

namespace A182751.P11105123307371116074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A087156 (n + 1)).toNat

end

end A182751.P11105123307371116074

namespace A182751

/-- `A038754(A087156(n+1))` -/
def P11105123307371116074.Spec : Prop :=
  ∀ n, P11105123307371116074.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P13766893438720283397

`A182522(A065475(n+1))`
-/

namespace A182751.P13766893438720283397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A065475 (n + 1)).toNat

end

end A182751.P13766893438720283397

namespace A182751

/-- `A182522(A065475(n+1))` -/
def P13766893438720283397.Spec : Prop :=
  ∀ n, P13766893438720283397.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P8974079952495781967

`A182522(A114637(n+1))`
-/

namespace A182751.P8974079952495781967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A114637 (n + 1)).toNat

end

end A182751.P8974079952495781967

namespace A182751

/-- `A182522(A114637(n+1))` -/
def P8974079952495781967.Spec : Prop :=
  ∀ n, P8974079952495781967.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P10461564820853763553

`A038754(A199969(n+2))`
-/

namespace A182751.P10461564820853763553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A199969 (n + 2)).toNat

end

end A182751.P10461564820853763553

namespace A182751

/-- `A038754(A199969(n+2))` -/
def P10461564820853763553.Spec : Prop :=
  ∀ n, P10461564820853763553.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P8861790874981958164

`A182522(A181440(n+2))`
-/

namespace A182751.P8861790874981958164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A181440 (n + 2)).toNat

end

end A182751.P8861790874981958164

namespace A182751

/-- `A182522(A181440(n+2))` -/
def P8861790874981958164.Spec : Prop :=
  ∀ n, P8861790874981958164.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P5396520033409067295

`A182522(A184985(n+2))`
-/

namespace A182751.P5396520033409067295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A184985 (n + 2)).toNat

end

end A182751.P5396520033409067295

namespace A182751

/-- `A182522(A184985(n+2))` -/
def P5396520033409067295.Spec : Prop :=
  ∀ n, P5396520033409067295.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P12914360678467684283

`A038754(A057427(n)+n)`
-/

namespace A182751.P12914360678467684283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A057427 n + (n : ℤ)).toNat

end

end A182751.P12914360678467684283

namespace A182751

/-- `A038754(A057427(n)+n)` -/
def P12914360678467684283.Spec : Prop :=
  ∀ n, P12914360678467684283.a n = A182751 (n + 1)

end A182751

/-! ## A182751.P10911455766697529387

`A182522(A103517(n)-n)`
-/

namespace A182751.P10911455766697529387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A103517 n - (n : ℤ)).toNat

end

end A182751.P10911455766697529387

namespace A182751

/-- `A182522(A103517(n)-n)` -/
def P10911455766697529387.Spec : Prop :=
  ∀ n, P10911455766697529387.a n = A182751 (n + 1)

end A182751

/-!
# A182752: a(1) = 1, a(2) = 6, for n >= 3; a(n) = the smallest number greater than a(n-1) such that [[a(n-2) + a(n-1)] * [a(n-2) + a(n)] * [a(n-1) + a(n)]] / [a(n-2) * a(n-1) * a(n)] is an integer.

The programs for A182752, the canonical program `A182752.P11304584134051303076` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182752 has offset 1).

The definition of A182752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182752.P18161733467542966149

`ogf((1+6x)/(1-14x^2))`
-/

namespace A182752.P18161733467542966149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 0, -14] n

end

end A182752.P18161733467542966149

namespace A182752

/-- `ogf((1+6x)/(1-14x^2))` -/
def P18161733467542966149.Spec : Prop :=
  ∀ n, P18161733467542966149.a n = A182752 (n + 1)

end A182752

/-! ## A182752.P11304584134051303076

`14*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182752

/-- `14*a(n-2)` -/
def P11304584134051303076.Spec : Prop :=
  ∀ n, (P11304584134051303076.a n : ℤ) = A182752 (n + 1)

theorem P11304584134051303076.correct : P11304584134051303076.Spec := by
  intro n
  simp only [A182752, Nat.add_sub_cancel]

end A182752

/-! ## A182752.P11477784117403117384

`∏{digits}[A249572(n), A004714(#)]`
-/

namespace A182752.P11477784117403117384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004714 x).prod

end

end A182752.P11477784117403117384

namespace A182752

/-- `∏{digits}[A249572(n), A004714(#)]` -/
def P11477784117403117384.Spec : Prop :=
  ∀ n, P11477784117403117384.a n = A182752 (n + 1)

end A182752

/-! ## A182752.P11252085263294191992

`∏{digits}[A249572(n), A142151(#)]`
-/

namespace A182752.P11252085263294191992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A142151 x).prod

end

end A182752.P11252085263294191992

namespace A182752

/-- `∏{digits}[A249572(n), A142151(#)]` -/
def P11252085263294191992.Spec : Prop :=
  ∀ n, P11252085263294191992.a n = A182752 (n + 1)

end A182752

/-! ## A182752.P14076405764110278233

`A123752(n)*A164073(n+1)`
-/

namespace A182752.P14076405764110278233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 n * A164073 (n + 1)

end

end A182752.P14076405764110278233

namespace A182752

/-- `A123752(n)*A164073(n+1)` -/
def P14076405764110278233.Spec : Prop :=
  ∀ n, P14076405764110278233.a n = A182752 (n + 1)

end A182752

/-! ## A182752.P16870370940637423752

`lcm(A123752(n), A163864(n+1))`
-/

namespace A182752.P16870370940637423752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123752 n) (A163864 (n + 1))

end

end A182752.P16870370940637423752

namespace A182752

/-- `lcm(A123752(n), A163864(n+1))` -/
def P16870370940637423752.Spec : Prop :=
  ∀ n, (P16870370940637423752.a n : ℤ) = A182752 (n + 1)

end A182752

/-!
# A182753: Expansion of (1 + 14*x)/(1 - 35*x^2).

The programs for A182753, the canonical program `A182753.P9109069632841022032` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182753 has offset 1).

The definition of A182753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+14x)/(1-35x^2))` (program `A182753.P9109069632841022032`, by `A182753.P9109069632841022032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182753.P9109069632841022032

`ogf((1+14x)/(1-35x^2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182753

/-- `ogf((1+14x)/(1-35x^2))` -/
def P9109069632841022032.Spec : Prop :=
  ∀ n, P9109069632841022032.a n = A182753 (n + 1)

theorem P9109069632841022032.correct : P9109069632841022032.Spec := by
  intro n
  simp only [A182753, Nat.add_sub_cancel]

end A182753

/-! ## A182753.P15617970762000095060

`35*a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A182753.P15617970762000095060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  35 * a (n - 2)

end

end A182753.P15617970762000095060

namespace A182753

/-- `35*a(n-2)` -/
def P15617970762000095060.Spec : Prop :=
  ∀ n, (P15617970762000095060.a n : ℤ) = A182753 (n + 1)

end A182753

/-! ## A182753.P1312219225222591019

`∏[35/a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A182753.P1312219225222591019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  35 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182753.P1312219225222591019

namespace A182753

/-- `∏[35/a(n-1)]` -/
def P1312219225222591019.Spec : Prop :=
  ∀ n, P1312219225222591019.a n = (A182753 (n + 1) : ℚ)

end A182753

/-! ## A182753.P12916876747426214812

`A123752(n)*A396584(n)`
-/

namespace A182753.P12916876747426214812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 n * A396584 n

end

end A182753.P12916876747426214812

namespace A182753

/-- `A123752(n)*A396584(n)` -/
def P12916876747426214812.Spec : Prop :=
  ∀ n, P12916876747426214812.a n = A182753 (n + 1)

end A182753

/-! ## A182753.P10675215670975996063

`∏[A010688(n)]*A026383(n)`
-/

namespace A182753.P10675215670975996063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A026383 n

end

end A182753.P10675215670975996063

namespace A182753

/-- `∏[A010688(n)]*A026383(n)` -/
def P10675215670975996063.Spec : Prop :=
  ∀ n, P10675215670975996063.a n = A182753 (n + 1)

end A182753

/-! ## A182753.P15024568375962089742

`lcm(∏[A010688(n²)], A026383(n))`
-/

namespace A182753.P15024568375962089742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A026383 n)

end

end A182753.P15024568375962089742

namespace A182753

/-- `lcm(∏[A010688(n²)], A026383(n))` -/
def P15024568375962089742.Spec : Prop :=
  ∀ n, (P15024568375962089742.a n : ℤ) = A182753 (n + 1)

end A182753

/-!
# A182754: a(1) = 1, a(2) = 21, a(n) = 77*a(n-2) for n>=3.

The programs for A182754, the canonical program `A182754.P15783831109192258764` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182754 has offset 1).

The definition of A182754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `77*a(n-2)` (program `A182754.P15783831109192258764`, by `A182754.P15783831109192258764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182754.P15783831109192258764

`77*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182754

/-- `77*a(n-2)` -/
def P15783831109192258764.Spec : Prop :=
  ∀ n, (P15783831109192258764.a n : ℤ) = A182754 (n + 1)

theorem P15783831109192258764.correct : P15783831109192258764.Spec := by
  intro n
  simp only [A182754, Nat.add_sub_cancel]

end A182754

/-! ## A182754.P4153774111997179413

`∏[77/a(n-1)]` with `a(0)=1, a(1)=21`
-/

namespace A182754.P4153774111997179413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  77 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A182754.P4153774111997179413

namespace A182754

/-- `∏[77/a(n-1)]` -/
def P4153774111997179413.Spec : Prop :=
  ∀ n, P4153774111997179413.a n = (A182754 (n + 1) : ℚ)

end A182754

/-!
# A182755: Expansion of (1+35*x)/(1-90*x^2).

The programs for A182755, the canonical program `A182755.P340428218670385615` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182755 has offset 1).

The definition of A182755 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+35x)/(1-90x^2))` (program `A182755.P340428218670385615`, by `A182755.P340428218670385615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A182755.P340428218670385615

`ogf((1+35x)/(1-90x^2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182755

/-- `ogf((1+35x)/(1-90x^2))` -/
def P340428218670385615.Spec : Prop :=
  ∀ n, P340428218670385615.a n = A182755 (n + 1)

theorem P340428218670385615.correct : P340428218670385615.Spec := by
  intro n
  simp only [A182755, Nat.add_sub_cancel]

end A182755

/-! ## A182755.P11665469353537730907

`90*a(n-2)` with `a(0)=1, a(1)=35`
-/

namespace A182755.P11665469353537730907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  90 * a (n - 2)

end

end A182755.P11665469353537730907

namespace A182755

/-- `90*a(n-2)` -/
def P11665469353537730907.Spec : Prop :=
  ∀ n, (P11665469353537730907.a n : ℤ) = A182755 (n + 1)

end A182755

/-! ## A182755.P5586199555372221499

`A191002(A166023(n+1))`
-/

namespace A182755.P5586199555372221499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191002 (A166023 (n + 1)).toNat

end

end A182755.P5586199555372221499

namespace A182755

/-- `A191002(A166023(n+1))` -/
def P5586199555372221499.Spec : Prop :=
  ∀ n, P5586199555372221499.a n = A182755 (n + 1)

end A182755

/-!
# A182756: Numbers k > 1 such that are sequences B_k of type: {b(1) = 1, b(2) = k, for n >= 3; b(n) = the smallest number h > b(n-1) such that [[b(n-2) + b(n-1)] * [b(n-2) + h] * [b(n-1) + h]] / [b(n-2) * b(n-1) * h] is an integer}.

The programs for A182756, there is no canonical definition to state claims against.
-/

/-! ## A182756.P14749583402549721802

`∪[A000045(2*n+1)+1, A101879(n+4)]`
-/

namespace A182756.P14749583402549721802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182756.P14749583402549721802

/-!
# A182757: Numbers k > 1 such that is no sequence B of type: {b(1) = 1, b(2) = k, for n >= 3; b(n) = the smallest number h > b(n-1) such that [[b(n-2) + b(n-1)] * [b(n-2) + h] * [b(n-1) + h]] / [b(n-2) * b(n-1) * h] is an integer}.

The programs for A182757, there is no canonical definition to state claims against.
-/

/-! ## A182757.P6635274716387221942

`comp[a(n-2)+30]+4` with `a(0)=10, a(1)=2, a(2)=17, a(3)=31`
-/

namespace A182757.P6635274716387221942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 2, 17, 31] fun n f1 =>
  f1 (n - 2) + 30

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4

end

end A182757.P6635274716387221942

/-! ## A182757.P16983821021027010596

`lt[sin(xor(1, n)), n%7*floor(n/7)]`
-/

namespace A182757.P16983821021027010596
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Nat.xor 1 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 7 : ℕ) : ℤ) * ⌊(n : ℚ) / 7⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A182757.P16983821021027010596

/-! ## A182757.P16713425866294297600

`lt[or(2, A336017(n)), n]`
-/

namespace A182757.P16713425866294297600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A336017 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182757.P16713425866294297600

/-! ## A182757.P3415716428685316708

`comp[Δ[A232335(2*(n+1))]]+4`
-/

namespace A182757.P3415716428685316708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A182757.P3415716428685316708

/-! ## A182757.P8159360112674015729

`comp[∑[n*A275727(n)-1]]+4`
-/

namespace A182757.P8159360112674015729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A275727 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A182757.P8159360112674015729

/-!
# A182760: Beatty sequence for (3 + 5^(-1/2))/2.

The programs for A182760, the canonical program `A182760.P3743829332846930708` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182760 has offset 1).

The definition of A182760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182760.P3526742588948812600

`ceil((n+1)/(3-ϕ)+n)`
-/

namespace A182760.P3526742588948812600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (3 - Real.goldenRatio) + (n : ℝ)⌉

end

end A182760.P3526742588948812600

namespace A182760

/-- `ceil((n+1)/(3-ϕ)+n)` -/
def P3526742588948812600.Spec : Prop :=
  ∀ n, P3526742588948812600.a n = A182760 (n + 1)

end A182760

/-! ## A182760.P9335122650059156541

`comp[(5*n)%comp[ceil(ϕ*n)]]`
-/

namespace A182760.P9335122650059156541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182760.P9335122650059156541

namespace A182760

/-- `comp[(5*n)%comp[ceil(ϕ*n)]]` -/
def P9335122650059156541.Spec : Prop :=
  ∀ n, (P9335122650059156541.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P9602257341189864861

`∑[A286746(n+1)+1]`
-/

namespace A182760.P9602257341189864861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182760.P9602257341189864861

namespace A182760

/-- `∑[A286746(n+1)+1]` -/
def P9602257341189864861.Spec : Prop :=
  ∀ n, P9602257341189864861.a n = A182760 (n + 1)

end A182760

/-! ## A182760.P9520760890877238004

`comp[A060144(n)+2*n]`
-/

namespace A182760.P9520760890877238004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182760.P9520760890877238004

namespace A182760

/-- `comp[A060144(n)+2*n]` -/
def P9520760890877238004.Spec : Prop :=
  ∀ n, (P9520760890877238004.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P16348298390653520352

`comp[comp[A003231(n+1)]+n]`
-/

namespace A182760.P16348298390653520352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182760.P16348298390653520352

namespace A182760

/-- `comp[comp[A003231(n+1)]+n]` -/
def P16348298390653520352.Spec : Prop :=
  ∀ n, (P16348298390653520352.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P14216306251550822971

`comp[A008586(n)-ceil(ϕ*n)]`
-/

namespace A182760.P14216306251550822971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n - ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182760.P14216306251550822971

namespace A182760

/-- `comp[A008586(n)-ceil(ϕ*n)]` -/
def P14216306251550822971.Spec : Prop :=
  ∀ n, (P14216306251550822971.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P10902468349684655457

`comp[A182761(n+1)-1]+1`
-/

namespace A182760.P10902468349684655457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182761 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182760.P10902468349684655457

namespace A182760

/-- `comp[A182761(n+1)-1]+1` -/
def P10902468349684655457.Spec : Prop :=
  ∀ n, (P10902468349684655457.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P5005932389668021828

`∑[round(sqrt(A284387(n+1)))]+n`
-/

namespace A182760.P5005932389668021828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A284387 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A182760.P5005932389668021828

namespace A182760

/-- `∑[round(sqrt(A284387(n+1)))]+n` -/
def P5005932389668021828.Spec : Prop :=
  ∀ n, P5005932389668021828.a n = A182760 (n + 1)

end A182760

/-! ## A182760.P2092472507720147285

`∑[A348890(Δ[floor(n/(3-ϕ))])]`
-/

namespace A182760.P2092472507720147285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (3 - Real.goldenRatio)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348890 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182760.P2092472507720147285

namespace A182760

/-- `∑[A348890(Δ[floor(n/(3-ϕ))])]` -/
def P2092472507720147285.Spec : Prop :=
  ∀ n, P2092472507720147285.a n = A182760 (n + 1)

end A182760

/-! ## A182760.P13532050642687805153

`∑[floor(log2(A284749(n+1)²+3))]`
-/

namespace A182760.P13532050642687805153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A284749 (n + 1) ^ 2 + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182760.P13532050642687805153

namespace A182760

/-- `∑[floor(log2(A284749(n+1)²+3))]` -/
def P13532050642687805153.Spec : Prop :=
  ∀ n, (P13532050642687805153.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P4813646435996091258

`comp[comp[A108598(2*(n+1))]+n]`
-/

namespace A182760.P4813646435996091258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182760.P4813646435996091258

namespace A182760

/-- `comp[comp[A108598(2*(n+1))]+n]` -/
def P4813646435996091258.Spec : Prop :=
  ∀ n, (P4813646435996091258.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P480752267120978973

`comp[comp[A287775(2*(n+1))]+n]`
-/

namespace A182760.P480752267120978973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182760.P480752267120978973

namespace A182760

/-- `comp[comp[A287775(2*(n+1))]+n]` -/
def P480752267120978973.Spec : Prop :=
  ∀ n, (P480752267120978973.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P4232127266139829208

`comp[3*n+1-A005206(n)]+1`
-/

namespace A182760.P4232127266139829208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - A005206 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182760.P4232127266139829208

namespace A182760

/-- `comp[3*n+1-A005206(n)]+1` -/
def P4232127266139829208.Spec : Prop :=
  ∀ n, (P4232127266139829208.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P3743829332846930708

`A016789(n)-A287770(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A182760

/-- `A016789(n)-A287770(n+1)` -/
def P3743829332846930708.Spec : Prop :=
  ∀ n, P3743829332846930708.a n = A182760 (n + 1)

theorem P3743829332846930708.correct : P3743829332846930708.Spec := by
  intro n
  simp only [A182760, Nat.add_sub_cancel]

end A182760

/-! ## A182760.P1721167421530031437

`∪[A285678(n+1), A285679(n+1)]`
-/

namespace A182760.P1721167421530031437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A182760.P1721167421530031437

namespace A182760

/-- `∪[A285678(n+1), A285679(n+1)]` -/
def P1721167421530031437.Spec : Prop :=
  ∀ n, (P1721167421530031437.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P12358820400416483429

`comp[A016885(n)-A001950(n+1)]+1`
-/

namespace A182760.P12358820400416483429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182760.P12358820400416483429

namespace A182760

/-- `comp[A016885(n)-A001950(n+1)]+1` -/
def P12358820400416483429.Spec : Prop :=
  ∀ n, (P12358820400416483429.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P11611583175562270998

`∑[char[A016777(n)-A022342(n+1)]]+1+n`
-/

namespace A182760.P11611583175562270998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A022342 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A182760.P11611583175562270998

namespace A182760

/-- `∑[char[A016777(n)-A022342(n+1)]]+1+n` -/
def P11611583175562270998.Spec : Prop :=
  ∀ n, (P11611583175562270998.a n : ℤ) = A182760 (n + 1)

end A182760

/-! ## A182760.P6767741319429301911

`∑[A002265(A020639(2*(n+1))*A284749(n+1)+2)+1]`
-/

namespace A182760.P6767741319429301911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A020639 (2 * (n + 1)) * A284749 (n + 1) + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182760.P6767741319429301911

namespace A182760

/-- `∑[A002265(A020639(2*(n+1))*A284749(n+1)+2)+1]` -/
def P6767741319429301911.Spec : Prop :=
  ∀ n, P6767741319429301911.a n = A182760 (n + 1)

end A182760

/-! ## A182760.P14903905071742053650

`A188469(n+2)-A188013(n+2)+n`
-/

namespace A182760.P14903905071742053650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 2) - A188013 (n + 2) + (n : ℤ)

end

end A182760.P14903905071742053650

namespace A182760

/-- `A188469(n+2)-A188013(n+2)+n` -/
def P14903905071742053650.Spec : Prop :=
  ∀ n, P14903905071742053650.a n = A182760 (n + 1)

end A182760

/-! ## A182760.P17988744405297066750

`A285681(n+3)-3`
-/

namespace A182760.P17988744405297066750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285681 (n + 3) - 3

end

end A182760.P17988744405297066750

namespace A182760

/-- `A285681(n+3)-3` -/
def P17988744405297066750.Spec : Prop :=
  ∀ n, P17988744405297066750.a n = A182760 (n + 1)

end A182760

/-!
# A182761: Beatty sequence for (7 - sqrt(5))/2.

The programs for A182761, the canonical program `A182761.P11311037436768362727` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182761 has offset 1).

The definition of A182761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182761.P11311037436768362727

`floor((n+1)*(7-sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182761

/-- `floor((n+1)*(7-sqrt(5))/2)` -/
def P11311037436768362727.Spec : Prop :=
  ∀ n, P11311037436768362727.a n = A182761 (n + 1)

theorem P11311037436768362727.correct : P11311037436768362727.Spec := by
  intro n
  simp only [A182761, Nat.add_sub_cancel]

end A182761

/-! ## A182761.P11019201165443027425

`∑[xor(3, Δ[ceil(n/ϕ)])]`
-/

namespace A182761.P11019201165443027425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182761.P11019201165443027425

namespace A182761

/-- `∑[xor(3, Δ[ceil(n/ϕ)])]` -/
def P11019201165443027425.Spec : Prop :=
  ∀ n, P11019201165443027425.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P5269207875567328085

`∑[gcd(2, Δ[floor(n/ϕ)])]+n`
-/

namespace A182761.P5269207875567328085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A182761.P5269207875567328085

namespace A182761

/-- `∑[gcd(2, Δ[floor(n/ϕ)])]+n` -/
def P5269207875567328085.Spec : Prop :=
  ∀ n, (P5269207875567328085.a n : ℤ) = A182761 (n + 1)

end A182761

/-! ## A182761.P16504309041197504646

`ceil(record[xor(3, n)]-ϕ*(n+1))`
-/

namespace A182761.P16504309041197504646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) - Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A182761.P16504309041197504646

namespace A182761

/-- `ceil(record[xor(3, n)]-ϕ*(n+1))` -/
def P16504309041197504646.Spec : Prop :=
  ∀ n, P16504309041197504646.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P7531339262278377728

`floor(∑[n+3-ϕ])-C(n+1, 2)+1+n`
-/

namespace A182761.P7531339262278377728
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (Nat.choose (n + 1) 2 : ℤ) + 1 + (n : ℤ)

end

end A182761.P7531339262278377728

namespace A182761

/-- `floor(∑[n+3-ϕ])-C(n+1, 2)+1+n` -/
def P7531339262278377728.Spec : Prop :=
  ∀ n, P7531339262278377728.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P3845266820492390412

`∑[3-A114986(n)]`
-/

namespace A182761.P3845266820492390412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182761.P3845266820492390412

namespace A182761

/-- `∑[3-A114986(n)]` -/
def P3845266820492390412.Spec : Prop :=
  ∀ n, P3845266820492390412.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P8849407848974548784

`A195170(n+1)-1`
-/

namespace A182761.P8849407848974548784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (n + 1) - 1

end

end A182761.P8849407848974548784

namespace A182761

/-- `A195170(n+1)-1` -/
def P8849407848974548784.Spec : Prop :=
  ∀ n, P8849407848974548784.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P3286329266927027202

`A195121(n+1)+n`
-/

namespace A182761.P3286329266927027202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (n + 1) + (n : ℤ)

end

end A182761.P3286329266927027202

namespace A182761

/-- `A195121(n+1)+n` -/
def P3286329266927027202.Spec : Prop :=
  ∀ n, P3286329266927027202.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P1300657705719853133

`∑[A188432(n+1)+2]`
-/

namespace A182761.P1300657705719853133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182761.P1300657705719853133

namespace A182761

/-- `∑[A188432(n+1)+2]` -/
def P1300657705719853133.Spec : Prop :=
  ∀ n, P1300657705719853133.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P11550818201036849521

`∑[3-A096270(n)]-1`
-/

namespace A182761.P11550818201036849521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182761.P11550818201036849521

namespace A182761

/-- `∑[3-A096270(n)]-1` -/
def P11550818201036849521.Spec : Prop :=
  ∀ n, P11550818201036849521.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P3783212437942149099

`∑[4-A001468(n)]-1`
-/

namespace A182761.P3783212437942149099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182761.P3783212437942149099

namespace A182761

/-- `∑[4-A001468(n)]-1` -/
def P3783212437942149099.Spec : Prop :=
  ∀ n, P3783212437942149099.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P14396570427266021950

`∑[5-A076662(n+1)]`
-/

namespace A182761.P14396570427266021950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A076662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182761.P14396570427266021950

namespace A182761

/-- `∑[5-A076662(n+1)]` -/
def P14396570427266021950.Spec : Prop :=
  ∀ n, P14396570427266021950.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P6117917655781170259

`A249115(n+1)+1+n`
-/

namespace A182761.P6117917655781170259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) + 1 + (n : ℤ)

end

end A182761.P6117917655781170259

namespace A182761

/-- `A249115(n+1)+1+n` -/
def P6117917655781170259.Spec : Prop :=
  ∀ n, P6117917655781170259.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P1458978432155496161

`A063732(n+1)+2+n`
-/

namespace A182761.P1458978432155496161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (n + 1) + 2 + (n : ℤ)

end

end A182761.P1458978432155496161

namespace A182761

/-- `A063732(n+1)+2+n` -/
def P1458978432155496161.Spec : Prop :=
  ∀ n, P1458978432155496161.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P13055425233272831084

`A195171(n+1)-(n+2)`
-/

namespace A182761.P13055425233272831084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195171 (n + 1) - (n + 2 : ℤ)

end

end A182761.P13055425233272831084

namespace A182761

/-- `A195171(n+1)-(n+2)` -/
def P13055425233272831084.Spec : Prop :=
  ∀ n, P13055425233272831084.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P10079345718772455716

`∑[char[A001950(n+1)]+2]`
-/

namespace A182761.P10079345718772455716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182761.P10079345718772455716

namespace A182761

/-- `∑[char[A001950(n+1)]+2]` -/
def P10079345718772455716.Spec : Prop :=
  ∀ n, (P10079345718772455716.a n : ℤ) = A182761 (n + 1)

end A182761

/-! ## A182761.P2780164381783737234

`∑[2-A120613(n+1)+n]`
-/

namespace A182761.P2780164381783737234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A120613 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182761.P2780164381783737234

namespace A182761

/-- `∑[2-A120613(n+1)+n]` -/
def P2780164381783737234.Spec : Prop :=
  ∀ n, P2780164381783737234.a n = A182761 (n + 1)

end A182761

/-! ## A182761.P4859675629917702368

`∑[n+3]-A054066(n+1)`
-/

namespace A182761.P4859675629917702368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054066 (n + 1)

end

end A182761.P4859675629917702368

namespace A182761

/-- `∑[n+3]-A054066(n+1)` -/
def P4859675629917702368.Spec : Prop :=
  ∀ n, P4859675629917702368.a n = A182761 (n + 1)

end A182761

/-!
# A182762: Number of ordered factorizations of A025487(n) as A025487(j) * A025487(k).

The programs for A182762, there is no canonical definition to state claims against.
-/

/-! ## A182762.P14272888881744578166

`A000005(A181815(n+1))`
-/

namespace A182762.P14272888881744578166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181815 (n + 1)).toNat

end

end A182762.P14272888881744578166

/-! ## A182762.P5781874723901562926

`A336315(A181820(n+1))`
-/

namespace A182762.P5781874723901562926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A181820 (n + 1)).toNat

end

end A182762.P5781874723901562926

/-! ## A182762.P17945019129897989504

`∑{d}[A181815(n+1), gcd(#, A000040(n+1))]`
-/

namespace A182762.P17945019129897989504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A000040 (n + 1))

end

end A182762.P17945019129897989504

/-! ## A182762.P7476922402153960861

`A336315(∏{e}[A025487(n+1), A095285(#)])`
-/

namespace A182762.P7476922402153960861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095285 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A182762.P7476922402153960861

/-! ## A182762.P13261660554672404692

`A324183(A329905(n+1))`
-/

namespace A182762.P13261660554672404692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (A329905 (n + 1)).toNat

end

end A182762.P13261660554672404692

/-! ## A182762.P5127231507625651437

`∑{d}[A181815(n+1), A052126(A006530(#))]`
-/

namespace A182762.P5127231507625651437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A052126 (A006530 d).toNat

end

end A182762.P5127231507625651437

/-! ## A182762.P8632467065061921149

`A000005(A329900(A025487(n+1)))`
-/

namespace A182762.P8632467065061921149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329900 (A025487 (n + 1)).toNat).toNat

end

end A182762.P8632467065061921149

/-!
# A182763: Numbers that set records for number of ordered factorizations as A025487(j)*A025487(k).

The programs for A182763, there is no canonical definition to state claims against.
-/

/-! ## A182763.P8423382616766659981

`∑[∏[A001221(A174995(3*n+5))]]`
-/

namespace A182763.P8423382616766659981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A174995 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182763.P8423382616766659981

/-! ## A182763.P15805917556157239602

`A102443(A064934(n))`
-/

namespace A182763.P15805917556157239602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A064934 n).toNat

end

end A182763.P15805917556157239602

/-! ## A182763.P9329536057281649034

`record[A003958(A093784(n))]`
-/

namespace A182763.P9329536057281649034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A093784 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182763.P9329536057281649034

/-! ## A182763.P1474490498564395700

`record[A003958(A096111(n))]`
-/

namespace A182763.P1474490498564395700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A096111 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182763.P1474490498564395700

/-! ## A182763.P14459466455041057099

`A102443(A119610(n+1))`
-/

namespace A182763.P14459466455041057099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A119610 (n + 1)).toNat

end

end A182763.P14459466455041057099

/-!
# A182764: Number of ordered factorizations of A182763(n) as A025487(j)*A025487(k).

The programs for A182764, there is no canonical definition to state claims against.
-/

/-! ## A182764.P11876424055792423999

`record[A182762(n+1)]`
-/

namespace A182764.P11876424055792423999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182764.P11876424055792423999

/-! ## A182764.P8212160086899017638

`record[A000005(A181815(n+1))]`
-/

namespace A182764.P8212160086899017638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181815 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182764.P8212160086899017638

/-! ## A182764.P7910857184078368428

`A000005(A329900(A182763(n+1)))`
-/

namespace A182764.P7910857184078368428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329900 (A182763 (n + 1)).toNat).toNat

end

end A182764.P7910857184078368428

/-! ## A182764.P14616009055989256274

`record[A003963(A125624(n+1))]`
-/

namespace A182764.P14616009055989256274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A125624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182764.P14616009055989256274

/-! ## A182764.P16680178857925733397

`record[A166469(A002473(n+1))]`
-/

namespace A182764.P16680178857925733397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182764.P16680178857925733397

/-!
# A182765: Beatty sequence for (6 + sqrt(2))/4.

The programs for A182765, the canonical program `A182765.P528577260770983672` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182765 has offset 1).

The definition of A182765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182765.P528577260770983672

`ceil((comp[floor(n*sqrt(2))]+1)/4)+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182765

/-- `ceil((comp[floor(n*sqrt(2))]+1)/4)+n` -/
def P528577260770983672.Spec : Prop :=
  ∀ n, P528577260770983672.a n = A182765 (n + 1)

theorem P528577260770983672.correct : P528577260770983672.Spec := by
  intro n
  simp only [A182765, Nat.add_sub_cancel]

end A182765

/-! ## A182765.P2834584239056205178

`comp[comp[A001952(2*(n+1))]+n]`
-/

namespace A182765.P2834584239056205178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182765.P2834584239056205178

namespace A182765

/-- `comp[comp[A001952(2*(n+1))]+n]` -/
def P2834584239056205178.Spec : Prop :=
  ∀ n, (P2834584239056205178.a n : ℤ) = A182765 (n + 1)

end A182765

/-! ## A182765.P10934198896137167402

`A008619(A182769(n+1)-1+n)`
-/

namespace A182765.P10934198896137167402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A182769 (n + 1) - 1 + (n : ℤ)).toNat

end

end A182765.P10934198896137167402

namespace A182765

/-- `A008619(A182769(n+1)-1+n)` -/
def P10934198896137167402.Spec : Prop :=
  ∀ n, P10934198896137167402.a n = A182765 (n + 1)

end A182765

/-! ## A182765.P12439789925879006056

`A110654(A182770(n+1)+A091087(n+1))`
-/

namespace A182765.P12439789925879006056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A182770 (n + 1) + A091087 (n + 1)).toNat

end

end A182765.P12439789925879006056

namespace A182765

/-- `A110654(A182770(n+1)+A091087(n+1))` -/
def P12439789925879006056.Spec : Prop :=
  ∀ n, P12439789925879006056.a n = A182765 (n + 1)

end A182765

/-! ## A182765.P6814391251842823132

`A004526(A182769(n+1)+1+n)`
-/

namespace A182765.P6814391251842823132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182769 (n + 1) + 1 + (n : ℤ)).toNat

end

end A182765.P6814391251842823132

namespace A182765

/-- `A004526(A182769(n+1)+1+n)` -/
def P6814391251842823132.Spec : Prop :=
  ∀ n, P6814391251842823132.a n = A182765 (n + 1)

end A182765

/-! ## A182765.P1048608288486993985

`A004526(A080755(n+1)+2*n+1)`
-/

namespace A182765.P1048608288486993985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080755 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A182765.P1048608288486993985

namespace A182765

/-- `A004526(A080755(n+1)+2*n+1)` -/
def P1048608288486993985.Spec : Prop :=
  ∀ n, P1048608288486993985.a n = A182765 (n + 1)

end A182765

/-!
# A182766: Beatty sequence for 5 - 2*sqrt(2).

The programs for A182766, the canonical program `A182766.P16853844674736746292` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182766 has offset 1).

The definition of A182766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182766.P16853844674736746292

`floor((n+1)*(5-2*sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182766

/-- `floor((n+1)*(5-2*sqrt(2)))` -/
def P16853844674736746292.Spec : Prop :=
  ∀ n, P16853844674736746292.a n = A182766 (n + 1)

theorem P16853844674736746292.correct : P16853844674736746292.Spec := by
  intro n
  simp only [A182766, Nat.add_sub_cancel]

end A182766

/-! ## A182766.P972820329665337772

`A195179(n+1)-1`
-/

namespace A182766.P972820329665337772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195179 (n + 1) - 1

end

end A182766.P972820329665337772

namespace A182766

/-- `A195179(n+1)-1` -/
def P972820329665337772.Spec : Prop :=
  ∀ n, P972820329665337772.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P914003204785377223

`A195178(n+1)+n`
-/

namespace A182766.P914003204785377223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (n + 1) + (n : ℤ)

end

end A182766.P914003204785377223

namespace A182766

/-- `A195178(n+1)+n` -/
def P914003204785377223.Spec : Prop :=
  ∀ n, P914003204785377223.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P394387189880824444

`A187394(n+1)+1+n`
-/

namespace A182766.P394387189880824444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187394 (n + 1) + 1 + (n : ℤ)

end

end A182766.P394387189880824444

namespace A182766

/-- `A187394(n+1)+1+n` -/
def P394387189880824444.Spec : Prop :=
  ∀ n, P394387189880824444.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P3270867159717677333

`A195177(n+1)+Δ[n²]`
-/

namespace A182766.P3270867159717677333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A182766.P3270867159717677333

namespace A182766

/-- `A195177(n+1)+Δ[n²]` -/
def P3270867159717677333.Spec : Prop :=
  ∀ n, P3270867159717677333.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P6229154248744403422

`(5*(n+1))%(A022842(n+1)+1)`
-/

namespace A182766.P6229154248744403422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * (n + 1) : ℤ) (A022842 (n + 1) + 1)

end

end A182766.P6229154248744403422

namespace A182766

/-- `(5*(n+1))%(A022842(n+1)+1)` -/
def P6229154248744403422.Spec : Prop :=
  ∀ n, P6229154248744403422.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P5814322949560975908

`∑[A094077(Δ[A198263(n)])]`
-/

namespace A182766.P5814322949560975908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094077 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182766.P5814322949560975908

namespace A182766

/-- `∑[A094077(Δ[A198263(n)])]` -/
def P5814322949560975908.Spec : Prop :=
  ∀ n, P5814322949560975908.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P17356224363589963440

`A016897(n)-A022842(n+1)`
-/

namespace A182766.P17356224363589963440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A022842 (n + 1)

end

end A182766.P17356224363589963440

namespace A182766

/-- `A016897(n)-A022842(n+1)` -/
def P17356224363589963440.Spec : Prop :=
  ∀ n, P17356224363589963440.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P1065307584987923897

`A004771(n)-A190337(n+1)`
-/

namespace A182766.P1065307584987923897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A190337 (n + 1)

end

end A182766.P1065307584987923897

namespace A182766

/-- `A004771(n)-A190337(n+1)` -/
def P1065307584987923897.Spec : Prop :=
  ∀ n, P1065307584987923897.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P4455835245513805154

`A017041(n)-A184921(n+1)`
-/

namespace A182766.P4455835245513805154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - A184921 (n + 1)

end

end A182766.P4455835245513805154

namespace A182766

/-- `A017041(n)-A184921(n+1)` -/
def P4455835245513805154.Spec : Prop :=
  ∀ n, P4455835245513805154.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P7197599546125961223

`A017257(n)-A187393(n+1)`
-/

namespace A182766.P7197599546125961223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - A187393 (n + 1)

end

end A182766.P7197599546125961223

namespace A182766

/-- `A017257(n)-A187393(n+1)` -/
def P7197599546125961223.Spec : Prop :=
  ∀ n, P7197599546125961223.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P9232507967127761687

`A017053(n)-A197878(n+1)`
-/

namespace A182766.P9232507967127761687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n - A197878 (n + 1)

end

end A182766.P9232507967127761687

namespace A182766

/-- `A017053(n)-A197878(n+1)` -/
def P9232507967127761687.Spec : Prop :=
  ∀ n, P9232507967127761687.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P981615379142007032

`A330172(n+1)+A054071(n+1)`
-/

namespace A182766.P981615379142007032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330172 (n + 1) + A054071 (n + 1)

end

end A182766.P981615379142007032

namespace A182766

/-- `A330172(n+1)+A054071(n+1)` -/
def P981615379142007032.Spec : Prop :=
  ∀ n, P981615379142007032.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P4358348481853202417

`A005843(n+1)+A195177(n+1)-1`
-/

namespace A182766.P4358348481853202417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A195177 (n + 1) - 1)

end

end A182766.P4358348481853202417

namespace A182766

/-- `A005843(n+1)+A195177(n+1)-1` -/
def P4358348481853202417.Spec : Prop :=
  ∀ n, P4358348481853202417.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P18253551676492165819

`A182770(n+1)+A189382(n+1)-n`
-/

namespace A182766.P18253551676492165819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182770 (n + 1) + (A189382 (n + 1) - (n : ℤ))

end

end A182766.P18253551676492165819

namespace A182766

/-- `A182770(n+1)+A189382(n+1)-n` -/
def P18253551676492165819.Spec : Prop :=
  ∀ n, P18253551676492165819.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P5033185702923686688

`Δ[∑[A195177(n)]+n²]`
-/

namespace A182766.P5033185702923686688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A182766.P5033185702923686688

namespace A182766

/-- `Δ[∑[A195177(n)]+n²]` -/
def P5033185702923686688.Spec : Prop :=
  ∀ n, P5033185702923686688.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P8690413929244436223

`A001489(n+1)+A195179(n+1)+n`
-/

namespace A182766.P8690413929244436223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A195179 (n + 1) + (n : ℤ))

end

end A182766.P8690413929244436223

namespace A182766

/-- `A001489(n+1)+A195179(n+1)+n` -/
def P8690413929244436223.Spec : Prop :=
  ∀ n, P8690413929244436223.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P12266246817054764678

`A195177(n+1)-A001489(n+1)+n`
-/

namespace A182766.P12266246817054764678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (n + 1) - A001489 (n + 1) + (n : ℤ)

end

end A182766.P12266246817054764678

namespace A182766

/-- `A195177(n+1)-A001489(n+1)+n` -/
def P12266246817054764678.Spec : Prop :=
  ∀ n, P12266246817054764678.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P6120158774982350908

`A195119(2*(n+1))+n`
-/

namespace A182766.P6120158774982350908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (2 * (n + 1)) + (n : ℤ)

end

end A182766.P6120158774982350908

namespace A182766

/-- `A195119(2*(n+1))+n` -/
def P6120158774982350908.Spec : Prop :=
  ∀ n, P6120158774982350908.a n = A182766 (n + 1)

end A182766

/-! ## A182766.P9579929635257715116

`A286806(2*(n+1))/2-1`
-/

namespace A182766.P9579929635257715116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286806 (2 * (n + 1)) : ℚ) / 2 - 1

end

end A182766.P9579929635257715116

namespace A182766

/-- `A286806(2*(n+1))/2-1` -/
def P9579929635257715116.Spec : Prop :=
  ∀ n, P9579929635257715116.a n = (A182766 (n + 1) : ℚ)

end A182766

/-!
# A182767: Beatty sequence for 1+e^2.

The programs for A182767, the canonical program `A182767.P16455712923600304615` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182767 has offset 1).

The definition of A182767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182767.P16455712923600304615

`floor((n+1)*(1+exp(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182767

/-- `floor((n+1)*(1+exp(2)))` -/
def P16455712923600304615.Spec : Prop :=
  ∀ n, P16455712923600304615.a n = A182767 (n + 1)

theorem P16455712923600304615.correct : P16455712923600304615.Spec := by
  intro n
  simp only [A182767, Nat.add_sub_cancel]

end A182767

/-! ## A182767.P14224251388346597554

`ceil((n+1)/sinh(16)*sinh(18)+n)`
-/

namespace A182767.P14224251388346597554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sinh (16 : ℝ) * Real.sinh (18 : ℝ) + (n : ℝ)⌉

end

end A182767.P14224251388346597554

namespace A182767

/-- `ceil((n+1)/sinh(16)*sinh(18)+n)` -/
def P14224251388346597554.Spec : Prop :=
  ∀ n, P14224251388346597554.a n = A182767 (n + 1)

end A182767

/-! ## A182767.P883686495211900781

`A109238(2*(n+1))`
-/

namespace A182767.P883686495211900781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109238 (2 * (n + 1))

end

end A182767.P883686495211900781

namespace A182767

/-- `A109238(2*(n+1))` -/
def P883686495211900781.Spec : Prop :=
  ∀ n, P883686495211900781.a n = A182767 (n + 1)

end A182767

/-! ## A182767.P845959715485550588

`A000027(A109238(n+2+n))`
-/

namespace A182767.P845959715485550588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A109238 (n + 2 + n)).toNat

end

end A182767.P845959715485550588

namespace A182767

/-- `A000027(A109238(n+2+n))` -/
def P845959715485550588.Spec : Prop :=
  ∀ n, P845959715485550588.a n = A182767 (n + 1)

end A182767

/-! ## A182767.P3098964842667436200

`A109239(A109237(2*(n+1)))`
-/

namespace A182767.P3098964842667436200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (A109237 (2 * (n + 1))).toNat

end

end A182767.P3098964842667436200

namespace A182767

/-- `A109239(A109237(2*(n+1)))` -/
def P3098964842667436200.Spec : Prop :=
  ∀ n, P3098964842667436200.a n = A182767 (n + 1)

end A182767

/-! ## A182767.P9702340603186469871

`Δ[A022787(n+1)]+n`
-/

namespace A182767.P9702340603186469871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A182767.P9702340603186469871

namespace A182767

/-- `Δ[A022787(n+1)]+n` -/
def P9702340603186469871.Spec : Prop :=
  ∀ n, P9702340603186469871.a n = A182767 (n + 1)

end A182767

/-!
# A182768: Beatty sequence for 1+e^(-2).

The programs for A182768, the canonical program `A182768.P18079098345805938446` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182768 has offset 1).

The definition of A182768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182768.P18079098345805938446

`floor((n+1)*(1+e^-2))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182768

/-- `floor((n+1)*(1+e^-2))` -/
def P18079098345805938446.Spec : Prop :=
  ∀ n, P18079098345805938446.a n = A182768 (n + 1)

theorem P18079098345805938446.correct : P18079098345805938446.Spec := by
  intro n
  simp only [A182768, Nat.add_sub_cancel]

end A182768

/-! ## A182768.P11751585983083082051

`comp[A182767(n+1)-1]+1`
-/

namespace A182768.P11751585983083082051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182767 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182768.P11751585983083082051

namespace A182768

/-- `comp[A182767(n+1)-1]+1` -/
def P11751585983083082051.Spec : Prop :=
  ∀ n, (P11751585983083082051.a n : ℤ) = A182768 (n + 1)

end A182768

/-! ## A182768.P4008974131686428033

`floor(A000027(n+1)/exp(2))+n+1`
-/

namespace A182768.P4008974131686428033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000027 (n + 1) : ℝ) / Real.exp (2 : ℝ)⌋ + (n + 1 : ℤ)

end

end A182768.P4008974131686428033

namespace A182768

/-- `floor(A000027(n+1)/exp(2))+n+1` -/
def P4008974131686428033.Spec : Prop :=
  ∀ n, P4008974131686428033.a n = A182768 (n + 1)

end A182768

/-! ## A182768.P8600175855946101941

`Δ[A022788(n+1)]+n`
-/

namespace A182768.P8600175855946101941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A182768.P8600175855946101941

namespace A182768

/-- `Δ[A022788(n+1)]+n` -/
def P8600175855946101941.Spec : Prop :=
  ∀ n, P8600175855946101941.a n = A182768 (n + 1)

end A182768

/-! ## A182768.P11547685436236183766

`A000196(∑[A103221(n)+A064437(n+1)])`
-/

namespace A182768.P11547685436236183766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + A064437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182768.P11547685436236183766

namespace A182768

/-- `A000196(∑[A103221(n)+A064437(n+1)])` -/
def P11547685436236183766.Spec : Prop :=
  ∀ n, P11547685436236183766.a n = A182768 (n + 1)

end A182768

/-! ## A182768.P12786354531313497865

`A209899(n+2)+1+n`
-/

namespace A182768.P12786354531313497865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209899 (n + 2) + 1 + (n : ℤ)

end

end A182768.P12786354531313497865

namespace A182768

/-- `A209899(n+2)+1+n` -/
def P12786354531313497865.Spec : Prop :=
  ∀ n, P12786354531313497865.a n = A182768 (n + 1)

end A182768

/-! ## A182768.P10768247430953866275

`∑[A000079(Δ[A209899(n+1)])]`
-/

namespace A182768.P10768247430953866275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182768.P10768247430953866275

namespace A182768

/-- `∑[A000079(Δ[A209899(n+1)])]` -/
def P10768247430953866275.Spec : Prop :=
  ∀ n, P10768247430953866275.a n = A182768 (n + 1)

end A182768

/-! ## A182768.P7610352795089684466

`A095861(A301681(n+1))`
-/

namespace A182768.P7610352795089684466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A301681 (n + 1)).toNat

end

end A182768.P7610352795089684466

namespace A182768

/-- `A095861(A301681(n+1))` -/
def P7610352795089684466.Spec : Prop :=
  ∀ n, P7610352795089684466.a n = A182768 (n + 1)

end A182768

/-!
# A182769: Beatty sequence for (4 + sqrt(2))/2.

The programs for A182769, the canonical program `A182769.P5824549114817049724` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182769 has offset 1).

The definition of A182769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182769.P5824549114817049724

`floor((n+1)*(4+sqrt(2))/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182769

/-- `floor((n+1)*(4+sqrt(2))/2)` -/
def P5824549114817049724.Spec : Prop :=
  ∀ n, P5824549114817049724.a n = A182769 (n + 1)

theorem P5824549114817049724.correct : P5824549114817049724.Spec := by
  intro n
  simp only [A182769, Nat.add_sub_cancel]

end A182769

/-! ## A182769.P17247839996156162168

`comp[floor(n*sqrt(2))+n]-xor(n, -1)`
-/

namespace A182769.P17247839996156162168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - Int.xor (n : ℤ) (-1)

end

end A182769.P17247839996156162168

namespace A182769

/-- `comp[floor(n*sqrt(2))+n]-xor(n, -1)` -/
def P17247839996156162168.Spec : Prop :=
  ∀ n, P17247839996156162168.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P2215904987632840579

`∑[A276869(n+1)]`
-/

namespace A182769.P2215904987632840579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182769.P2215904987632840579

namespace A182769

/-- `∑[A276869(n+1)]` -/
def P2215904987632840579.Spec : Prop :=
  ∀ n, P2215904987632840579.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P18212081707917776745

`A080755(n+1)+n`
-/

namespace A182769.P18212081707917776745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) + (n : ℤ)

end

end A182769.P18212081707917776745

namespace A182769

/-- `A080755(n+1)+n` -/
def P18212081707917776745.Spec : Prop :=
  ∀ n, P18212081707917776745.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P3077871323462410887

`∑[A188295(n+1)+2]`
-/

namespace A182769.P3077871323462410887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182769.P3077871323462410887

namespace A182769

/-- `∑[A188295(n+1)+2]` -/
def P3077871323462410887.Spec : Prop :=
  ∀ n, P3077871323462410887.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P4232788843828475348

`A003152(n+1)+1+n`
-/

namespace A182769.P4232788843828475348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + 1 + (n : ℤ)

end

end A182769.P4232788843828475348

namespace A182769

/-- `A003152(n+1)+1+n` -/
def P4232788843828475348.Spec : Prop :=
  ∀ n, P4232788843828475348.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P3903158409388789105

`A049474(n+1)+Δ[n²]`
-/

namespace A182769.P3903158409388789105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A182769.P3903158409388789105

namespace A182769

/-- `A049474(n+1)+Δ[n²]` -/
def P3903158409388789105.Spec : Prop :=
  ∀ n, P3903158409388789105.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P16782232986163935662

`A049472(n+1)+2*(n+1)`
-/

namespace A182769.P16782232986163935662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + (2 * (n + 1) : ℤ)

end

end A182769.P16782232986163935662

namespace A182769

/-- `A049472(n+1)+2*(n+1)` -/
def P16782232986163935662.Spec : Prop :=
  ∀ n, P16782232986163935662.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P7332053558310504606

`3*(n+1)-A194920(n+1)`
-/

namespace A182769.P7332053558310504606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A194920 (n + 1)

end

end A182769.P7332053558310504606

namespace A182769

/-- `3*(n+1)-A194920(n+1)` -/
def P7332053558310504606.Spec : Prop :=
  ∀ n, P7332053558310504606.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P18182635359315200431

`∑[3-char[A001952(n+1)]]-1`
-/

namespace A182769.P18182635359315200431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182769.P18182635359315200431

namespace A182769

/-- `∑[3-char[A001952(n+1)]]-1` -/
def P18182635359315200431.Spec : Prop :=
  ∀ n, P18182635359315200431.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P1849480661807951310

`A075328(n)+A070098(n+1)`
-/

namespace A182769.P1849480661807951310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n + A070098 (n + 1)

end

end A182769.P1849480661807951310

namespace A182769

/-- `A075328(n)+A070098(n+1)` -/
def P1849480661807951310.Spec : Prop :=
  ∀ n, P1849480661807951310.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P5225856444788238649

`A190330(n+1)+A008619(n)`
-/

namespace A182769.P5225856444788238649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190330 (n + 1) + A008619 n

end

end A182769.P5225856444788238649

namespace A182769

/-- `A190330(n+1)+A008619(n)` -/
def P5225856444788238649.Spec : Prop :=
  ∀ n, P5225856444788238649.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P885440678298601344

`A016789(n)-A183138(n+1)`
-/

namespace A182769.P885440678298601344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A183138 (n + 1)

end

end A182769.P885440678298601344

namespace A182769

/-- `A016789(n)-A183138(n+1)` -/
def P885440678298601344.Spec : Prop :=
  ∀ n, P885440678298601344.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P6010738846009093070

`A001952(n+1)-A049473(n+1)`
-/

namespace A182769.P6010738846009093070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - A049473 (n + 1)

end

end A182769.P6010738846009093070

namespace A182769

/-- `A001952(n+1)-A049473(n+1)` -/
def P6010738846009093070.Spec : Prop :=
  ∀ n, P6010738846009093070.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P9275120325486960560

`A016777(n)+2-A194920(n+1)`
-/

namespace A182769.P9275120325486960560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (2 - A194920 (n + 1))

end

end A182769.P9275120325486960560

namespace A182769

/-- `A016777(n)+2-A194920(n+1)` -/
def P9275120325486960560.Spec : Prop :=
  ∀ n, P9275120325486960560.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P5466911110354145784

`A001952(n+1)-(A258703(n+1)+1)`
-/

namespace A182769.P5466911110354145784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - (A258703 (n + 1) + 1)

end

end A182769.P5466911110354145784

namespace A182769

/-- `A001952(n+1)-(A258703(n+1)+1)` -/
def P5466911110354145784.Spec : Prop :=
  ∀ n, P5466911110354145784.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P1479180988336684352

`A083088(n+1)+n`
-/

namespace A182769.P1479180988336684352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (n + 1) + (n : ℤ)

end

end A182769.P1479180988336684352

namespace A182769

/-- `A083088(n+1)+n` -/
def P1479180988336684352.Spec : Prop :=
  ∀ n, P1479180988336684352.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P3274694883817278156

`A285074(n+2)+n-1`
-/

namespace A182769.P3274694883817278156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 2) + ((n : ℤ) - 1)

end

end A182769.P3274694883817278156

namespace A182769

/-- `A285074(n+2)+n-1` -/
def P3274694883817278156.Spec : Prop :=
  ∀ n, P3274694883817278156.a n = A182769 (n + 1)

end A182769

/-! ## A182769.P12537468297253223857

`A285077(n+2)+n-1`
-/

namespace A182769.P12537468297253223857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 2) + ((n : ℤ) - 1)

end

end A182769.P12537468297253223857

namespace A182769

/-- `A285077(n+2)+n-1` -/
def P12537468297253223857.Spec : Prop :=
  ∀ n, P12537468297253223857.a n = A182769 (n + 1)

end A182769

/-!
# A182770: Beatty sequence for 3-sqrt(2).

The programs for A182770, the canonical program `A182770.P155642774259732583` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182770 has offset 1).

The definition of A182770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182770.P155642774259732583

`floor((n+1)*(3-sqrt(2)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182770

/-- `floor((n+1)*(3-sqrt(2)))` -/
def P155642774259732583.Spec : Prop :=
  ∀ n, P155642774259732583.a n = A182770 (n + 1)

theorem P155642774259732583.correct : P155642774259732583.Spec := by
  intro n
  simp only [A182770, Nat.add_sub_cancel]

end A182770

/-! ## A182770.P18365053448553459644

`(5*(n+1))%(comp[floor(n*sqrt(2))]+1)`
-/

namespace A182770.P18365053448553459644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A182770.P18365053448553459644

namespace A182770

/-- `(5*(n+1))%(comp[floor(n*sqrt(2))]+1)` -/
def P18365053448553459644.Spec : Prop :=
  ∀ n, (P18365053448553459644.a n : ℤ) = A182770 (n + 1)

end A182770

/-! ## A182770.P7468834479279588932

`abs(Δ[n²]%floor((n+1)*sqrt(2))+n+1)`
-/

namespace A182770.P7468834479279588932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n + 1 : ℤ)|

end

end A182770.P7468834479279588932

namespace A182770

/-- `abs(Δ[n²]%floor((n+1)*sqrt(2))+n+1)` -/
def P7468834479279588932.Spec : Prop :=
  ∀ n, P7468834479279588932.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P7276823523747679966

`∑[A144611(n)+1]`
-/

namespace A182770.P7276823523747679966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182770.P7276823523747679966

namespace A182770

/-- `∑[A144611(n)+1]` -/
def P7276823523747679966.Spec : Prop :=
  ∀ n, P7276823523747679966.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P592049271927983334

`∑[4-A097509(n)]`
-/

namespace A182770.P592049271927983334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182770.P592049271927983334

namespace A182770

/-- `∑[4-A097509(n)]` -/
def P592049271927983334.Spec : Prop :=
  ∀ n, P592049271927983334.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P15713801240640773780

`A195176(n+1)-1`
-/

namespace A182770.P15713801240640773780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (n + 1) - 1

end

end A182770.P15713801240640773780

namespace A182770

/-- `A195176(n+1)-1` -/
def P15713801240640773780.Spec : Prop :=
  ∀ n, P15713801240640773780.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P13655962759287170646

`A195119(n+1)+n`
-/

namespace A182770.P13655962759287170646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (n + 1) + (n : ℤ)

end

end A182770.P13655962759287170646

namespace A182770

/-- `A195119(n+1)+n` -/
def P13655962759287170646.Spec : Prop :=
  ∀ n, P13655962759287170646.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P6385433124666089628

`comp[A049472(n)+2*n]`
-/

namespace A182770.P6385433124666089628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182770.P6385433124666089628

namespace A182770

/-- `comp[A049472(n)+2*n]` -/
def P6385433124666089628.Spec : Prop :=
  ∀ n, (P6385433124666089628.a n : ℤ) = A182770 (n + 1)

end A182770

/-! ## A182770.P8395517684481170515

`A074840(n+1)+1+n`
-/

namespace A182770.P8395517684481170515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (n + 1) + 1 + (n : ℤ)

end

end A182770.P8395517684481170515

namespace A182770

/-- `A074840(n+1)+1+n` -/
def P8395517684481170515.Spec : Prop :=
  ∀ n, P8395517684481170515.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P11225800055714586627

`A286988(n+1)-(n+2)`
-/

namespace A182770.P11225800055714586627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286988 (n + 1) - (n + 2 : ℤ)

end

end A182770.P11225800055714586627

namespace A182770

/-- `A286988(n+1)-(n+2)` -/
def P11225800055714586627.Spec : Prop :=
  ∀ n, P11225800055714586627.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P12237758850342006787

`A080763(n)+a(n-1)` with `a(0)=1`
-/

namespace A182770.P12237758850342006787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080763 n + a (n - 1)

end

end A182770.P12237758850342006787

namespace A182770

/-- `A080763(n)+a(n-1)` -/
def P12237758850342006787.Spec : Prop :=
  ∀ n, P12237758850342006787.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P18163365792379238506

`∑[char[A003152(n+1)]+1]`
-/

namespace A182770.P18163365792379238506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182770.P18163365792379238506

namespace A182770

/-- `∑[char[A003152(n+1)]+1]` -/
def P18163365792379238506.Spec : Prop :=
  ∀ n, (P18163365792379238506.a n : ℤ) = A182770 (n + 1)

end A182770

/-! ## A182770.P4136306887170484818

`comp[comp[A003151(n+1)]+n]`
-/

namespace A182770.P4136306887170484818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182770.P4136306887170484818

namespace A182770

/-- `comp[comp[A003151(n+1)]+n]` -/
def P4136306887170484818.Spec : Prop :=
  ∀ n, (P4136306887170484818.a n : ℤ) = A182770 (n + 1)

end A182770

/-! ## A182770.P16190572774913342334

`∑[2-A188037(n+1)]-1`
-/

namespace A182770.P16190572774913342334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182770.P16190572774913342334

namespace A182770

/-- `∑[2-A188037(n+1)]-1` -/
def P16190572774913342334.Spec : Prop :=
  ∀ n, P16190572774913342334.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P15872598889604770048

`∑[n+2]-A054074(n+1)`
-/

namespace A182770.P15872598889604770048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054074 (n + 1)

end

end A182770.P15872598889604770048

namespace A182770

/-- `∑[n+2]-A054074(n+1)` -/
def P15872598889604770048.Spec : Prop :=
  ∀ n, P15872598889604770048.a n = A182770 (n + 1)

end A182770

/-! ## A182770.P10186400124193627105

`comp[A285077(n+1)-2+n]`
-/

namespace A182770.P10186400124193627105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182770.P10186400124193627105

namespace A182770

/-- `comp[A285077(n+1)-2+n]` -/
def P10186400124193627105.Spec : Prop :=
  ∀ n, (P10186400124193627105.a n : ℤ) = A182770 (n + 1)

end A182770

/-! ## A182770.P226895543857307083

`2*(n+1)-A054071(n+1)`
-/

namespace A182770.P226895543857307083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A054071 (n + 1)

end

end A182770.P226895543857307083

namespace A182770

/-- `2*(n+1)-A054071(n+1)` -/
def P226895543857307083.Spec : Prop :=
  ∀ n, P226895543857307083.a n = A182770 (n + 1)

end A182770

/-!
# A182771: Beatty sequence for (6+sqrt(3))/3.

The programs for A182771, the canonical program `A182771.P7774643511836226450` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182771 has offset 1).

The definition of A182771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182771.P7774643511836226450

`floor((n+1)*(6+sqrt(3))/3)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182771

/-- `floor((n+1)*(6+sqrt(3))/3)` -/
def P7774643511836226450.Spec : Prop :=
  ∀ n, P7774643511836226450.a n = A182771 (n + 1)

theorem P7774643511836226450.correct : P7774643511836226450.Spec := by
  intro n
  simp only [A182771, Nat.add_sub_cancel]

end A182771

/-! ## A182771.P5266749426713832031

`∑[4-Δ[A195129(n)]]`
-/

namespace A182771.P5266749426713832031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P5266749426713832031

namespace A182771

/-- `∑[4-Δ[A195129(n)]]` -/
def P5266749426713832031.Spec : Prop :=
  ∀ n, P5266749426713832031.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P13003445675695354128

`A186539(n+1)+1+n`
-/

namespace A182771.P13003445675695354128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) + 1 + (n : ℤ)

end

end A182771.P13003445675695354128

namespace A182771

/-- `A186539(n+1)+1+n` -/
def P13003445675695354128.Spec : Prop :=
  ∀ n, P13003445675695354128.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P42131643449731188

`∑[char[A022838(n+1)]+2]`
-/

namespace A182771.P42131643449731188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P42131643449731188

namespace A182771

/-- `∑[char[A022838(n+1)]+2]` -/
def P42131643449731188.Spec : Prop :=
  ∀ n, (P42131643449731188.a n : ℤ) = A182771 (n + 1)

end A182771

/-! ## A182771.P4720176463873565037

`A194979(n+1)+Δ[n²]`
-/

namespace A182771.P4720176463873565037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A182771.P4720176463873565037

namespace A182771

/-- `A194979(n+1)+Δ[n²]` -/
def P4720176463873565037.Spec : Prop :=
  ∀ n, P4720176463873565037.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P2268484168987386449

`A097337(n+1)+2*(n+1)`
-/

namespace A182771.P2268484168987386449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (2 * (n + 1) : ℤ)

end

end A182771.P2268484168987386449

namespace A182771

/-- `A097337(n+1)+2*(n+1)` -/
def P2268484168987386449.Spec : Prop :=
  ∀ n, P2268484168987386449.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P6785258741528448815

`A206908(n+1)-2*(n+1)`
-/

namespace A182771.P6785258741528448815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206908 (n + 1) - (2 * (n + 1) : ℤ)

end

end A182771.P6785258741528448815

namespace A182771

/-- `A206908(n+1)-2*(n+1)` -/
def P6785258741528448815.Spec : Prop :=
  ∀ n, P6785258741528448815.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P17028758810871014716

`3*(n+1)-A195072(n+1)`
-/

namespace A182771.P17028758810871014716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A195072 (n + 1)

end

end A182771.P17028758810871014716

namespace A182771

/-- `3*(n+1)-A195072(n+1)` -/
def P17028758810871014716.Spec : Prop :=
  ∀ n, P17028758810871014716.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P6586778629552137279

`∑[A052938(Δ[A195129(n)])]`
-/

namespace A182771.P6586778629552137279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P6586778629552137279

namespace A182771

/-- `∑[A052938(Δ[A195129(n)])]` -/
def P6586778629552137279.Spec : Prop :=
  ∀ n, P6586778629552137279.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P14211084465102490616

`A016789(n)-A183142(n+1)`
-/

namespace A182771.P14211084465102490616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A183142 (n + 1)

end

end A182771.P14211084465102490616

namespace A182771

/-- `A016789(n)-A183142(n+1)` -/
def P14211084465102490616.Spec : Prop :=
  ∀ n, P14211084465102490616.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P10603475126586394410

`∑[A000020(Δ[A195129(n)])+1]`
-/

namespace A182771.P10603475126586394410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P10603475126586394410

namespace A182771

/-- `∑[A000020(Δ[A195129(n)])+1]` -/
def P10603475126586394410.Spec : Prop :=
  ∀ n, P10603475126586394410.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P6527008918708682915

`∑[A000034(Δ[A195129(n)])+1]`
-/

namespace A182771.P6527008918708682915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P6527008918708682915

namespace A182771

/-- `∑[A000034(Δ[A195129(n)])+1]` -/
def P6527008918708682915.Spec : Prop :=
  ∀ n, P6527008918708682915.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P2776900814779563105

`∑[A000925(Δ[A195129(n)])+1]`
-/

namespace A182771.P2776900814779563105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P2776900814779563105

namespace A182771

/-- `∑[A000925(Δ[A195129(n)])+1]` -/
def P2776900814779563105.Spec : Prop :=
  ∀ n, P2776900814779563105.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P18310384944381944911

`∑[A001204(Δ[A195129(n)])+1]`
-/

namespace A182771.P18310384944381944911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P18310384944381944911

namespace A182771

/-- `∑[A001204(Δ[A195129(n)])+1]` -/
def P18310384944381944911.Spec : Prop :=
  ∀ n, P18310384944381944911.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P8753957591342802058

`∑[A004444(Δ[A195129(n)])+1]`
-/

namespace A182771.P8753957591342802058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P8753957591342802058

namespace A182771

/-- `∑[A004444(Δ[A195129(n)])+1]` -/
def P8753957591342802058.Spec : Prop :=
  ∀ n, P8753957591342802058.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P10201132784004354517

`∑[A061579(Δ[A195129(n)])+1]`
-/

namespace A182771.P10201132784004354517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P10201132784004354517

namespace A182771

/-- `∑[A061579(Δ[A195129(n)])+1]` -/
def P10201132784004354517.Spec : Prop :=
  ∀ n, P10201132784004354517.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P58333852795088695

`∑[A195151(Δ[A195129(n)])+2]`
-/

namespace A182771.P58333852795088695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195151 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P58333852795088695

namespace A182771

/-- `∑[A195151(Δ[A195129(n)])+2]` -/
def P58333852795088695.Spec : Prop :=
  ∀ n, P58333852795088695.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P192784444170709904

`∑[A195152(Δ[A195129(n)])+2]`
-/

namespace A182771.P192784444170709904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195152 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P192784444170709904

namespace A182771

/-- `∑[A195152(Δ[A195129(n)])+2]` -/
def P192784444170709904.Spec : Prop :=
  ∀ n, P192784444170709904.a n = A182771 (n + 1)

end A182771

/-! ## A182771.P5870987122915205130

`∑[A195129(2/Δ[A195129(n)])]`
-/

namespace A182771.P5870987122915205130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 (SequenceMachineLib.roundAway (2 / (f2 (n + 1) - f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182771.P5870987122915205130

namespace A182771

/-- `∑[A195129(2/Δ[A195129(n)])]` -/
def P5870987122915205130.Spec : Prop :=
  ∀ n, P5870987122915205130.a n = A182771 (n + 1)

end A182771

/-!
# A182772: Beatty sequence for (5-sqrt(3))/2.

The programs for A182772, the canonical program `A182772.P891661324438199976` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182772 has offset 1).

The definition of A182772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182772.P891661324438199976

`floor((n+1)*(5-sqrt(3))/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182772

/-- `floor((n+1)*(5-sqrt(3))/2)` -/
def P891661324438199976.Spec : Prop :=
  ∀ n, P891661324438199976.a n = A182772 (n + 1)

theorem P891661324438199976.correct : P891661324438199976.Spec := by
  intro n
  simp only [A182772, Nat.add_sub_cancel]

end A182772

/-! ## A182772.P10792146826163407102

`∑[3-A245222(n)]`
-/

namespace A182772.P10792146826163407102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A245222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182772.P10792146826163407102

namespace A182772

/-- `∑[3-A245222(n)]` -/
def P10792146826163407102.Spec : Prop :=
  ∀ n, P10792146826163407102.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P3620426259727945793

`A074065(n+1)+1+n`
-/

namespace A182772.P3620426259727945793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074065 (n + 1) + 1 + (n : ℤ)

end

end A182772.P3620426259727945793

namespace A182772

/-- `A074065(n+1)+1+n` -/
def P3620426259727945793.Spec : Prop :=
  ∀ n, P3620426259727945793.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P8845118082331905834

`comp[comp[A054088(n+1)]+n]`
-/

namespace A182772.P8845118082331905834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182772.P8845118082331905834

namespace A182772

/-- `comp[comp[A054088(n+1)]+n]` -/
def P8845118082331905834.Spec : Prop :=
  ∀ n, (P8845118082331905834.a n : ℤ) = A182772 (n + 1)

end A182772

/-! ## A182772.P5120882754315401116

`record[xor(3, n)]-A054406(n+1)`
-/

namespace A182772.P5120882754315401116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A054406 (n + 1)

end

end A182772.P5120882754315401116

namespace A182772

/-- `record[xor(3, n)]-A054406(n+1)` -/
def P5120882754315401116.Spec : Prop :=
  ∀ n, P5120882754315401116.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P3348559629895155852

`3*(n+1)-A188070(n+1)`
-/

namespace A182772.P3348559629895155852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A188070 (n + 1)

end

end A182772.P3348559629895155852

namespace A182772

/-- `3*(n+1)-A188070(n+1)` -/
def P3348559629895155852.Spec : Prop :=
  ∀ n, P3348559629895155852.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P5560985871415412725

`3*n+1-comp[A180123(n+1)]`
-/

namespace A182772.P5560985871415412725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A182772.P5560985871415412725

namespace A182772

/-- `3*n+1-comp[A180123(n+1)]` -/
def P5560985871415412725.Spec : Prop :=
  ∀ n, P5560985871415412725.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P400166499481834874

`comp[A097337(n+1)+2*n+1]+1`
-/

namespace A182772.P400166499481834874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A182772.P400166499481834874

namespace A182772

/-- `comp[A097337(n+1)+2*n+1]+1` -/
def P400166499481834874.Spec : Prop :=
  ∀ n, (P400166499481834874.a n : ℤ) = A182772 (n + 1)

end A182772

/-! ## A182772.P10405581381514855411

`A016789(n)-A003511(n+1)`
-/

namespace A182772.P10405581381514855411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A003511 (n + 1)

end

end A182772.P10405581381514855411

namespace A182772

/-- `A016789(n)-A003511(n+1)` -/
def P10405581381514855411.Spec : Prop :=
  ∀ n, P10405581381514855411.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P545438977866058436

`A004767(n)-A054406(n+1)`
-/

namespace A182772.P545438977866058436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A054406 (n + 1)

end

end A182772.P545438977866058436

namespace A182772

/-- `A004767(n)-A054406(n+1)` -/
def P545438977866058436.Spec : Prop :=
  ∀ n, P545438977866058436.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P7884381145474689557

`A016777(n)+1-A003511(n+1)`
-/

namespace A182772.P7884381145474689557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (1 - A003511 (n + 1))

end

end A182772.P7884381145474689557

namespace A182772

/-- `A016777(n)+1-A003511(n+1)` -/
def P7884381145474689557.Spec : Prop :=
  ∀ n, P7884381145474689557.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P16390303722206718978

`A016825(n)+1-A054406(n+1)`
-/

namespace A182772.P16390303722206718978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (1 - A054406 (n + 1))

end

end A182772.P16390303722206718978

namespace A182772

/-- `A016825(n)+1-A054406(n+1)` -/
def P16390303722206718978.Spec : Prop :=
  ∀ n, P16390303722206718978.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P10204910388057988326

`A017137(n)/2-A054406(n+1)`
-/

namespace A182772.P10204910388057988326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017137 n : ℚ) / 2 - (A054406 (n + 1) : ℚ)

end

end A182772.P10204910388057988326

namespace A182772

/-- `A017137(n)/2-A054406(n+1)` -/
def P10204910388057988326.Spec : Prop :=
  ∀ n, P10204910388057988326.a n = (A182772 (n + 1) : ℚ)

end A182772

/-! ## A182772.P3695538382854479492

`Δ[A000326(n)]+1-A003511(n+1)`
-/

namespace A182772.P3695538382854479492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A003511 (n + 1))

end

end A182772.P3695538382854479492

namespace A182772

/-- `Δ[A000326(n)]+1-A003511(n+1)` -/
def P3695538382854479492.Spec : Prop :=
  ∀ n, P3695538382854479492.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P8434386314050567410

`abs(A054406(n+1)-(A016777(n)+2))+n`
-/

namespace A182772.P8434386314050567410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054406 (n + 1) - (A016777 n + 2)| + (n : ℤ)

end

end A182772.P8434386314050567410

namespace A182772

/-- `abs(A054406(n+1)-(A016777(n)+2))+n` -/
def P8434386314050567410.Spec : Prop :=
  ∀ n, P8434386314050567410.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P498406205848488325

`Δ[A002378(n)]-A003511(n+1)+n`
-/

namespace A182772.P498406205848488325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003511 (n + 1) + (n : ℤ)

end

end A182772.P498406205848488325

namespace A182772

/-- `Δ[A002378(n)]-A003511(n+1)+n` -/
def P498406205848488325.Spec : Prop :=
  ∀ n, P498406205848488325.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P14996041353191194549

`Δ[A014206(n)]-A003511(n+1)+n`
-/

namespace A182772.P14996041353191194549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003511 (n + 1) + (n : ℤ)

end

end A182772.P14996041353191194549

namespace A182772

/-- `Δ[A014206(n)]-A003511(n+1)+n` -/
def P14996041353191194549.Spec : Prop :=
  ∀ n, P14996041353191194549.a n = A182772 (n + 1)

end A182772

/-! ## A182772.P7198060593658714770

`Δ[A027688(n)]-A003511(n+1)+n`
-/

namespace A182772.P7198060593658714770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003511 (n + 1) + (n : ℤ)

end

end A182772.P7198060593658714770

namespace A182772

/-- `Δ[A027688(n)]-A003511(n+1)+n` -/
def P7198060593658714770.Spec : Prop :=
  ∀ n, P7198060593658714770.a n = A182772 (n + 1)

end A182772

/-!
# A182773: Beatty sequence for 1+2^(2/3).

The programs for A182773, the canonical program `A182773.P15121023187913089753` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182773 has offset 1).

The definition of A182773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182773.P15121023187913089753

`floor((n+1)*(1+2^(2/3)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182773

/-- `floor((n+1)*(1+2^(2/3)))` -/
def P15121023187913089753.Spec : Prop :=
  ∀ n, P15121023187913089753.a n = A182773 (n + 1)

theorem P15121023187913089753.correct : P15121023187913089753.Spec := by
  intro n
  simp only [A182773, Nat.add_sub_cancel]

end A182773

/-! ## A182773.P15983463188901971409

`A189530(n+1)-∑[A081117(n)]`
-/

namespace A182773.P15983463188901971409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189530 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182773.P15983463188901971409

namespace A182773

/-- `A189530(n+1)-∑[A081117(n)]` -/
def P15983463188901971409.Spec : Prop :=
  ∀ n, P15983463188901971409.a n = A182773 (n + 1)

theorem P15983463188901971409.correct : P15983463188901971409.Spec := by
  intro n
  simp only [A182773, Nat.add_sub_cancel, A182773.P15983463188901971409.f1, A182773.P15983463188901971409.a, A182773.P15121023187913089753.a, A081117, A081117.P9736678173655795984.a, A189530, A189530.P1009789247220490105.f1, A189530.P1009789247220490105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A182773

/-! ## A182773.P8240647946397706182

`A189530(n+1)-A038129(n+1)`
-/

namespace A182773.P8240647946397706182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189530 (n + 1) - A038129 (n + 1)

end

end A182773.P8240647946397706182

namespace A182773

/-- `A189530(n+1)-A038129(n+1)` -/
def P8240647946397706182.Spec : Prop :=
  ∀ n, P8240647946397706182.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P3811687426888141330

`∑[Δ[A347792(n)]+1]`
-/

namespace A182773.P3811687426888141330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182773.P3811687426888141330

namespace A182773

/-- `∑[Δ[A347792(n)]+1]` -/
def P3811687426888141330.Spec : Prop :=
  ∀ n, P3811687426888141330.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P10669897395212266937

`A347792(n+1)+1+n`
-/

namespace A182773.P10669897395212266937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (n + 1) + 1 + (n : ℤ)

end

end A182773.P10669897395212266937

namespace A182773

/-- `A347792(n+1)+1+n` -/
def P10669897395212266937.Spec : Prop :=
  ∀ n, P10669897395212266937.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P3023225399048610655

`∑[A000040(Δ[A347792(n)])]`
-/

namespace A182773.P3023225399048610655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182773.P3023225399048610655

namespace A182773

/-- `∑[A000040(Δ[A347792(n)])]` -/
def P3023225399048610655.Spec : Prop :=
  ∀ n, P3023225399048610655.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P8868915785218202694

`∑[A014197(Δ[A347792(n)])]`
-/

namespace A182773.P8868915785218202694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182773.P8868915785218202694

namespace A182773

/-- `∑[A014197(Δ[A347792(n)])]` -/
def P8868915785218202694.Spec : Prop :=
  ∀ n, P8868915785218202694.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P10711640900839359182

`A182774(A347792(n+1))+1`
-/

namespace A182773.P10711640900839359182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182774 (A347792 (n + 1)).toNat + 1

end

end A182773.P10711640900839359182

namespace A182773

/-- `A182774(A347792(n+1))+1` -/
def P10711640900839359182.Spec : Prop :=
  ∀ n, P10711640900839359182.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P12121944237226282895

`A189532(2*(n+1))-(n+1)-∑[A081117(n)]`
-/

namespace A182773.P12121944237226282895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189532 (2 * (n + 1)) - (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182773.P12121944237226282895

namespace A182773

/-- `A189532(2*(n+1))-(n+1)-∑[A081117(n)]` -/
def P12121944237226282895.Spec : Prop :=
  ∀ n, P12121944237226282895.a n = A182773 (n + 1)

end A182773

/-! ## A182773.P14568199054965133349

`A189532(2*(n+1))-(n+1)-A038129(n+1)`
-/

namespace A182773.P14568199054965133349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189532 (2 * (n + 1)) - (n + 1 : ℤ) - A038129 (n + 1)

end

end A182773.P14568199054965133349

namespace A182773

/-- `A189532(2*(n+1))-(n+1)-A038129(n+1)` -/
def P14568199054965133349.Spec : Prop :=
  ∀ n, P14568199054965133349.a n = A182773 (n + 1)

end A182773

/-!
# A182774: Beatty sequence for 1+2^(-2/3).

The programs for A182774, the canonical program `A182774.P10080328796396555979` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182774 has offset 1).

The definition of A182774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182774.P10080328796396555979

`ceil((n+1)/root(4, 3)+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182774

/-- `ceil((n+1)/root(4, 3)+n)` -/
def P10080328796396555979.Spec : Prop :=
  ∀ n, P10080328796396555979.a n = A182774 (n + 1)

theorem P10080328796396555979.correct : P10080328796396555979.Spec := by
  intro n
  simp only [A182774, Nat.add_sub_cancel]

end A182774

/-! ## A182774.P6292164159981555209

`comp[A347792(n)+n]`
-/

namespace A182774.P6292164159981555209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182774.P6292164159981555209

namespace A182774

/-- `comp[A347792(n)+n]` -/
def P6292164159981555209.Spec : Prop :=
  ∀ n, (P6292164159981555209.a n : ℤ) = A182774 (n + 1)

end A182774

/-! ## A182774.P8612509361964981707

`A008619(∑[A081117(n)])+n`
-/

namespace A182774.P8612509361964981707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A182774.P8612509361964981707

namespace A182774

/-- `A008619(∑[A081117(n)])+n` -/
def P8612509361964981707.Spec : Prop :=
  ∀ n, P8612509361964981707.a n = A182774 (n + 1)

end A182774

/-! ## A182774.P17594876695856652872

`A004526(A038129(n+1))+n+1`
-/

namespace A182774.P17594876695856652872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038129 (n + 1)).toNat + (n + 1 : ℤ)

end

end A182774.P17594876695856652872

namespace A182774

/-- `A004526(A038129(n+1))+n+1` -/
def P17594876695856652872.Spec : Prop :=
  ∀ n, P17594876695856652872.a n = A182774 (n + 1)

end A182774

/-! ## A182774.P4996864712202620928

`A004526(∑[A081117(n)+2])`
-/

namespace A182774.P4996864712202620928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081117 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182774.P4996864712202620928

namespace A182774

/-- `A004526(∑[A081117(n)+2])` -/
def P4996864712202620928.Spec : Prop :=
  ∀ n, P4996864712202620928.a n = A182774 (n + 1)

end A182774

/-! ## A182774.P850860043669694677

`A065033(A038129(n+1)+2*n+1)`
-/

namespace A182774.P850860043669694677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A038129 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A182774.P850860043669694677

namespace A182774

/-- `A065033(A038129(n+1)+2*n+1)` -/
def P850860043669694677.Spec : Prop :=
  ∀ n, P850860043669694677.a n = A182774 (n + 1)

end A182774

/-! ## A182774.P14685909126933010520

`floor(∑[A172515(A233583(n+1))/2])`
-/

namespace A182774.P14685909126933010520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172515 (A233583 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A182774.P14685909126933010520

namespace A182774

/-- `floor(∑[A172515(A233583(n+1))/2])` -/
def P14685909126933010520.Spec : Prop :=
  ∀ n, P14685909126933010520.a n = A182774 (n + 1)

end A182774

/-! ## A182774.P659474345868065163

`A004526(∑[A172515(A233583(n+1))])`
-/

namespace A182774.P659474345868065163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172515 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182774.P659474345868065163

namespace A182774

/-- `A004526(∑[A172515(A233583(n+1))])` -/
def P659474345868065163.Spec : Prop :=
  ∀ n, P659474345868065163.a n = A182774 (n + 1)

end A182774

/-!
# A182775: Giza nonprimes.

The programs for A182775, there is no canonical definition to state claims against.
-/

/-! ## A182775.P3268726360224696725

`∩[A032350(n+1), A134810(n+1)]`
-/

namespace A182775.P3268726360224696725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182775.P3268726360224696725

/-! ## A182775.P12194145316217653754

`filter[A134810(n+1), A005171(#)]`
-/

namespace A182775.P12194145316217653754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A182775.P12194145316217653754

/-! ## A182775.P18337596042117085915

`∩[A018252(n+1), A134810(n+1)]`
-/

namespace A182775.P18337596042117085915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182775.P18337596042117085915

/-! ## A182775.P17769355527880737258

`∩[A134810(n+1), A141468(n+1)]`
-/

namespace A182775.P17769355527880737258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182775.P17769355527880737258

/-! ## A182775.P10783590526712420629

`∩[A134810(n+1), A174891(n+1)]`
-/

namespace A182775.P10783590526712420629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182775.P10783590526712420629

/-!
# A182776: Mountain nonprimes.

The programs for A182776, there is no canonical definition to state claims against.
-/

/-! ## A182776.P8792544847651198838

`record[A171435(A134941(n+1))]`
-/

namespace A182776.P8792544847651198838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A134941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182776.P8792544847651198838

/-! ## A182776.P5614444689882596747

`filter[A134941(n+1), A005171(#)]`
-/

namespace A182776.P5614444689882596747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A182776.P5614444689882596747

/-! ## A182776.P13935475448947112028

`filter[A208260(n+1), A178333(#)]`
-/

namespace A182776.P13935475448947112028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178333 (f1 j).toNat = 1) n)

end

end A182776.P13935475448947112028

/-! ## A182776.P6168343360070359875

`filter[A134941(n+1), A292438(#)]`
-/

namespace A182776.P6168343360070359875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A182776.P6168343360070359875

/-! ## A182776.P15709654772793766907

`∩[A018252(n+1), A134941(n+1)]`
-/

namespace A182776.P15709654772793766907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182776.P15709654772793766907

/-!
# A182777: Beatty sequence for 3-sqrt(3).

The programs for A182777, the canonical program `A182777.P6532292593986394333` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182777 has offset 1).

The definition of A182777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182777.P6532292593986394333

`floor((3-sqrt(3))*(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182777

/-- `floor((3-sqrt(3))*(n+1))` -/
def P6532292593986394333.Spec : Prop :=
  ∀ n, P6532292593986394333.a n = A182777 (n + 1)

theorem P6532292593986394333.correct : P6532292593986394333.Spec := by
  intro n
  simp only [A182777, Nat.add_sub_cancel]

end A182777

/-! ## A182777.P6277352657372282568

`A195120(n+1)+n`
-/

namespace A182777.P6277352657372282568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (n + 1) + (n : ℤ)

end

end A182777.P6277352657372282568

namespace A182777

/-- `A195120(n+1)+n` -/
def P6277352657372282568.Spec : Prop :=
  ∀ n, P6277352657372282568.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P8254449989411228325

`∑[3-Δ[A198081(n)]]`
-/

namespace A182777.P8254449989411228325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182777.P8254449989411228325

namespace A182777

/-- `∑[3-Δ[A198081(n)]]` -/
def P8254449989411228325.Spec : Prop :=
  ∀ n, P8254449989411228325.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P18301387069582361009

`∑[A275855(n+1)+1]`
-/

namespace A182777.P18301387069582361009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182777.P18301387069582361009

namespace A182777

/-- `∑[A275855(n+1)+1]` -/
def P18301387069582361009.Spec : Prop :=
  ∀ n, P18301387069582361009.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P15887570051930479806

`∑[3-A080757(n)]-1`
-/

namespace A182777.P15887570051930479806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A080757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182777.P15887570051930479806

namespace A182777

/-- `∑[3-A080757(n)]-1` -/
def P15887570051930479806.Spec : Prop :=
  ∀ n, P15887570051930479806.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P14446039631884874813

`∑[char[A003512(n+1)]+1]`
-/

namespace A182777.P14446039631884874813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182777.P14446039631884874813

namespace A182777

/-- `∑[char[A003512(n+1)]+1]` -/
def P14446039631884874813.Spec : Prop :=
  ∀ n, (P14446039631884874813.a n : ℤ) = A182777 (n + 1)

end A182777

/-! ## A182777.P4680704617086065442

`comp[comp[A003511(n+1)]+n]`
-/

namespace A182777.P4680704617086065442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A182777.P4680704617086065442

namespace A182777

/-- `comp[comp[A003511(n+1)]+n]` -/
def P4680704617086065442.Spec : Prop :=
  ∀ n, (P4680704617086065442.a n : ℤ) = A182777 (n + 1)

end A182777

/-! ## A182777.P3664647780991456091

`∑[2-A188068(n+1)]-1`
-/

namespace A182777.P3664647780991456091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A188068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A182777.P3664647780991456091

namespace A182777

/-- `∑[2-A188068(n+1)]-1` -/
def P3664647780991456091.Spec : Prop :=
  ∀ n, P3664647780991456091.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P15797065501382791019

`comp[A188069(n+1)-1+n]`
-/

namespace A182777.P15797065501382791019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A182777.P15797065501382791019

namespace A182777

/-- `comp[A188069(n+1)-1+n]` -/
def P15797065501382791019.Spec : Prop :=
  ∀ n, (P15797065501382791019.a n : ℤ) = A182777 (n + 1)

end A182777

/-! ## A182777.P5209405003521310084

`3*(n+1)-A198081(n+1)`
-/

namespace A182777.P5209405003521310084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A198081 (n + 1)

end

end A182777.P5209405003521310084

namespace A182777

/-- `3*(n+1)-A198081(n+1)` -/
def P5209405003521310084.Spec : Prop :=
  ∀ n, P5209405003521310084.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P817095111082909305

`3*n+2-A022838(n+1)`
-/

namespace A182777.P817095111082909305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - A022838 (n + 1)

end

end A182777.P817095111082909305

namespace A182777

/-- `3*n+2-A022838(n+1)` -/
def P817095111082909305.Spec : Prop :=
  ∀ n, P817095111082909305.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P11348229428792733671

`∑[char[A080590(n+1)-2]+1]`
-/

namespace A182777.P11348229428792733671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182777.P11348229428792733671

namespace A182777

/-- `∑[char[A080590(n+1)-2]+1]` -/
def P11348229428792733671.Spec : Prop :=
  ∀ n, (P11348229428792733671.a n : ℤ) = A182777 (n + 1)

end A182777

/-! ## A182777.P10274428807369685394

`abs(∑[A007538(n+1)-3]-n)`
-/

namespace A182777.P10274428807369685394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A182777.P10274428807369685394

namespace A182777

/-- `abs(∑[A007538(n+1)-3]-n)` -/
def P10274428807369685394.Spec : Prop :=
  ∀ n, P10274428807369685394.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P1573747233469868160

`(3*(n+1))%(floor(sqrt(∑[A016945(n)]))+1)`
-/

namespace A182777.P1573747233469868160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (n + 1) : ℤ) (Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A182777.P1573747233469868160

namespace A182777

/-- `(3*(n+1))%(floor(sqrt(∑[A016945(n)]))+1)` -/
def P1573747233469868160.Spec : Prop :=
  ∀ n, P1573747233469868160.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P9270935647728798817

`∑[A198094(Δ[A198081(n)])]`
-/

namespace A182777.P9270935647728798817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198094 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182777.P9270935647728798817

namespace A182777

/-- `∑[A198094(Δ[A198081(n)])]` -/
def P9270935647728798817.Spec : Prop :=
  ∀ n, P9270935647728798817.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P295038978202923609

`A016897(n)-A003512(n+1)`
-/

namespace A182777.P295038978202923609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A003512 (n + 1)

end

end A182777.P295038978202923609

namespace A182777

/-- `A016897(n)-A003512(n+1)` -/
def P295038978202923609.Spec : Prop :=
  ∀ n, P295038978202923609.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P3741479296851626697

`A004767(n)-A054088(n+1)`
-/

namespace A182777.P3741479296851626697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A054088 (n + 1)

end

end A182777.P3741479296851626697

namespace A182777

/-- `A004767(n)-A054088(n+1)` -/
def P3741479296851626697.Spec : Prop :=
  ∀ n, P3741479296851626697.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P14959947903384666854

`A016825(n)-A180122(n+1)`
-/

namespace A182777.P14959947903384666854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A180122 (n + 1)

end

end A182777.P14959947903384666854

namespace A182777

/-- `A016825(n)-A180122(n+1)` -/
def P14959947903384666854.Spec : Prop :=
  ∀ n, P14959947903384666854.a n = A182777 (n + 1)

end A182777

/-! ## A182777.P15050720928639881658

`A016885(n)-A180123(n+1)`
-/

namespace A182777.P15050720928639881658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A180123 (n + 1)

end

end A182777.P15050720928639881658

namespace A182777

/-- `A016885(n)-A180123(n+1)` -/
def P15050720928639881658.Spec : Prop :=
  ∀ n, P15050720928639881658.a n = A182777 (n + 1)

end A182777

/-!
# A182778: Beatty sequence for 3 + sqrt(3).

The programs for A182778, the canonical program `A182778.P1616150781796186047` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182778 has offset 1).

The definition of A182778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182778.P9997505990443228318

`floor((3+sqrt(3))*(n+1))`
-/

namespace A182778.P9997505990443228318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 + Real.sqrt (3 : ℝ)) * (n + 1 : ℝ)⌋

end

end A182778.P9997505990443228318

namespace A182778

/-- `floor((3+sqrt(3))*(n+1))` -/
def P9997505990443228318.Spec : Prop :=
  ∀ n, P9997505990443228318.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P1616150781796186047

`3*(n+1)+A022838(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A182778

/-- `3*(n+1)+A022838(n+1)` -/
def P1616150781796186047.Spec : Prop :=
  ∀ n, P1616150781796186047.a n = A182778 (n + 1)

theorem P1616150781796186047.correct : P1616150781796186047.Spec := by
  intro n
  simp only [A182778, Nat.add_sub_cancel]

end A182778

/-! ## A182778.P7820820279481441175

`a(n-1)+A022838(n+1)-A022838(n)+3` with `a(0)=4`
-/

namespace A182778.P7820820279481441175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + A022838 (n + 1) - A022838 n + 3

end

end A182778.P7820820279481441175

namespace A182778

/-- `a(n-1)+A022838(n+1)-A022838(n)+3` -/
def P7820820279481441175.Spec : Prop :=
  ∀ n, P7820820279481441175.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P15577375126345955286

`∑[A080757(n)+3]`
-/

namespace A182778.P15577375126345955286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182778.P15577375126345955286

namespace A182778

/-- `∑[A080757(n)+3]` -/
def P15577375126345955286.Spec : Prop :=
  ∀ n, P15577375126345955286.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P13460516266987766076

`∑[A276865(n+1)+1]`
-/

namespace A182778.P13460516266987766076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182778.P13460516266987766076

namespace A182778

/-- `∑[A276865(n+1)+1]` -/
def P13460516266987766076.Spec : Prop :=
  ∀ n, P13460516266987766076.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P9186500918261173792

`∑[A007538(n+1)+2]`
-/

namespace A182778.P9186500918261173792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182778.P9186500918261173792

namespace A182778

/-- `∑[A007538(n+1)+2]` -/
def P9186500918261173792.Spec : Prop :=
  ∀ n, P9186500918261173792.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P15581503501392230086

`∑[A188068(n+1)+4]`
-/

namespace A182778.P15581503501392230086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182778.P15581503501392230086

namespace A182778

/-- `∑[A188068(n+1)+4]` -/
def P15581503501392230086.Spec : Prop :=
  ∀ n, P15581503501392230086.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P17977222295083857075

`A003512(n+1)+1+n`
-/

namespace A182778.P17977222295083857075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1) + 1 + (n : ℤ)

end

end A182778.P17977222295083857075

namespace A182778

/-- `A003512(n+1)+1+n` -/
def P17977222295083857075.Spec : Prop :=
  ∀ n, P17977222295083857075.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P15037088982592894022

`A180123(n+1)+2+n`
-/

namespace A182778.P15037088982592894022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) + 2 + (n : ℤ)

end

end A182778.P15037088982592894022

namespace A182778

/-- `A180123(n+1)+2+n` -/
def P15037088982592894022.Spec : Prop :=
  ∀ n, P15037088982592894022.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P9156476551321868388

`A190334(n+1)-(n+1)`
-/

namespace A182778.P9156476551321868388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190334 (n + 1) - (n + 1 : ℤ)

end

end A182778.P9156476551321868388

namespace A182778

/-- `A190334(n+1)-(n+1)` -/
def P9156476551321868388.Spec : Prop :=
  ∀ n, P9156476551321868388.a n = A182778 (n + 1)

theorem P9156476551321868388.correct : P9156476551321868388.Spec := by
  intro n
  simp only [A182778, Nat.add_sub_cancel, A182778.P9156476551321868388.a, A182778.P1616150781796186047.a, A022838, A022838.P2955185450675945792.a, A190334, A190334.P2350078874624788239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182778

/-! ## A182778.P8159674818836696528

`A054088(n+1)+2*(n+1)`
-/

namespace A182778.P8159674818836696528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1) + (2 * (n + 1) : ℤ)

end

end A182778.P8159674818836696528

namespace A182778

/-- `A054088(n+1)+2*(n+1)` -/
def P8159674818836696528.Spec : Prop :=
  ∀ n, P8159674818836696528.a n = A182778 (n + 1)

theorem P8159674818836696528.correct : P8159674818836696528.Spec := by
  intro n
  simp only [A182778, Nat.add_sub_cancel, A182778.P8159674818836696528.a, A182778.P1616150781796186047.a, A022838, A022838.P2955185450675945792.a, A054088, A054088.P12267112223667201366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182778

/-! ## A182778.P9711045000759799977

`A180122(n+1)+2*n+3`
-/

namespace A182778.P9711045000759799977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + (2 * n + 3 : ℤ)

end

end A182778.P9711045000759799977

namespace A182778

/-- `A180122(n+1)+2*n+3` -/
def P9711045000759799977.Spec : Prop :=
  ∀ n, P9711045000759799977.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P8435701730644781183

`A016969(n)-A182777(n+1)`
-/

namespace A182778.P8435701730644781183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A182777 (n + 1)

end

end A182778.P8435701730644781183

namespace A182778

/-- `A016969(n)-A182777(n+1)` -/
def P8435701730644781183.Spec : Prop :=
  ∀ n, P8435701730644781183.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P15115426521548153685

`A005843(n+1)+A198081(n+1)+n`
-/

namespace A182778.P15115426521548153685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A198081 (n + 1) + (n : ℤ))

end

end A182778.P15115426521548153685

namespace A182778

/-- `A005843(n+1)+A198081(n+1)+n` -/
def P15115426521548153685.Spec : Prop :=
  ∀ n, P15115426521548153685.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P4566951179156876559

`A188069(n+2)+n`
-/

namespace A182778.P4566951179156876559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 2) + (n : ℤ)

end

end A182778.P4566951179156876559

namespace A182778

/-- `A188069(n+2)+n` -/
def P4566951179156876559.Spec : Prop :=
  ∀ n, P4566951179156876559.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P14491623084546937202

`A080590(n+2)-1+n`
-/

namespace A182778.P14491623084546937202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (n + 2) - 1 + (n : ℤ)

end

end A182778.P14491623084546937202

namespace A182778

/-- `A080590(n+2)-1+n` -/
def P14491623084546937202.Spec : Prop :=
  ∀ n, P14491623084546937202.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P9298101045338481148

`A022838(n+1)+A008585(n+1)`
-/

namespace A182778.P9298101045338481148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1) + A008585 (n + 1)

end

end A182778.P9298101045338481148

namespace A182778

/-- `A022838(n+1)+A008585(n+1)` -/
def P9298101045338481148.Spec : Prop :=
  ∀ n, P9298101045338481148.a n = A182778 (n + 1)

theorem P9298101045338481148.correct : P9298101045338481148.Spec := by
  intro n
  simp only [A182778, Nat.add_sub_cancel, A182778.P9298101045338481148.a, A182778.P1616150781796186047.a, A008585, A008585.P13732812384316341435.a, A022838, A022838.P2955185450675945792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A182778

/-! ## A182778.P12706224874563446805

`A054406(2*(n+1))`
-/

namespace A182778.P12706224874563446805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * (n + 1))

end

end A182778.P12706224874563446805

namespace A182778

/-- `A054406(2*(n+1))` -/
def P12706224874563446805.Spec : Prop :=
  ∀ n, P12706224874563446805.a n = A182778 (n + 1)

end A182778

/-! ## A182778.P543589599065627125

`A188084(Δ[n²])+n+2`
-/

namespace A182778.P543589599065627125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188084 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 2 : ℤ)

end

end A182778.P543589599065627125

namespace A182778

/-- `A188084(Δ[n²])+n+2` -/
def P543589599065627125.Spec : Prop :=
  ∀ n, P543589599065627125.a n = A182778 (n + 1)

end A182778

/-!
# A182779: Irregular triangle T(n,k) = A049019(n,k) * A118851(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A182779, there is no canonical definition to state claims against.
-/

/-! ## A182779.P14636267666699520298

`A178802(n)/A107106(n)`
-/

namespace A182779.P14636267666699520298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A107106 n : ℚ)

end

end A182779.P14636267666699520298

/-! ## A182779.P8694682035305222552

`∏{e}[A036035(n), #]*A049019(A028310(n))`
-/

namespace A182779.P8694682035305222552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A049019 (A028310 n).toNat

end

end A182779.P8694682035305222552

/-! ## A182779.P15331202482884513660

`∏{e}[A036035(n), #]*A049019(A233583(n+1))`
-/

namespace A182779.P15331202482884513660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A049019 (A233583 (n + 1)).toNat

end

end A182779.P15331202482884513660

/-!
# A182780: Twice A024537.

The programs for A182780, the canonical program `A182780.P10178326781014421717` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182780 has offset 0).

The definition of A182780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182780.P10178326781014421717

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182780

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P10178326781014421717.Spec : Prop :=
  ∀ n, P10178326781014421717.a n = A182780 n

theorem P10178326781014421717.correct : P10178326781014421717.Spec := by
  intro n
  simp only [A182780]

end A182780

/-! ## A182780.P2403404945966780072

`∑[ogf((-2+2x+2x^2)/(-1+2x+x^2))]`
-/

namespace A182780.P2403404945966780072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182780.P2403404945966780072

namespace A182780

/-- `∑[ogf((-2+2x+2x^2)/(-1+2x+x^2))]` -/
def P2403404945966780072.Spec : Prop :=
  ∀ n, P2403404945966780072.a n = A182780 n

end A182780

/-! ## A182780.P17008542171837036900

`ogf((2-2x-2x^2)/(1-3x+x^2+x^3))`
-/

namespace A182780.P17008542171837036900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -3, 1, 1] n

end

end A182780.P17008542171837036900

namespace A182780

/-- `ogf((2-2x-2x^2)/(1-3x+x^2+x^3))` -/
def P17008542171837036900.Spec : Prop :=
  ∀ n, P17008542171837036900.a n = A182780 n

end A182780

/-! ## A182780.P7382949540965830436

`a(n-2)+2*(a(n-1)-1)` with `a(0)=2, a(1)=4`
-/

namespace A182780.P7382949540965830436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 2 * (a (n - 1) - 1)

end

end A182780.P7382949540965830436

namespace A182780

/-- `a(n-2)+2*(a(n-1)-1)` -/
def P7382949540965830436.Spec : Prop :=
  ∀ n, P7382949540965830436.a n = A182780 n

end A182780

/-! ## A182780.P15406581594871906269

`a(n-2)-2*(1-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A182780.P15406581594871906269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) - 2 * (1 - a (n - 1))

end

end A182780.P15406581594871906269

namespace A182780

/-- `a(n-2)-2*(1-a(n-1))` -/
def P15406581594871906269.Spec : Prop :=
  ∀ n, P15406581594871906269.a n = A182780 n

end A182780

/-! ## A182780.P14499013736426867966

`a(n-1)-2+a(n-1)+a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A182780.P14499013736426867966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - 2 + (a (n - 1) + a (n - 2))

end

end A182780.P14499013736426867966

namespace A182780

/-- `a(n-1)-2+a(n-1)+a(n-2)` -/
def P14499013736426867966.Spec : Prop :=
  ∀ n, P14499013736426867966.a n = A182780 n

end A182780

/-! ## A182780.P16269899203493302486

`a(n-1)-(2-a(n-1)-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A182780.P16269899203493302486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 2))

end

end A182780.P16269899203493302486

namespace A182780

/-- `a(n-1)-(2-a(n-1)-a(n-2))` -/
def P16269899203493302486.Spec : Prop :=
  ∀ n, P16269899203493302486.a n = A182780 n

end A182780

/-! ## A182780.P8884884052014619975

`A078057(n)+1`
-/

namespace A182780.P8884884052014619975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + 1

end

end A182780.P8884884052014619975

namespace A182780

/-- `A078057(n)+1` -/
def P8884884052014619975.Spec : Prop :=
  ∀ n, P8884884052014619975.a n = A182780 n

end A182780

/-! ## A182780.P14083858028159579959

`2*A024537(n)`
-/

namespace A182780.P14083858028159579959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024537 n

end

end A182780.P14083858028159579959

namespace A182780

/-- `2*A024537(n)` -/
def P14083858028159579959.Spec : Prop :=
  ∀ n, P14083858028159579959.a n = A182780 n

end A182780

/-! ## A182780.P10500876775064953213

`∑[A052542(n)]+1`
-/

namespace A182780.P10500876775064953213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A182780.P10500876775064953213

namespace A182780

/-- `∑[A052542(n)]+1` -/
def P10500876775064953213.Spec : Prop :=
  ∀ n, P10500876775064953213.a n = A182780 n

end A182780

/-! ## A182780.P11594431431283405016

`∑[2*A215928(n)]`
-/

namespace A182780.P11594431431283405016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182780.P11594431431283405016

namespace A182780

/-- `∑[2*A215928(n)]` -/
def P11594431431283405016.Spec : Prop :=
  ∀ n, P11594431431283405016.a n = A182780 n

end A182780

/-! ## A182780.P7403480960939209015

`2*Δ[A100131(n)]`
-/

namespace A182780.P7403480960939209015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A182780.P7403480960939209015

namespace A182780

/-- `2*Δ[A100131(n)]` -/
def P7403480960939209015.Spec : Prop :=
  ∀ n, P7403480960939209015.a n = A182780 n

end A182780

/-! ## A182780.P10590673547450410396

`A001333(n+1)+1`
-/

namespace A182780.P10590673547450410396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + 1

end

end A182780.P10590673547450410396

namespace A182780

/-- `A001333(n+1)+1` -/
def P10590673547450410396.Spec : Prop :=
  ∀ n, P10590673547450410396.a n = A182780 n

end A182780

/-! ## A182780.P12031160914615089748

`A293004(n+1)+2`
-/

namespace A182780.P12031160914615089748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1) + 2

end

end A182780.P12031160914615089748

namespace A182780

/-- `A293004(n+1)+2` -/
def P12031160914615089748.Spec : Prop :=
  ∀ n, P12031160914615089748.a n = A182780 n

end A182780

/-! ## A182780.P7885753598142541661

`2*A171842(n+1)`
-/

namespace A182780.P7885753598142541661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171842 (n + 1)

end

end A182780.P7885753598142541661

namespace A182780

/-- `2*A171842(n+1)` -/
def P7885753598142541661.Spec : Prop :=
  ∀ n, P7885753598142541661.a n = A182780 n

end A182780

/-! ## A182780.P3672185228424913307

`or(1, A113224(n))+1`
-/

namespace A182780.P3672185228424913307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A113224 n) + 1

end

end A182780.P3672185228424913307

namespace A182780

/-- `or(1, A113224(n))+1` -/
def P3672185228424913307.Spec : Prop :=
  ∀ n, P3672185228424913307.a n = A182780 n

end A182780

/-! ## A182780.P3088046754898664671

`A152113(Δ[n²])+1`
-/

namespace A182780.P3088046754898664671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A182780.P3088046754898664671

namespace A182780

/-- `A152113(Δ[n²])+1` -/
def P3088046754898664671.Spec : Prop :=
  ∀ n, P3088046754898664671.a n = A182780 n

end A182780

/-! ## A182780.P14786321234469013157

`A155046(Δ[n²])+1`
-/

namespace A182780.P14786321234469013157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A182780.P14786321234469013157

namespace A182780

/-- `A155046(Δ[n²])+1` -/
def P14786321234469013157.Spec : Prop :=
  ∀ n, P14786321234469013157.a n = A182780 n

end A182780

/-! ## A182780.P11750851810585745190

`abs(A123335(n+1))+1`
-/

namespace A182780.P11750851810585745190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 (n + 1)| + 1

end

end A182780.P11750851810585745190

namespace A182780

/-- `abs(A123335(n+1))+1` -/
def P11750851810585745190.Spec : Prop :=
  ∀ n, P11750851810585745190.a n = A182780 n

end A182780

/-! ## A182780.P5707212247659239912

`2*ceil(A100828(n)/2)`
-/

namespace A182780.P5707212247659239912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A100828 n : ℚ) / 2⌉

end

end A182780.P5707212247659239912

namespace A182780

/-- `2*ceil(A100828(n)/2)` -/
def P5707212247659239912.Spec : Prop :=
  ∀ n, P5707212247659239912.a n = A182780 n

end A182780

/-!
# A182783: Numbers k such that 2*k^4 - 1 is a prime.

The programs for A182783, there is no canonical definition to state claims against.
-/

/-! ## A182783.P18261879577664474933

`sqrt(sqrt((A182784(n+1)+1)/2))`
-/

namespace A182783.P18261879577664474933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt ((A182784 (n + 1) + 1 : ℚ) / 2 : ℝ))

end

end A182783.P18261879577664474933

/-! ## A182783.P9572810705975658294

`eq[2, A359438(n²)]`
-/

namespace A182783.P9572810705975658294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359438 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182783.P9572810705975658294

/-! ## A182783.P1367641166682105205

`eq[2, A230362(n²+2)]`
-/

namespace A182783.P1367641166682105205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A182783.P1367641166682105205

/-! ## A182783.P10157116868505048933

`lt[A230362(A000290(n)+2)², 9]`
-/

namespace A182783.P10157116868505048933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230362 (A000290 n + 2).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182783.P10157116868505048933

/-! ## A182783.P688377664722054693

`lt[A054024(A230362(n²+2)+1), 2]`
-/

namespace A182783.P688377664722054693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (A230362 (n ^ 2 + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A182783.P688377664722054693

/-!
# A182784: Primes of the form 2*n^4-1.

The programs for A182784, there is no canonical definition to state claims against.
-/

/-! ## A182784.P3192632702111022534

`2*A182783(n+1)^4-1`
-/

namespace A182784.P3192632702111022534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182783 (n + 1) ^ 4 - 1

end

end A182784.P3192632702111022534

/-! ## A182784.P17183275178024820332

`A182783(n+1)²²+A182783(n+1)²²-dr(A033999(n))`
-/

namespace A182784.P17183275178024820332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182783 (n + 1) ^ 2) ^ 2 + ((A182783 (n + 1) ^ 2) ^ 2 - (SequenceMachineLib.digitalRoot (A033999 n) : ℤ))

end

end A182784.P17183275178024820332

/-! ## A182784.P5590990138191059226

`A182783(n+1)²²-(dr(A106400(n))-A182783(n+1)²²)`
-/

namespace A182784.P5590990138191059226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182783 (n + 1) ^ 2) ^ 2 - ((SequenceMachineLib.digitalRoot (A106400 n) : ℤ) - (A182783 (n + 1) ^ 2) ^ 2)

end

end A182784.P5590990138191059226

/-! ## A182784.P10292857535824784588

`or(-1, A000045(n))+2*A182783(n+1)²²`
-/

namespace A182784.P10292857535824784588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000045 n) + 2 * (A182783 (n + 1) ^ 2) ^ 2

end

end A182784.P10292857535824784588

/-! ## A182784.P6245827599181272816

`A182783(n+1)²²+A182783(n+1)²²-A001222(A002148(n))`
-/

namespace A182784.P6245827599181272816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182783 (n + 1) ^ 2) ^ 2 + ((A182783 (n + 1) ^ 2) ^ 2 - A001222 (A002148 n).toNat)

end

end A182784.P6245827599181272816

/-! ## A182784.P14664756678143104593

`A057428(A046541(n+1))+2*A182783(n+1)²²`
-/

namespace A182784.P14664756678143104593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A046541 (n + 1)).toNat + 2 * (A182783 (n + 1) ^ 2) ^ 2

end

end A182784.P14664756678143104593

/-!
# A182785: Primes p such that 2*p^4-1 is also prime.

The programs for A182785, there is no canonical definition to state claims against.
-/

/-! ## A182785.P3931924717110043020

`p?[A182783(n+1)]`
-/

namespace A182785.P3931924717110043020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A182785.P3931924717110043020

/-! ## A182785.P8524641360998889404

`filter[A182783(n+1), A010051(#)]`
-/

namespace A182785.P8524641360998889404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A182785.P8524641360998889404

/-! ## A182785.P11907482229521333862

`∩[A182783(n+1), A042990(n)]`
-/

namespace A182785.P11907482229521333862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P11907482229521333862

/-! ## A182785.P1247633027959586981

`∩[A000040(n+1), A182783(n+1)]`
-/

namespace A182785.P1247633027959586981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P1247633027959586981

/-! ## A182785.P8197376598042892220

`∩[A008578(n+1), A182783(n+1)]`
-/

namespace A182785.P8197376598042892220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P8197376598042892220

/-! ## A182785.P9362854852537002119

`∩[A045344(n+1), A182783(n+1)]`
-/

namespace A182785.P9362854852537002119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P9362854852537002119

/-! ## A182785.P6527510842755277020

`∩[A045346(n+1), A182783(n+1)]`
-/

namespace A182785.P6527510842755277020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P6527510842755277020

/-! ## A182785.P16875105074503994127

`∩[A045353(n+1), A182783(n+1)]`
-/

namespace A182785.P16875105074503994127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P16875105074503994127

/-! ## A182785.P6501347691851655928

`∩[A046022(n+1), A182783(n+1)]`
-/

namespace A182785.P6501347691851655928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P6501347691851655928

/-! ## A182785.P13251850048540146476

`∩[A062972(n+1), A182783(n+1)]`
-/

namespace A182785.P13251850048540146476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P13251850048540146476

/-! ## A182785.P11765504540308704796

`∩[A106118(n+1), A182783(n+1)]`
-/

namespace A182785.P11765504540308704796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P11765504540308704796

/-! ## A182785.P2337040872512204528

`∩[A158611(n+1), A182783(n+1)]`
-/

namespace A182785.P2337040872512204528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P2337040872512204528

/-! ## A182785.P546624450460173980

`∩[A165666(n+1), A182783(n+1)]`
-/

namespace A182785.P546624450460173980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P546624450460173980

/-! ## A182785.P1587294578319725261

`∩[A175787(n+1), A182783(n+1)]`
-/

namespace A182785.P1587294578319725261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P1587294578319725261

/-! ## A182785.P4119332735474100897

`∩[A182783(n+1), A182986(n+1)]`
-/

namespace A182785.P4119332735474100897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P4119332735474100897

/-! ## A182785.P1607796468827960865

`∩[A182783(n+1), A261123(n+1)]`
-/

namespace A182785.P1607796468827960865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P1607796468827960865

/-! ## A182785.P9700023706710054361

`∩[A335402(n+1), A182783(n+1)]`
-/

namespace A182785.P9700023706710054361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A182785.P9700023706710054361

/-! ## A182785.P12793632442060625452

`filter[A182783(n+1), A080339(#)]`
-/

namespace A182785.P12793632442060625452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A182785.P12793632442060625452

/-! ## A182785.P15626319486801881389

`record[A014963(A182783(A039960(n)))]`
-/

namespace A182785.P15626319486801881389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A182783 (A039960 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182785.P15626319486801881389

/-! ## A182785.P12653680693964048222

`record[A014963(A182783(A133310(n)))]`
-/

namespace A182785.P12653680693964048222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A182783 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A182785.P12653680693964048222

/-!
# A182788: Number of n-colorings of the 3 X 3 X 3 triangular grid.

The programs for A182788, the canonical program `A182788.P18160748725110096773` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182788 has offset 0).

The definition of A182788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182788.P18160748725110096773

`n*(n-1)*(n-2)^4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182788

/-- `n*(n-1)*(n-2)^4` -/
def P18160748725110096773.Spec : Prop :=
  ∀ n, P18160748725110096773.a n = A182788 n

theorem P18160748725110096773.correct : P18160748725110096773.Spec := by
  intro n
  simp only [A182788]

end A182788

/-! ## A182788.P14101694791453019734

`lcm(n-1, n*(2-n)²²)`
-/

namespace A182788.P14101694791453019734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ((n : ℤ) * ((2 - (n : ℤ)) ^ 2) ^ 2)

end

end A182788.P14101694791453019734

namespace A182788

/-- `lcm(n-1, n*(2-n)²²)` -/
def P14101694791453019734.Spec : Prop :=
  ∀ n, (P14101694791453019734.a n : ℤ) = A182788 n

end A182788

/-! ## A182788.P4019717404878241754

`A052762(n)+lcm(A001094(n), A007531(n))`
-/

namespace A182788.P4019717404878241754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n + (Int.lcm (A001094 n) (A007531 n) : ℤ)

end

end A182788.P4019717404878241754

namespace A182788

/-- `A052762(n)+lcm(A001094(n), A007531(n))` -/
def P4019717404878241754.Spec : Prop :=
  ∀ n, P4019717404878241754.a n = A182788 n

end A182788

/-! ## A182788.P18325279731767790129

`gcd(A182789(n), A182792(n))`
-/

namespace A182788.P18325279731767790129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182789 n) (A182792 n)

end

end A182788.P18325279731767790129

namespace A182788

/-- `gcd(A182789(n), A182792(n))` -/
def P18325279731767790129.Spec : Prop :=
  ∀ n, (P18325279731767790129.a n : ℤ) = A182788 n

end A182788

/-! ## A182788.P2230557401887059518

`A182797(floor(acot(n))+∑[n+2]-1)`
-/

namespace A182788.P2230557401887059518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A182788.P2230557401887059518

namespace A182788

/-- `A182797(floor(acot(n))+∑[n+2]-1)` -/
def P2230557401887059518.Spec : Prop :=
  ∀ n, P2230557401887059518.a n = A182788 n

end A182788

/-!
# A182789: Number of n-colorings of the 4 X 4 X 4 triangular grid.

The programs for A182789, the canonical program `A182789.P17242961515617473282` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182789 has offset 0).

The definition of A182789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A182789.P17242961515617473282

`n*(n-1)*(n-2)^4*(n*(n*((n-9)*n+31)-49)+31)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A182789

/-- `n*(n-1)*(n-2)^4*(n*(n*((n-9)*n+31)-49)+31)` -/
def P17242961515617473282.Spec : Prop :=
  ∀ n, P17242961515617473282.a n = A182789 n

theorem P17242961515617473282.correct : P17242961515617473282.Spec := by
  intro n
  simp only [A182789]

end A182789

/-! ## A182789.P8505641221119847695

`lcm(A182788(n), A212163(A034856(n+1)))`
-/

namespace A182789.P8505641221119847695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A182788 n) (A212163 (A034856 (n + 1)).toNat)

end

end A182789.P8505641221119847695

namespace A182789

/-- `lcm(A182788(n), A212163(A034856(n+1)))` -/
def P8505641221119847695.Spec : Prop :=
  ∀ n, (P8505641221119847695.a n : ℤ) = A182789 n

end A182789

/-! ## A182789.P6285630450133843501

`lcm(n, A182797(A141214(n)))`
-/

namespace A182789.P6285630450133843501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A182797 (A141214 n).toNat)

end

end A182789.P6285630450133843501

namespace A182789

/-- `lcm(n, A182797(A141214(n)))` -/
def P6285630450133843501.Spec : Prop :=
  ∀ n, (P6285630450133843501.a n : ℤ) = A182789 n

end A182789

/-! ## A182789.P6421889441230850787

`A182797(A002808(∑[n+1]))`
-/

namespace A182789.P6421889441230850787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (A002808 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A182789.P6421889441230850787

namespace A182789

/-- `A182797(A002808(∑[n+1]))` -/
def P6421889441230850787.Spec : Prop :=
  ∀ n, P6421889441230850787.a n = A182789 n

end A182789

/-!
# A182790: Number of n-colorings of the 5 X 5 X 5 triangular grid.

The programs for A182790, there is no canonical definition to state claims against.
-/

/-! ## A182790.P18302151980005713054

`A182797(floor(2/acot(n))+∑[n+2]+4)`
-/

namespace A182790.P18302151980005713054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)).toNat

end

end A182790.P18302151980005713054

/-! ## A182790.P6332183039163826039

`A182797(eq[3, A008284(n+1)])`
-/

namespace A182790.P6332183039163826039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182790.P6332183039163826039

/-! ## A182790.P8789814191321978785

`A182797(A207038(2*(n+1))+6)`
-/

namespace A182790.P8789814191321978785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (A207038 (2 * (n + 1)) + 6).toNat

end

end A182790.P8789814191321978785

/-!
# A182791: Number of n-colorings of the 6 X 6 X 6 triangular grid.

The programs for A182791, there is no canonical definition to state claims against.
-/

/-! ## A182791.P8548471608921720871

`A182797(eq[3, A212551(n)])`
-/

namespace A182791.P8548471608921720871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A182791.P8548471608921720871

/-! ## A182791.P17116946168527319855

`A182797(∑[A034448(n+4)])`
-/

namespace A182791.P17116946168527319855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A182791.P17116946168527319855

/-!
# A182792: Number of n-colorings of the 7 X 7 X 7 triangular grid.

The programs for A182792, there is no canonical definition to state claims against.
-/

/-! ## A182792.P2292653747841572329

`A182797(A059009(n!))`
-/

namespace A182792.P2292653747841572329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (A059009 (Nat.factorial n)).toNat

end

end A182792.P2292653747841572329

/-!
# A182793: Number of n-colorings of the 8 X 8 X 8 triangular grid.

The programs for A182793, there is no canonical definition to state claims against.
-/

/-! ## A182793.P2814971300216403661

`A000749(n)*A153467(A088791(n))`
-/

namespace A182793.P2814971300216403661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n * A153467 (A088791 n).toNat

end

end A182793.P2814971300216403661

/-!
# A182794: Number of n-colorings of the 9 X 9 X 9 triangular grid.

The programs for A182794, there is no canonical definition to state claims against.
-/

/-! ## A182794.P14211106587340247578

`A182798(2*n+1)%A002110(A001710(n))`
-/

namespace A182794.P14211106587340247578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182798 (2 * n + 1)) (A002110 (A001710 n).toNat)

end

end A182794.P14211106587340247578

/-!
# A182797: Square array A(n,k), n>=1, k>=1, read by antidiagonals: A(n,k) is the number of n-colorings of the k X k X k triangular grid.

The programs for A182797, there is no canonical definition to state claims against.
-/

/-! ## A182797.P3121701855729558695

`A049267(A212163(n+1)+8)`
-/

namespace A182797.P3121701855729558695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049267 (A212163 (n + 1) + 8).toNat

end

end A182797.P3121701855729558695

/-! ## A182797.P15378329616012606392

`A049267(A212195(n+1)+8)`
-/

namespace A182797.P15378329616012606392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049267 (A212195 (n + 1) + 8).toNat

end

end A182797.P15378329616012606392

/-! ## A182797.P9676866139928770889

`A212163(n+1)/A006466(A022091(n))`
-/

namespace A182797.P9676866139928770889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212163 (n + 1) : ℚ) / (A006466 (A022091 n).toNat : ℚ)

end

end A182797.P9676866139928770889

/-! ## A182797.P6413574095167361912

`A212195(n+1)/A000002(A000079(n))`
-/

namespace A182797.P6413574095167361912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212195 (n + 1) : ℚ) / (A000002 (A000079 n).toNat : ℚ)

end

end A182797.P6413574095167361912

/-! ## A182797.P13334206385508816843

`A212163(A043318(n+1))`
-/

namespace A182797.P13334206385508816843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212163 (A043318 (n + 1)).toNat

end

end A182797.P13334206385508816843

/-!
# A182798: Number of 4-colorings of the n X n X n triangular grid.

The programs for A182798, there is no canonical definition to state claims against.
-/

/-! ## A182798.P15359634700193409947

`4*A153467(n+1)`
-/

namespace A182798.P15359634700193409947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153467 (n + 1)

end

end A182798.P15359634700193409947

/-! ## A182798.P2277334945405771488

`A182797(A141214(n)+7)`
-/

namespace A182798.P2277334945405771488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (A141214 n + 7).toNat

end

end A182798.P2277334945405771488

/-! ## A182798.P17680743757003929951

`A182797(A052905(n)+9)`
-/

namespace A182798.P17680743757003929951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182797 (A052905 n + 9).toNat

end

end A182798.P17680743757003929951

/-!
# A182799: Positions of primes in A167171.

The programs for A182799, the canonical program `A182799.P423244064951066750` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A182799 has offset 1).

The definition of A182799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A182799.P423244064951066750

`eq[1, A001222(A167171(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A182799

/-- `eq[1, A001222(A167171(n+1))]+1` -/
def P423244064951066750.Spec : Prop :=
  ∀ n, (P423244064951066750.a n : ℤ) = A182799 (n + 1)

theorem P423244064951066750.correct : P423244064951066750.Spec := by
  intro n
  simp only [A182799, Nat.add_sub_cancel]

end A182799

/-! ## A182799.P16456919314023834354

`A072613(p?[xor(1, n)])+1+n`
-/

namespace A182799.P16456919314023834354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1 + (n : ℤ)

end

end A182799.P16456919314023834354

namespace A182799

/-- `A072613(p?[xor(1, n)])+1+n` -/
def P16456919314023834354.Spec : Prop :=
  ∀ n, P16456919314023834354.a n = A182799 (n + 1)

end A182799

/-! ## A182799.P17974120590035970888

`A072613(A000040(n+1))+1+n`
-/

namespace A182799.P17974120590035970888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A000040 (n + 1)).toNat + 1 + (n : ℤ)

end

end A182799.P17974120590035970888

namespace A182799

/-- `A072613(A000040(n+1))+1+n` -/
def P17974120590035970888.Spec : Prop :=
  ∀ n, P17974120590035970888.a n = A182799 (n + 1)

end A182799

/-! ## A182799.P17109627288734498097

`A072613(A006093(n+1))+1+n`
-/

namespace A182799.P17109627288734498097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A006093 (n + 1)).toNat + 1 + (n : ℤ)

end

end A182799.P17109627288734498097

namespace A182799

/-- `A072613(A006093(n+1))+1+n` -/
def P17109627288734498097.Spec : Prop :=
  ∀ n, P17109627288734498097.a n = A182799 (n + 1)

end A182799

/-! ## A182799.P2674204991112004016

`A072613(sqrt(A001248(n+1)))+1+n`
-/

namespace A182799.P2674204991112004016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 1 + (n : ℤ)

end

end A182799.P2674204991112004016

namespace A182799

/-- `A072613(sqrt(A001248(n+1)))+1+n` -/
def P2674204991112004016.Spec : Prop :=
  ∀ n, P2674204991112004016.a n = A182799 (n + 1)

end A182799

/-! ## A182799.P4489732509637796649

`A072613(record[A000010(n+1)])+1+n`
-/

namespace A182799.P4489732509637796649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ)

end

end A182799.P4489732509637796649

namespace A182799

/-- `A072613(record[A000010(n+1)])+1+n` -/
def P4489732509637796649.Spec : Prop :=
  ∀ n, P4489732509637796649.a n = A182799 (n + 1)

end A182799

/-! ## A182799.P12594060777736569573

`A072613(record[A006530(n+2)])+1+n`
-/

namespace A182799.P12594060777736569573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ)

end

end A182799.P12594060777736569573

namespace A182799

/-- `A072613(record[A006530(n+2)])+1+n` -/
def P12594060777736569573.Spec : Prop :=
  ∀ n, P12594060777736569573.a n = A182799 (n + 1)

end A182799

/-! ## A182799.P1629370519856418578

`A072613(record[A014963(n+2)])+1+n`
-/

namespace A182799.P1629370519856418578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1 + (n : ℤ)

end

end A182799.P1629370519856418578

namespace A182799

/-- `A072613(record[A014963(n+2)])+1+n` -/
def P1629370519856418578.Spec : Prop :=
  ∀ n, P1629370519856418578.a n = A182799 (n + 1)

end A182799

