function printTrainBatch(data, params)
  if params.isBi
    printSent(2, data.input(1, 1:data.srcMaxLen-1), params.srcVocab, '  src input 1: ');
    fprintf(2, '  src mask: %s\n', num2str(data.srcMask(1, :)));
  end
  
  printSent(2, data.input(1, data.srcMaxLen:end), params.tgtVocab, '  tgt input 1: ');
  printSent(2, data.tgtOutput(1, :), params.tgtVocab, '  tgt output 1: ');
  
  fprintf(2, '  tgt mask: %s\n', num2str(data.tgtMask(1, :)));
end